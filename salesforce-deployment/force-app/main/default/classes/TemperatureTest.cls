@isTest
public class TemperatureTest {
    @isTest
    private static void warmTempTest(){
        Decimal res=Temperature.FtoC(70);
        System.assertEquals(20.11,res);
    }
    
    

}