$(function () {
    var isSelected = $("[id*=rbShape] input:checked").val();

    if (isSelected == undefined)
        $(".btn-default.btn-next").addClass("disabled hidden");
});

function doValidation(wiz, direction, event) {
    return false;
}

function customFunctionality(currentStep) {

    var i = $("[id*=rbShape] input:checked").val();

    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "/ws/service.asmx/getMeasurementSize",
        data: JSON.stringify({ 'rbShape': i }),
        dataType: "json",
        success: showMeasurementSize,
        error: showError
    });

    function showMeasurementSize(data) {

        $("#divTopMeasurement").hide();
        $("#divBottomMeasurement").hide();
        $("#divLeftMeasurement").hide();
        $("#divRightMeasurement").hide();

        var result = data.d;

        switch (result) {
            case 1:
            case 3:
                $("#divTopMeasurement").show();
                $("#divLeftMeasurement").show();
                $("#divRightMeasurement").show();
                break;
            case 2:
            case 4:
                $("#divTopMeasurement").show();
                $("#divBottomMeasurement").show();
                break;
            case 5:
                $("#divTopMeasurement").show();
                $("#divLeftMeasurement").show();
                break;
            case 6:
                $("#divTopMeasurement").show();
                $("#divRightMeasurement").show();
                break;
        }
    }

    function showError(xmlRequest) {
        console.log(xmlRequest.status + ' \n\r ' + xmlRequest.statusText + '\n\r' + xmlRequest.responseText);
    }
}