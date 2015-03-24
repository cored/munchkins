Feature: Game creation 
  As an organizer 
  In order to start a new game 
  I want to be able to setup the game

  Scenario: 1 Player
    Given a game with name "Cool Evening" exists
    And a player with name "Rafael" is assign to game "Cool Evening"
    When game "Cool Evening" deals cards
    Then the game should show the message: "Minimum game players is 2"
