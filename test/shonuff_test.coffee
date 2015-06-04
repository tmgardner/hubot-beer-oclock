chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'
chai.use require('chai-things');
Helper = require('hubot-test-helper')
helper = new Helper('../src')

expect = chai.expect

describe 'shonuff', ->
 
  beforeEach ->
    @room = helper.createRoom()
 
  afterEach ->
    @room.destroy()
 
  context 'user says hi to hubot', ->
    beforeEach ->

    [
      "who's the master?",
      "Who is the master",
      "Who is the meanest",
      "WHO IS THE PRETTIEST?",
      "Who's the baddest mofo low-down around this town?",
      # Friggen smart quotes:
      "who’s the prettiest?"
    ].forEach (phrase) ->
      it "should reply to #{phrase}", ->
        @room.user.say 'alice', "#{phrase}"
        expect(@room.messages).to.include.something.that.deep.equals(['hubot', "@alice Sho'nuff!"])
