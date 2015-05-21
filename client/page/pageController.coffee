@PageController = BaseController.extend(
  template : "irregularVerbs"
  data : ->
    Meteor.call 'findIrregularVerb',
    (error, result) ->
      Session.set('irregularVerbSesion', result)
      return
    return {'data':Session.get('irregularVerbSesion')}
)