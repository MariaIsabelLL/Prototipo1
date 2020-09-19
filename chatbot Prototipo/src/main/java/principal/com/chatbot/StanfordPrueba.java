package principal.com.chatbot;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import edu.stanford.nlp.ling.CoreAnnotations;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.CoreDocument;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.sentiment.SentimentCoreAnnotations;
import edu.stanford.nlp.util.CoreMap;

public class StanfordPrueba {

	public StanfordPrueba() {
		// TODO Auto-generated constructor stub
	}	
	
	public static void main(String[] args) throws FileNotFoundException, IOException, InterruptedException {

		String text = "La Universidad de Stanford se encuentra en Palo Alto. Este lugar es muy divertido. Le gusta todo.";
		StanfordCoreNLP pipeline = new StanfordCoreNLP("spanish");
		CoreDocument doc = pipeline.processToCoreDocument(text);
		System.out.println("##### Prueba:"+doc);
		
		Annotation annotation = pipeline.process(text); 
	    List<CoreMap> sentences = annotation.get(CoreAnnotations.SentencesAnnotation.class); 
	    for (CoreMap sentence : sentences) { 
	      String sentiment = sentence.get(SentimentCoreAnnotations.SentimentClass.class); 
	      System.out.println(sentiment + "\t" + sentence); 
	    }
	}
}
