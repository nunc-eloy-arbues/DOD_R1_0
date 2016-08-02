$urlP = 'http://www.escriba.de/xml/dod_escriba_result_right.xml';
$urlF = 'http://www.escriba.de/xml/dod_escriba_result_wrong.xml';
$escUrl = 'http://clarkkent:escriba@192.168.200.172:9080/esi-webgen/api/proposal/compose-sync?d.di_proposal.objectId=a1a3E0000004VneQAE&j.pdfParentId=0063E000001tAINQA2&j.fileName=0063E000001tAINQA2.pdf&c.instanceId=00D3E0000000OR8UAM';

function mainDODR($OpportunityID, $sfSession) {
    $__SFsessionID = $sfSession;
    /*Title SCREENS. It's will used to know what screen we are*/
    var $Screen1 = "General Document Data"
    var $Screen2 = "Personal Data";
    var $Screen3 = "SALUTATION AND PROJECT DESCRIPTION";
    var $Screen4 = "SPECIFICATION OF SERVICES";
    var $Screen5 = "PRODUCTS OFFERED";
    var $Screen6 = "NUNC INDIVIDUAL FIELDS";
    var $LastScreen = "SUMMARY";

    /* We use the DTI_ fields only to get information from Workflow. We don't want to show it*/
    $("[id*=DTI_]").css("display", "none");

    /* We hide the Main DIV while we apply CSS and jQuery styles. */
    $(".pbSubsection").css("opacity", "100");

    /* We add the class TR_FTB_Item to be able to customize it */
    $("[id*=FTB_Item]").parent().parent("tr").addClass("TR_FTB_Item");

    /* We add the class TR_FTBL_2 to be able to customize it */
    $("[id*=FTBL_2]").parent().parent("tr").addClass("TR_FTBL_2");
    $("[id*=FTBL_1]").parent().parent("tr").addClass("TR_FTBL_1");

    /* TD inside the Buttons Div */
    $(".pbBottomButtons tbody td:nth-of-type(1)").remove(); //Row to put Title on Buttons Div
    $("div.pbBody table")[0].remove(); //Table to put a buttons bar on the TOP.

    /* WAITING DIV */
    $("div.waitingSearchDiv").removeAttr("style");
    $("div.waitingHolder").removeAttr("style");
    $("div.waitingSearchDiv").css("display", "none"); //SF change this parameter to show loading gif

    //Add this HTML code to the "step line"
    $("div.pbBody").append("<div id='statsBox'><ul><li class='step1'>1</li><li class='step2'>2</li><li class='step3'>3</li><li class='step4'>4</li><li class='step5'>5</li><li class='step6'>6</li><li class='step7'>7</li></ul></div>");

    //Depends of the title we are on a screen or other.
    switch ($("[id*=DT1_TIT]").text().toLowerCase()) {
        case $Screen1.toLowerCase():
            $("li.step1").addClass("stepCompleted");
            break;
        case $Screen2.toLowerCase():
            $("li.step1").addClass("stepCompleted");
            $("li.step2").addClass("stepCompleted");
            break;
        case $Screen3.toLowerCase():
            $("li.step1").addClass("stepCompleted");
            $("li.step2").addClass("stepCompleted");
            $("li.step3").addClass("stepCompleted");
            break;
        case $Screen4.toLowerCase():
            $("li.step1").addClass("stepCompleted");
            $("li.step2").addClass("stepCompleted");
            $("li.step3").addClass("stepCompleted");
            $("li.step4").addClass("stepCompleted");
            break;
        case $Screen5.toLowerCase():
            $("li.step1").addClass("stepCompleted");
            $("li.step2").addClass("stepCompleted");
            $("li.step3").addClass("stepCompleted");
            $("li.step4").addClass("stepCompleted");
            $("li.step5").addClass("stepCompleted");
            break;
        case $Screen6.toLowerCase():
            $("li.step1").addClass("stepCompleted");
            $("li.step2").addClass("stepCompleted");
            $("li.step3").addClass("stepCompleted");
            $("li.step4").addClass("stepCompleted");
            $("li.step5").addClass("stepCompleted");
            $("li.step6").addClass("stepCompleted");
            break;
        case $LastScreen.toLowerCase():
            $("li.step1").addClass("stepCompleted");
            $("li.step2").addClass("stepCompleted");
            $("li.step3").addClass("stepCompleted");
            $("li.step4").addClass("stepCompleted");
            $("li.step5").addClass("stepCompleted");
            $("li.step6").addClass("stepCompleted");
            $("li.step7").addClass("stepCompleted");
            break;
        default:
    } // Fin Step Line



    /*If we are on the last Screen we add the "print" and "preview" buttons*/
    if ($("[id*=DT1_TIT]").text() == $LastScreen) {
        //It build the ESCRIBA call
        var $BPMDID = $("[id*=DTI_BPMDID]").text();
        var $ESCserver = "http://clarkkent:escriba@192.168.200.172:9080/esi-webgen/api/proposal/compose-sync?"
        var $ESCobj = "d.di_proposal.objectId=" + $BPMDID + "&";
        var $ESCparent = "j.pdfParentId=" + $OpportunityID + "&";
        var $ESCfname = "j.fileName=" + $OpportunityID + ".pdf&";
        var $ESCinstance = "c.instanceId=00D3E0000000OR8UAM";
        var $ESCcall = $ESCserver + $ESCobj + $ESCparent + $ESCfname + $ESCinstance;

        /*Print and Preview buttons*/

        $('<input id="print" type="button" name="btnPrint" value="Generate Document" style="visibility: visible;" class="PrintBtn" onClick="EscribaCall(\'' + $BPMDID + '\',\'' + $OpportunityID + '\');">').appendTo($("[class*=Btn]").parent("td"));
        $('<input id="print" type="button" name="btnTEST" value="TEST" style="visibility: visible;" class="TestBtn" onClick="EscribaCallT(\'' + $BPMDID + '\',\'' + $OpportunityID + '\');">').appendTo($("[class*=Btn]").parent("td"));

        //$('<input id="preview" type="button" name="btnPreview" value="Preview" style="visibility: visible;" class="PreviewBtn" onClick="window.open(\''+$ESCcall+'\',\'NUNC_Windows\',\'width=600,height=300\')">').appendTo( $("[class*=Btn]").parent("td"));

        /*Rename standar button*/
        $('.FlowFinishBtn').val("Close Window");
    } else {
        $('<input id="cancel" type="button" name="btnCancel" value="Cancel" style="visibility: visible;" class="CancelBtn" onClick="closeWindow()">').appendTo($("[class*=Btn]").parent("td"));
    }
}

