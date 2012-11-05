initPushState = window.initPushState = ->
  $('a[data-remote=true]').live "click", ->
    History.pushState(null, document.title, this.href);
    $('body').addClass('popped')

  $('form[data-remote=true]').live "submit", ->
    History.pushState(null, document.title, this.action);
    $('body').addClass('popped')

bindPopState = ->
  $(window).bind "popstate", ->
    if $('body').hasClass('popped')
      $.getScript(location.href)

bindPopState()
      
$ ->
  initPushState()
  
  