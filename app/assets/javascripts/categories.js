$(document).ready(function(){
  $('.new_category_click').on('click', function(event){

    event.preventDefault();
    console.log('Yerrrrrrp');

  });

  $('.edit-category-description').on('click', function(event){

    event.preventDefault();
    console.log("ya");
    $('.category-description').toggle();
    $('.edit-category-toggle').toggle();
  })
})
