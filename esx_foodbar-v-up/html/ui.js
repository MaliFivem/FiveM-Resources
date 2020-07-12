$(document).ready(function() {
    window.addEventListener('message', function(event) {
        var data = event.data;
        $(".container").css("display", data.show? "none":"block"); 
	function ShowCinema() {
        $("html").css("display", "block");
      }
      function CloseCinema() {
        $("html").css("display", "none");
      }
      window.addEventListener('message', function(event){
        var item = event.data;
        if(item.openCinema == true) {
              ShowCinema();
          }
        if(item.openCinema == false) {
              CloseCinema();
        }

        if (event.data.action == "updateStatus") {
            updateStatus(event.data.st);
        }
    })
})
});
function updateStatus(status){
    $('#boxThirst').css('width', status[1].percent+'%')
    $('#boxHunger').css('width', status[0].percent+'%')
}
// Garfieldouille#0001