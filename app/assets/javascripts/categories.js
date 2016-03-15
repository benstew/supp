$(document).ready(function(){
  $('.new_category_click').on('click', function(event){
    event.preventDefault();
    console.log('Yerrrrrrp');
    // $('.new_category_click').toggle();
    // $('.back_category_click').toggle();
    $('.new_category_form').toggle();

    // $('.back_category_click').on('click', function(event){
    //   $('.new_category_click').toggle();
    //   $('.back_category_click').toggle();
    //   $('.new_category_form').toggle();
    // })
    // $('.new_category').submit(function(event){
    //   event.preventDefault();
    //   var name = $('#category_name').val();
    //   var description = $('#category_description').val();
    //   var url = $(this).attr('action')


      // $.ajax({
      //   type: 'put'
      //   url: url
      //   data: { category: { name: name, description: description}}
      //   datatype: 'json'
      //   success: function (data) {
      //     alert('All good')
      //   }
      // })

    // })
  });

  $('.edit-category-description').on('click', function(event){

    event.preventDefault();
    console.log("ya");
    $('.category-description').toggle();
    $('.edit-category-toggle').toggle();
  })
})
