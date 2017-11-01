$(document).ready(function(){
    function countWords(){
        var input = $("#new_sentence").val().split(' ').length;
        $("#counter").text(input);
    }
    countWords();
    //or this
    $('#new_sentence').keyup(function(){
        countWords();
    });
    //and this for good measure
    $('#new_sentence').change(function(){
        countWords();
    });
  
});
