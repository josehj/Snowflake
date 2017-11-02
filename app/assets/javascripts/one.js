
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
});

// $("#saveChanges").click(function() {
//   var configuration ={
//     'radius'        : JSON.stringify(radius),
//     'number'        : JSON.stringify(number),
//     'ids'           : JSON.stringify(ids),
//     'configs'       : JSON.stringify(configs),
//     'ids_configs' : JSON.stringify(ids_configs),
//   };
//   $.ajax({
//     type: "GET",
//     dataType: 'json',
//     contentType: "application/json; charset=utf-8",
//     url: "/dashboard/data",
//     data: configuration,
//     success: function (data) {
//     }
//   });
// });
