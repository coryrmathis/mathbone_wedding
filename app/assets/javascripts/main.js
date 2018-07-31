$(window).on('load',function(){
    $('#welcomeModal').modal('show');
});

$(document).ready(function(){
  $("body").on("click", "#story-btn-1", function(){
    $("#welcomeModal").modal('toggle')
    $("#infoModal").modal('toggle')
  });

  $("body").on("click", "#story-btn-2", function(){
    $("#infoModal").modal('toggle')
    $("#accomodationsModal").modal('toggle')
  });

  $("body").on("click", "#story-btn-3", function(){
    $("#accomodationsModal").modal('toggle')
    $("#rsvpModal").modal('toggle')
  });

  $("body").on("submit", "#rsvp-form", function(e){
    e.preventDefault()

    var data = $(this).serialize()
    
    $.ajax({
      method: "POST",
      url: "/rsvp",
      data: data
    })
    // .done(function(response){

    //   $(".navbar").after(response)
    // })
    $("#rsvpModal").modal('toggle')
    $("#thanksModal").modal('toggle')
  })


});

