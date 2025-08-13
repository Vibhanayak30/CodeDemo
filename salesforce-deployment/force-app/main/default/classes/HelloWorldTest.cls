@isTest
public class HelloWorldTest {
    @isTest static void testSayHello() {
		String result = HelloWorld.sayHello('Salesforce');
    	System.assertEquals('Hello, Salesforce!' , result);
}

}