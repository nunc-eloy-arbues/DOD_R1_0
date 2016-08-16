@isTest(seeAllData=true)

private class DOD_R1_0_FEEDER_TEST
{
    static testMethod void TEST_DOD_FEEDER() {

        Test.startTest();

        String stest = 'TEST';

        DOD_Type__c dodDT = new DOD_Type__c(Name=stest);
        DOD_Field_Assignment__c dodFA = new DOD_Field_Assignment__c(Name=stest);
        DOD_Blue_Print_Setup__c dodBP = new DOD_Blue_Print_Setup__c(Name=stest);

        DOD_R1_0_FEEDER.FEED();

        insert dodDT;
        insert dodFA;
        insert dodBP;   

        List<DOD_Type__c> resDT = [SELECT Id, Name FROM DOD_Type__c WHERE id =:dodDT.Id];        
        System.assert(resDT.size()>0);
        System.assertEquals(stest, resDT[0].Name);        
        System.assertEquals(resDT[0].Id, DOD_R1_0_FEEDER.GetDOD_TypeID(stest));

        List<DOD_Field_Assignment__c> resFA = [SELECT Id, Name FROM DOD_Field_Assignment__c WHERE id =:dodFA.Id];        
        System.assert(resFA.size()>0);
        System.assertEquals(stest, resFA[0].Name);        
        System.assertEquals(resFA[0].Id, DOD_R1_0_FEEDER.GetDOD_Field_AssignmentID(stest));

        List<DOD_Blue_Print_Setup__c> resBP = [SELECT Id, Name FROM DOD_Blue_Print_Setup__c WHERE id =:dodBP.Id];        
        System.assert(resBP.size()>0);
        System.assertEquals(stest, resBP[0].Name);        
        System.assertEquals(resBP[0].Id, DOD_R1_0_FEEDER.GetDOD_Blue_Print_SetupID(stest));

        Test.stopTest();
    }
}
