package principal.com.chatbot;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Properties;
import java.util.Scanner;

import edu.stanford.nlp.ling.CoreAnnotations;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.CoreDocument;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.util.CoreMap;
import opennlp.tools.doccat.BagOfWordsFeatureGenerator;
import opennlp.tools.doccat.DoccatFactory;
import opennlp.tools.doccat.DoccatModel;
import opennlp.tools.doccat.DocumentCategorizerME;
import opennlp.tools.doccat.DocumentSample;
import opennlp.tools.doccat.DocumentSampleStream;
import opennlp.tools.doccat.FeatureGenerator;
import opennlp.tools.doccat.NGramFeatureGenerator;
import opennlp.tools.util.InputStreamFactory;
import opennlp.tools.util.MarkableFileInputStreamFactory;
import opennlp.tools.util.ObjectStream;
import opennlp.tools.util.PlainTextByLineStream;
import opennlp.tools.util.TrainingParameters;
import opennlp.tools.util.model.ModelUtil;
import edu.stanford.nlp.simple.Sentence; 

public class StandfordCoreNLPChatBot {
	
	private static Properties p;
	
	public StandfordCoreNLPChatBot() {
			
	}
	
	public static void inicio() {
		// TODO Auto-generated constructor stub
		p = new Properties();
		try {
			/*Código para ejecutar el properties desde el jar*/
			InputStream propertiesStream = ClassLoader.getSystemResourceAsStream("principal/com/chatbot/questionAnswerSpanish.txt");
			p.load(propertiesStream);
			propertiesStream.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	public static void main(String[] args) throws FileNotFoundException, IOException, InterruptedException {
				
		inicio();
		
		// Train categorizer model to the training data we created.
		DoccatModel model = trainCategorizerModel();

		// Take chat inputs from console (user) in a loop.
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		
		while (true) {

			// Get chat input from user.
			System.out.println("##### You:");
			String userInput = scanner.nextLine();

			// Break users chat input into sentences using sentence detection.
			String[] sentences = breakSentences(userInput);

			String answer = "";
			String[] lemmas = null;
			boolean conversationComplete = false;

			// Loop through sentences.
			for (String sentence : sentences) {
				
				Sentence sentenceS = new Sentence(sentence);
				lemmas = sentenceS.lemmas().toArray(new String[0]);
								
				// Determine BEST category using lemmatized tokens used a mode that we trained
				// at start.
				String category = detectCategory(model, lemmas);
				
				// Get predefined answer from given category & add to answer.
				answer = answer + " " + p.getProperty(category);
				
				// If category conversation-complete, we will end chat conversation.
				if ("conversation-complete".equals(category)) {
					conversationComplete = true;
				}
			}

			// Print answer back to user. If conversation is marked as complete, then end
			// loop & program.
			System.out.println("##### Chat Bot: " + answer);
			if (conversationComplete) {
				break;
			}

		}

	}

	/**
	 * Train categorizer model as per the category sample training data we created.
	 * 
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	private static DoccatModel trainCategorizerModel() throws FileNotFoundException, IOException {
		// faq-categorizer.txt is a custom training data with categories as per our chat
		// requirements.
		
		/*Entrenamiento de clasificación de documentos*/
		InputStreamFactory inputStreamFactory = new MarkableFileInputStreamFactory(new File("faq-categorizerSpanish2.txt"));
		
		ObjectStream<String> lineStream = new PlainTextByLineStream(inputStreamFactory, StandardCharsets.UTF_8);
		ObjectStream<DocumentSample> sampleStream = new DocumentSampleStream(lineStream);
		
		/*Bolsa de Palabras
		 * Esto significa que la secuencia de los términos no se tiene en cuenta. 
		 * Si cualquier término ocurre con alta frecuencia en algún grupo, el clasificador sería inclinado a usar ese grupo.*/
		//int minNgramSize = 2;
		//int maxNgramSize = 3;
		DoccatFactory factory = new DoccatFactory(
						new FeatureGenerator[] { 
								new BagOfWordsFeatureGenerator() 
								//,new NGramFeatureGenerator(minNgramSize, maxNgramSize)
						});

		TrainingParameters params = ModelUtil.createDefaultTrainingParameters();
		params.put(TrainingParameters.CUTOFF_PARAM, 0);
		//params.put(TrainingParameters.ITERATIONS_PARAM, 100);

		// Train a model with classifications from above file.VALIDAR SI FUNCIONA PARA ESPAÑOL
		DoccatModel model = null;
		model = DocumentCategorizerME.train("es", sampleStream, params, factory);			
		
		return model;
	}

	/**
	 * Detect category using given token. Use categorizer feature of Apache OpenNLP.
	 * 
	 * @param model
	 * @param finalTokens
	 * @return
	 * @throws IOException
	 */
	private static String detectCategory(DoccatModel model, String[] finalTokens) throws IOException {

		// Initialize document categorizer tool
		DocumentCategorizerME myCategorizer = new DocumentCategorizerME(model);

		// Get best possible category.
		double[] probabilitiesOfOutcomes = myCategorizer.categorize(finalTokens);
		String category = myCategorizer.getBestCategory(probabilitiesOfOutcomes);
		System.out.println("Category: " + category);

		return category;

	}

	/**
	 * Break data into sentences using sentence detection feature of Apache OpenNLP.
	 * 
	 * @param data
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	private static String[] breakSentences(String data) throws FileNotFoundException, IOException {
		// Better to read file once at start of program & store model in instance
		// variable. but keeping here for simplicity in understanding.
		String[] sentences = null;
		int i = 0;
		
		StanfordCoreNLP pipeline = new StanfordCoreNLP("spanish");
		CoreDocument doc = pipeline.processToCoreDocument(data);
		System.out.println("##### Prueba:"+doc);
			
		Annotation annotation = pipeline.process(data); 
		List<CoreMap> sentences2 = annotation.get(CoreAnnotations.SentencesAnnotation.class); 
		sentences = new String[sentences2.size()];
		    
		for (CoreMap sentence : sentences2) { 
		   	sentences[i] = sentence.toString();
		    i++;
		}
		return sentences;		
	}
	
}
