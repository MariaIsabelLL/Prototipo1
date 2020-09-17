package principal.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class HelloWorldController {
	
	   public static String usuario = "Invitado";
	   ///

	   @RequestMapping(value="/Print/{arg}", method = RequestMethod.GET)
	   public String welcomeName(@PathVariable String arg, ModelMap model) {
	      model.addAttribute("msgArgument", "Maven Java Web Application Project, input variable: " + arg);	 
	      return "/jsp/index.jsp";
	   }
	   
	   @RequestMapping(value="/Juego2", method = RequestMethod.GET)
	   public String juego2(ModelMap model) {
		      model.addAttribute("msgArgument", "Maven Java Web Application Project: Success!");		 
		  return "pruebaJuego2.jsp";
	   }
	   
	   @RequestMapping(value="/Aprender", method = RequestMethod.GET)
	   public String aprender(ModelMap model) {
		      model.addAttribute("msgArgument", usuario);		 
		  return "indexAprender.jsp";
	   }
	   	   
	   @RequestMapping(value="/Inicio", method = RequestMethod.POST)
	   //public String welcomeName3(@PathVariable String arg, @PathVariable String arg2, ModelMap model) {
	   public String welcomeName3(@RequestParam(name = "login", required = true) String login, ModelMap model) {
		  //model.addAttribute("msgArgument", "Maven Java Web Application Project, input variable: " + arg);
	      model.addAttribute("msgArgument", login);
	      usuario = login;
	      System.out.print(login);
	      //model.addAttribute("msgArgument2", password);		 	 
	      return "indexFinal.jsp";
	   }
}
