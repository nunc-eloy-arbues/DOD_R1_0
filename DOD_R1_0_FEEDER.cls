public class DOD_R1_0_FEEDER {    
    static {}

    public static void FEED(){  
        //DOD_Type__c
        List<String> DOD_Type_NamesList = new List<String>{
            'Proposal', 
            'Invoice', 
            'Confirmation', 
            'Project Method Description',
            'Contract'
        };

        List<DOD_Type__c> DOD_Type_TBL = FEED_Dod_Type(DOD_Type_NamesList);
        String ProposalID = GetDOD_TypeID('Proposal');
        String InvoiceID = GetDOD_TypeID('Invoice');
        String ConfirmationID = GetDOD_TypeID('Confirmation');
        String ProMethodID = GetDOD_TypeID('Project Method Description');
        String ContractID = GetDOD_TypeID('Contract');

        //DOD Field_Assignment
        List<DOD_Field_Assignment__c> DOD_Field_Assignment_List = new List<DOD_Field_Assignment__c>{            
            new DOD_Field_Assignment__c(
                Name='Angebotsnummer', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ), 
            new DOD_Field_Assignment__c(
                Name='Anrede', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ), 
            new DOD_Field_Assignment__c(
                Name='Attachement Check', 
                DOD_Field_Data_Type__c='CHECKBOX', 
                DOD_Type__c=ProposalID
            ), 
            new DOD_Field_Assignment__c(
                Name='Attachement NUNC Document Blueprint Programmierung', 
                DOD_Field_Data_Type__c='CHECKBOX', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Attachement NUNC Hosting Services', 
                DOD_Field_Data_Type__c='CHECKBOX', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Attachement NUNC SCRUM Projektmethodenbeschreibung', 
                DOD_Field_Data_Type__c='CHECKBOX', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Attachement NUNC Software Services Lizenzvereinbarung', 
                DOD_Field_Data_Type__c='CHECKBOX', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Attachement NUNC Support Services SLA', 
                DOD_Field_Data_Type__c='CHECKBOX', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Aufgabenstellung', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Begrüßungstext', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Bemerkung NUNC Consulting Services', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Bemerkung NUNC Hosting Services', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Bemerkung NUNC IT Services', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Bemerkung NUNC Software Services', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Bemerkung NUNC Support Services', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung1', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung10', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung2', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung3', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung4', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung5', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung6', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung7', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung8', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Leistungsbeschreibung9', 
                DOD_Field_Data_Type__c='TEXT', 
                DOD_Type__c=ProposalID
            ),
            new DOD_Field_Assignment__c(
                Name='Projektmethode', 
                DOD_Field_Data_Type__c='PICKLIST', 
                DOD_Type__c=ProposalID
            ),   
            new DOD_Field_Assignment__c(
                Name='Total Summe NUNC Consulting Services', 
                DOD_Field_Data_Type__c='NUMBER', 
                DOD_Type__c=ProposalID
            ),  
            new DOD_Field_Assignment__c(
                Name='Total Summe NUNC Hosting Services', 
                DOD_Field_Data_Type__c='NUMBER', 
                DOD_Type__c=ProposalID
            ),  
            new DOD_Field_Assignment__c(
                Name='Total Summe NUNC IT Services', 
                DOD_Field_Data_Type__c='NUMBER', 
                DOD_Type__c=ProposalID
            ),  
            new DOD_Field_Assignment__c(
                Name='Total Summe NUNC Software Services', 
                DOD_Field_Data_Type__c='NUMBER', 
                DOD_Type__c=ProposalID
            ),  
            new DOD_Field_Assignment__c(
                Name='Total Summe NUNC Support Services', 
                DOD_Field_Data_Type__c='NUMBER', 
                DOD_Type__c=ProposalID
            ),  
            new DOD_Field_Assignment__c(
                Name='Zahlungsziel', 
                DOD_Field_Data_Type__c='PICKLIST', 
                DOD_Type__c=ProposalID
            )
        };
        FEED_DOD_Field_Assignment(DOD_Field_Assignment_List);

        //DOD_Blue_Print_Setup
        List<DOD_Blue_Print_Setup__c> DOD_Blue_Print_Setup_List = new List<DOD_Blue_Print_Setup__c>{
            new DOD_Blue_Print_Setup__c(
                Name='NUNC Angebotsvorlage',
                Description__c='Bereitstellung und Setup der Individual Felder für Dokument',
                DOD_Type__c=ProposalID
            ),
            new DOD_Blue_Print_Setup__c(
                Name='NUNC Invoice',
                Description__c='invoice temlate for NUNC',
                DOD_Type__c=InvoiceID
            )
        };
        FEED_DOD_Blue_Print_Setup(DOD_Blue_Print_Setup_List);

        //DOD_User_Dialog_Field
        List<DOD_User_Dialog_Field__c> DOD_User_Dialog_Field_List = new List<DOD_User_Dialog_Field__c>{
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Angebotsnummer'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Anrede'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC Document Blueprint Programmierung'),
                Fixed__c=false,
                Value__c='Auswahl Attachement zur NUNC Angebotsvorlage; der ESCRIBA Designer benötigt ein Feld'
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC Hosting Services'),
                Fixed__c=false,
                Value__c='Auswahl Attachement zur NUNC Angebotsvorlage; der ESCRIBA Designer benötigt ein Feld'
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC SCRUM Projektmethodenbeschreibung'),
                Fixed__c=false,
                Value__c='Auswahl Attachement zur NUNC Angebotsvorlage; der ESCRIBA Designer benötigt ein Feld'
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC Software Services Lizenzvereinbarung'),
                Fixed__c=false,
                Value__c='Auswahl Attachement zur NUNC Angebotsvorlage; der ESCRIBA Designer benötigt ein Feld'
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC Support Services SLA'),
                Fixed__c=false,
                Value__c='Auswahl Attachement zur NUNC Angebotsvorlage; der ESCRIBA Designer benötigt ein Feld'
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Aufgabenstellung'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Begrüßungstext'),
                Fixed__c=false,
                Value__c='Eingabe Standard Text...'
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC Consulting Services'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC Hosting Services'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC IT Services'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC Software Services'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC Support Services'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung1'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung2'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung3'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung4'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung5'),
                Fixed__c=false,
                Value__c=''
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Projektmethode'),
                Fixed__c=false,
                Value__c='Scrum'
            ),
            new DOD_User_Dialog_Field__c(
                Blue_Print_Name__c=GetDOD_Blue_Print_SetupID('NUNC Angebotsvorlage'),
                DOD_Field__c=GetDOD_Field_AssignmentID('Zahlungsziel'),
                Fixed__c=false,
                Value__c='Sofort;30;60;90;120;200'
            )
        };
        FEED_DOD_User_Dialog_Field(DOD_User_Dialog_Field_List);

        //Blue_Print_DOD_Field_Position
        List<Blue_Print_DOD_Field_Position__c> Blue_Print_DOD_Field_Position_List = new List<Blue_Print_DOD_Field_Position__c>{
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Begrüßungstext'),
                Position__c=1
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Aufgabenstellung'),
                Position__c=2
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung1'),
                Position__c=3
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung2'),
                Position__c=4
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung3'),
                Position__c=5
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung4'),
                Position__c=6
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung5'),
                Position__c=7
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung6'),
                Position__c=8
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung7'),
                Position__c=9
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung8'),
                Position__c=10
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung9'),
                Position__c=11
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Leistungsbeschreibung10'),
                Position__c=12
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC Consulting Services'),
                Position__c=13
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC IT Services'),
                Position__c=14
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC Software Services'),
                Position__c=15
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC Hosting Services'),
                Position__c=16
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Bemerkung NUNC Support Services'),
                Position__c=17
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Zahlungsziel'),
                Position__c=18
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC SCRUM Projektmethodenbeschreibung'),
                Position__c=19
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC Document Blueprint Programmierung'),
                Position__c=20
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC Support Services SLA'),
                Position__c=21
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC Hosting Services'),
                Position__c=22
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement NUNC Software Services Lizenzvereinbarung'),
                Position__c=23
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Anrede'),
                Position__c=24
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Projektmethode'),
                Position__c=25
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Angebotsnummer'),
                Position__c=26
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Total Summe NUNC Consulting Services'),
                Position__c=27
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Total Summe NUNC IT Services'),
                Position__c=28
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Total Summe NUNC Software Services'),
                Position__c=29
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Total Summe NUNC Hosting Services'),
                Position__c=30
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Total Summe NUNC Support Services'),
                Position__c=31
            ),
            new Blue_Print_DOD_Field_Position__c(
                DOD_Field__c=GetDOD_Field_AssignmentID('Attachement Check'),
                Position__c=32
            )
        };
        FEED_Blue_Print_DOD_Field_Position(Blue_Print_DOD_Field_Position_List);


    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////// FUNCTIONS //////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //FEEDING DOD_Type
    public static List<DOD_Type__c> FEED_Dod_Type(List<String> NameList)
    {
        List<DOD_Type__c> News_DOD_Type_List = new List<DOD_Type__c>();        
        for (String s : NameList)         {
            DOD_Type__c d = new DOD_Type__c(Name=s);
            News_DOD_Type_List.add(d);   
        }
        try{
            insert News_DOD_Type_List;
        }catch(DmlException e) {
            e.getMessage();
        }        
        return News_DOD_Type_List;
    }

    public static String GetDOD_TypeID (String s)
    {     
        return Id.valueOf([SELECT ID FROM DOD_Type__c WHERE NAME=:s LIMIT 1].id ); 
    }
    //End DOD_Type__c



    // FEEDING DOD_Field_Assignment
    static void FEED_DOD_Field_Assignment(List<DOD_Field_Assignment__c> d)
    {        
        try{
            insert d;
        }catch(DmlException e) {
            e.getMessage();
        }
    }
    public static String GetDOD_Field_AssignmentID (String s)
    {     
        return Id.valueOf([SELECT ID FROM DOD_Field_Assignment__c WHERE NAME=:s LIMIT 1].id); 
    }//End DOD_Field_Assignment



    //FEEDING DOD_Blue_Print_Setup
    static void FEED_DOD_Blue_Print_Setup(List<DOD_Blue_Print_Setup__c> d)
    {   
        try{
            insert d;
        }catch(DmlException e) {
            System.debug('The value is:3 ' + e.getMessage());
        }        
    }

    public static String GetDOD_Blue_Print_SetupID (String s)
    {     
        return Id.valueOf([SELECT ID FROM DOD_Blue_Print_Setup__c WHERE NAME=:s LIMIT 1].id); 
    }//End DOD_Blue_Print_Setup



    //FEEDING DOD_User_Dialog_Field
    static void FEED_DOD_User_Dialog_Field(List<DOD_User_Dialog_Field__c> d)
    {        
        try{
            insert d;
        }catch(DmlException e) {
            e.getMessage();
        }        
    }
    public static String GetDOD_DOD_User_Dialog_FieldID (String s)
    {     
        return Id.valueOf([SELECT ID FROM DOD_User_Dialog_Field__c WHERE Name=:s LIMIT 1].id); 
    }//END DOD_User_Dialog_Field



    //FEEDING Blue_Print_DOD_Field_Position
    static void FEED_Blue_Print_DOD_Field_Position(List<Blue_Print_DOD_Field_Position__c> d)
    {        
        try{
            insert d;
        }catch(DmlException e) {
            e.getMessage();
        }        
    }
    //END Blue_Print_DOD_Field_Position
}
