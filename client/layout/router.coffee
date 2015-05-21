Router.configure
  layoutTemplate : "layout"
#  notFoundTemplate : "notFound"
#  loadingTemplate : "loading"
Router.map ->
  @route 'irregular',
    path : '/irregular'
    controller:'PageController'
