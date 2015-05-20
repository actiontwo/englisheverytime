# counter starts at 0

Meteor.subscribe("irregularVerb")

Template.irregular_verb.onRendered ()->
  Meteor.call('findIrregularVerb', (error, result) ->
    Session.set('irregularVerbSesion', result)
    return
  )

Template.irregular_verb.events
  "submit .new-irregular-verb" : (event)->
    IrregularVerb.insert
      base : ['abide']
      pastSimple : ['abode', 'abided']
      pastParticiple : ['abode', 'abided', 'abidden']
      personSingular3rd : ['abides']
      presentParticiple : ['abiding']
      createdAt : new Date()
    return false

Template.irregular_verb.helpers
  getIrrVerb : ()->
    return Session.get('irregularVerbSesion')