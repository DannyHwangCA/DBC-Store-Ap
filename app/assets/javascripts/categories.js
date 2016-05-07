// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$( document ).ready(function() {

  $("#products-list").on("click", ".add-2-kart", function(event) {
    event.preventDefault();
    var productId = $(this).attr('id')
    $.ajax({
      type: "POST",
      url: "/carts",
      data: {product_id: productId},
    })
    .done(function(res) {
      $('.shoppingcartshow').empty();
      $(res).appendTo('.shoppingcartshow');
    })
    .fail(function() {
      console.log("error");
    });

    $.get("/carts", function(res) {
    console.log(res)
    $('#kart-button > a').html('Shopping Kart (' + res + ')' );
    });
  })

  $('.shoppingcartshow').on('click', '#item-del-btn', function(event) {
    event.preventDefault();
    var productName = $(this).parent().attr('class')

    $.ajax({
      type: "DELETE",
      url: "/carts/~",
      data: {product_name: productName},
    })
    .done(function(res) {
      $('.shoppingcartshow').empty();
      $(res).appendTo('.shoppingcartshow');
      var prod = productName.replace(/\s/, '');
      // var oldStock = $(".product-" + prod).html();
      // $(".product-" + prod).html(parseInt(oldStock) +1);
    })
    .fail(function() {
      console.log("error");
    });

    $.get("/carts", function(res) {
    console.log(res)
    $('#kart-button > a').html('Shopping Kart (' + res + ')' );
    });
  })

});
