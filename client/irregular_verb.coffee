# counter starts at 0

Meteor.subscribe("irregularVerb")

Template.irregularVerbs.onRendered ()->
  Meteor.call('findIrregularVerb', (error, result) ->
    Session.set('irregularVerbSesion', result)
    return
  )

Template.irregularVerbs.events
  "submit .new-irregular-verb" : (event)->
    IrregularVerb.insert
      base : ['abide']
      pastSimple : ['abode', 'abided']
      pastParticiple : ['abode', 'abided', 'abidden']
      personSingular3rd : ['abides']
      presentParticiple : ['abiding']
      createdAt : new Date()
    return false

Template.irregularVerbs.helpers
  getIrrVerb : ()->
    return Session.get('irregularVerbSesion')