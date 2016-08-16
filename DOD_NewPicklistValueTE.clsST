@isTest
public class DOD_NewPicklistValueTEST
{
    @isTest Static void testUpdateValue() {
        String type = 'PICKLIST';
        String value = 'TestValue1';
        
        DOD_Field_Assignment__c dfa = new DOD_Field_Assignment__c(DOD_Field_Data_Type__c = type);
        
        DOD_User_Dialog_Field__c dud = new DOD_User_Dialog_Field__c(DOD_Field__c = dfa.id, Value__c = value);
        

        insert dfa;
        insert dud;
       
        dud.DOD_Field__c = dfa.id;
        dud.Value__c = 'TestValue2';

        update dud;
     
        
        System.assertEquals(dud.Value__c, 'TestValue2');
    }
}
