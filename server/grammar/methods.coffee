Meteor.methods
  findGrammarBySlug:(slug) ->
    grammar = Grammar.findOne({slug:slug})
    return grammar
  findAllGrammars:() ->
    grammars = Grammar.find().fetch()
    return grammars
