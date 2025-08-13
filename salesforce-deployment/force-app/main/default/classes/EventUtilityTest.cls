@isTest
public class EventUtilityTest {
    @isTest
    Private static void testEventStatusLength(){
        String res = EventUtility.eventPriority('IND');
        System.assertEquals(null,res);
    }
    @isTest
    Private static void testHighPri(){
        String res = EventUtility.eventPriority('CA');
        System.assertEquals('High',res);
        
    }
    @isTest
    Private static void testMediumPri(){
        String res = EventUtility.eventPriority('NA');
        System.assertEquals('Medium',res);
    }
        

}