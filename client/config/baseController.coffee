@BaseController = RouteController.extend(
  yieldTemplates:
    header:
      to: "header"
    footer:
      to: "footer"
  action: ->
    @render()
)