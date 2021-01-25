$(document).ready(function(){
  var date1 = $("#day_start").val();
  var date2 = $("#request_day_end").val();

  if (date1 != null ){
    $("#request_day_end").on("change",function(){
       $.ajax({
        url : '/tours/new',
        type : 'GET',
        dataType: 'json',
        data: {
          authenticity_token: $('[name="csrf-token"]')[0].content,
          day_start:$("#day_start").val(),
          day_end: $("#request_day_end").val(),
          tour_price: $('#request_price').val()
        },
        success: function(data){
          $("#request_tour_price").val(data +   "USD");
        },
        error: function(data){
          alert("Ngày Checkout phải sau ngày Checkin");
        }
      });
    });
  }
  else if (date2 != null ){
    $("#day_start").on("change",function(){
      $.ajax({
        url : '/tours/new',
        type : 'GET',
        dataType: 'json',
        data: {
          authenticity_token: $('[name="csrf-token"]')[0].content,
          day_start:$("#day_start").val(),
          day_end: $("#request_day_end").val(),
          tour_price: $('#request_price').val()
        },
        success: function(data){
          $("#request_tour_price").val(data +   "USD");
         },
         error: function(data){
          alert("Ngày Checkout phải sau ngày Checkin");
         }
      });
    });
  }
});
