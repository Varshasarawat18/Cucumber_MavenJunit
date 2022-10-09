package StepDefination;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
		
		//to generate step at console we use monochrome=true and add pretty in plugin
		
		monochrome=true,		
		plugin = {"pretty","html:target/html-cucumber","json:target/cucumber.json"},    // to check reports
		features = "src/test/java/Feature",
		glue = "StepDefination",
		tags = {"@sanity"}	   // from here both feature file calculator and login and run all sanity cases
		//tags= {"@1234_1"}  //this in case we want to use specific tag but not common to check our code 
		//tags = {"@sanity or @regression"}   // for multiple tag to be run
		
		)

public class TestRunner {
	

}
