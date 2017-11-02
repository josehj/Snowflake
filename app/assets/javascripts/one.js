
$(function(){
    function countWords(){
        var input = $("#new_sentence").val().split(' ').filter(function(v){return v!==''}).length;
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

    $("#saveChanges").click(function() {
      var id_ins = document.URL.split("/");
      alert(id_ins[4]);
      sentence = $("#new_sentence").val();
      var configuration ={
        'sentence'        : JSON.stringify(sentence),
        'story_id'        : JSON.stringify(id_ins[4]),
      };
      alert(id_ins[4]);
      $.ajax({
        type: "GET",
        dataType: 'json',
        contentType: "application/json; charset=utf-8",
        url: "/story/"+id_ins[4]+"/step/one",
        data: configuration,
        success: function (data) {
          if (data.hasOwnProperty('error')){
            alert(data["error"]);
            return;
          }
          if (data["status"]) {
            $(".notice").text("ok!");
          }else {
            $(".notice").text("error!");
          }
        }
      });
    });

});
