$ ->
  if $(".sign-in-container")[0]
    $(".sign-in-container *").addClass "fade-in-sign-in"
    $(".sign-in-container *").addClass "fade-in-sign-in"
    $(".form-control").removeClass "fade-in-sign-in"
    $(".thumbnail").removeClass "fade-in-sign-in"
    $(".btn-primary").removeClass "fade-in-sign-in"
    $(".fade-in-sign-in").css "display", "none"
    $(".fade-in-sign-in").velocity "transition.slideUpIn",
      drag: true
      stagger: 25
