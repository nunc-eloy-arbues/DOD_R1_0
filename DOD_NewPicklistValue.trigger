trigger DOD_NewPicklistValue on DOD_User_Dialog_Field__c (after update)
{
    for (DOD_User_Dialog_Field__c DODUser : Trigger.new)
    {
        //To know the Field Data Type
        DOD_Field_Assignment__c DODFieldA = [SELECT DOD_Field_Data_Type__c, Name  
                                             FROM DOD_Field_Assignment__c 
                                             WHERE id=:DODUser.DOD_Field__c];

        //We want to work only on the 'PICKLIST' Data Type
        if (DODFieldA.DOD_Field_Data_Type__c == 'Picklist')
        {
            //If the New value not is equal to old one, send an email
            if (!DODUser.Value__c.equals(Trigger.oldMap.get(DODUser.id).Value__c))
            {
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                String[] toAddresses = new String[] {'eloy.arbues@nunc-solutions.de', 'torsten.mueller@nunc-solutions.de'};

                //Building an Email...
                mail.setToAddresses(toAddresses);
                mail.setSenderDisplayName('DOD Engine Controller');
                mail.setSubject('New PICKLIST value on '+DODUser.getSObjectType());
                mail.setHtmlBody(
                    '<b>OBJECT: </b>' + DODUser.getSObjectType() + '<br>' +
                    '<b>DOD_Field__c:</b> '+DODFieldA.Name+'<br>'+
                    '<b>ID:</b> '+DODUser.id+'<br>' +
                    '-------------------------------<br>' +
                    '<b>VALUE BEFORE:</b> ' + Trigger.oldMap.get(DODUser.id).Value__c + '<br>' +
                    '<b>VALUE NOW</b>: ' + DODUser.Value__c + '<br>' + 
                    '-------------------------------<br>' +
                    '<b>AUTOR UPDATE:</b> '+ UserInfo.getName() + '<br>' +
                    '<b>DATE TIME </b>: ' + System.Now().format('MM/dd/yy HH:mm a', 'GMT+2'));

                Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
                PostChatter(DODUser, DODFieldA, UserInfo.getName());
            }
        }
    }

    static void PostChatter(DOD_User_Dialog_Field__c Obj, DOD_Field_Assignment__c ObjA, String Autor)
    {
        //Adding a Text post
        FeedItem post = new FeedItem(); 

        // iteration over last record and prepare message body
        post.ParentId = Obj.id; 
        post.Body = Autor+ ' adds a new value in field "'+ObjA.Name+'".\n '+
            '- VALUE BEFORE: ' + Trigger.oldMap.get(Obj.id).Value__c + '\n' +
            '- VALUE NOW: ' + Obj.Value__c + '\n' +
            'Developers are working... ';

        // insert post
        insert post;
    }        
}
