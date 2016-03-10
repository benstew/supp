$(document).ready(function(){
  $('.new_category_click').on('click', function(event){

    event.preventDefault();
    alert('noooooo');
    console.log('Yerrrrrrp');

    $.ajax({
      type: "POST",
      url: "form.attr('action')",

      success: function(data){
        console.log("Yo")
      }

    })

  })
})
