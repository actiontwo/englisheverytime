Meteor.startup ->
  # code to run on server at startup

  return
Meteor.methods
  findIrregularVerb: () ->

    irregularVerb = IrregularVerb.find({})
    console.log irregularVerb
    return irregularVerb
# ---
# generated by js2coffee 2.0.3