@GrammarController = BaseController.extend(
  template : "grammar"
  data : ->
    slug = @params.lesson
    if slug is undefined
      slug = 'cau_truc_chung_cua_cau'
    Session.set('currentGrammar',slug)
    Meteor.call 'findGrammarBySlug', slug,
    (error, result) ->
      Session.set('grammarLesson', result)
    return {
    contentLesson : Session.get('grammarLesson')
    }
)

Template.grammar.helpers
  listGrammars : ()->
    Meteor.call 'findAllGrammars',
    (error, result) ->
      Session.set('listGrammars', result)
    return Session.get('listGrammars')
  checkActive :(slug)->
    if slug is Session.get('currentGrammar')
      return 'text-danger'
    return
