package StepDefination;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class HooksClass {
	
	
	public static WebDriver driver;
	
	@Before
	public void setup()
	{
		
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		driver=new ChromeDriver();
	}
	
	@After
	public void tearDown()
	{
		driver.close();
	}

}
