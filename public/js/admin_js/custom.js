$(document).ready(function () {
    $("#video_type").change(function () {
        var type = $("#video_type   ").val();

        if (type == 'Upload') {
            $("#file").show(1000);
            $("#url").hide(1000);
        }else{
            $("#file").hide(1000);
            $("#url").show(1000);
        }

        


    });

    $(window).on('load', function () {
        var type = $("#video_type").val();

        if (type == 'Upload') {
            $("#file").show(1000);
            $("#url").hide(1000);
        }else{
            $("#file").hide(1000);
            $("#url").show(1000);
        }

    });

});


