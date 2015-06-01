Meteor.methods
  findIrregularVerb: () ->
    irregularVerb = IrregularVerb.find().fetch()
    return irregularVerb

  findGrammar:() ->
    grammars = Grammar.find().fetch()
    return grammars