function EscribaCall(BpmdId, $OppId) {
    var DocumentName;

    try {
        //sforce.connection.sessionId = "{!GETSESSIONID()}"; 
        DocumentName = getOffertName(BpmdId);

        window.open("http://clarkkent:escriba@192.168.200.172:9080/esi-webgen/api/proposal/compose-sync?d.di_proposal.objectId=" + BpmdId + "&j.pdfParentId=" + $OppId + "&j.fileName=" + DocumentName + ".pdf&c.instanceId=00D3E0000000OR8UAM", '_parent', 'width=600, height=300');

    } catch (e) {
        alert('ERROR on EscribaCall(). ' +
            'Blue Print Meta Data: ' + BpmdId +
            '\n ERROR: ' + e);
    }
}

function getOffertName(bpdata) {
    try {
        sforce.connection.sessionId = $__SFsessionID;
        var res = sforce.connection.query('SELECT Id, Value__c, Name, Blue_Print_Meta_Data_ID__c, Position__c FROM Blue_Print_Meta_Data_Value__c WHERE Blue_Print_Meta_Data_ID__c = \'' + bpdata + '\' AND Position__c = 26 LIMIT 1');
        return res.getArray("records")[0].Value__c;
    } catch (e) {
        alert('Error in "getOffertName()" getting Offert Name. ' +
            '\n Blue Print Meta Data ID: ' + bpdata +
            'ERROR: ' + e);
        return "errorname";
    }
}

function EscribaCallT($BpmdId, $OppId) {
    try {
        sforce.connection.sessionId = $__SFsessionID;
        var $DocumentName = getOffertName($BpmdId);

        sforce.connection.remoteFunction({
            url: $urlP,
            requestHeaders: {
                "Content-Type": "text/xml"
            },
            dataType: "xml",
            method: "GET",
            crossDomain: "true",
            onSuccess: function($response) {
                CallSuccess($.parseXML($response), $OppId);
            },
            onFailure: function($response) {
                alert("FAIL: " + $response.textContent);
            }
        });
    } catch (e) {
        alert(e);
    }
}

function CallSuccess($data, $OppId) {
    var $ESCsuccess = 'OUTPUT';
    var $tagStatus = 'job-status';

    if ($($data).find($tagStatus).text() == $ESCsuccess) {
        try {
            var ResQ = sforce.connection.query("SELECT Id FROM Attachment WHERE Parent.Id='" + $OppId + "' ORDER BY CreatedDate DESC NULLS LAST LIMIT 1");
            var DocId = ResQ.getArray("records")[0].Id;

            window.open("https://" + window.location.hostname + "/servlet/servlet.FileDownload?file=" + DocId, '_parent', '');
        } catch (e) {
            alert('ERROR on CallSuccess() doing a Salesforce query. ' +
                'ERROR: ' + e + '. \nResponse query: ' + ResQ);
        }
    } else {
        alert('ERROR on CallSuccess() - Status unexpected: ' + $data);
    }
}

function closeWindow() {
    window.open('', '_parent', '');
    window.close();
}