Router.configure
  layoutTemplate : "layout"
  notFoundTemplate : "notFound"
  yieldTemplates :
    header : {to : "header"},
    footer : {to : "footer"}
  loadingTemplate : "loading"
Router.map ->
  @route 'irregular',
    path : '/irregular'
    controller : 'PageController'
  @route 'home',
    path : '/'
    controller : 'HomeController'
  @route 'grammar',
    path : '/grammar/:lesson?'
    controller : 'GrammarController'
