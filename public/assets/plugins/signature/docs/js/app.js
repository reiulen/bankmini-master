const canvas = document.querySelector("canvas");
const signaturePad = new SignaturePad(canvas);

// Clears the canvas
$('.signatureclear').click(function(){
    signaturePad.clear();
});

if ($(window).width() < 450) {
  $('#signature canvas').attr('width', '350');
}

$('.btn-submit').click(function(e){
    var data = signaturePad.toDataURL('image/png');
    $('#signature64').append(data);
});

$("#save").click(function () {
    $("#signature").append(
        '<textarea id="signature64" name="signed" style="display:none"></textarea>'
    );
});

