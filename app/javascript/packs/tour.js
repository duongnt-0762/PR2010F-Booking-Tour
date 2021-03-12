$(document).ready(function(){
  function spiner(add,sub,idinput) {
    $(add).click(function add() {
      var $rooms = $(idinput);
      var a = $rooms.val();
      a++;
      $(sub).prop("disabled", !a);
      $rooms.val(a);
    });
    $(sub).prop("disabled", !$(idinput).val());
    $(sub).click(function subst() {
      var $rooms = $(idinput);
      var b = $rooms.val();
      if (b >= 2) {
        b--;
        $rooms.val(b);
      }
      else {
        $(sub).prop("disabled", true);
      }
    });
  };
  spiner('#adds','#subs','#noOfRoom')
  spiner('#adds2','#subs2','#noOfRoom2')
  spiner('#adds3','#subs3','#noOfRoom3')
  spiner('#adds4','#subs4','#noOfRoom4')
});
