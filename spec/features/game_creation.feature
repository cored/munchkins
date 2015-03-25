Feature: Game creation
  As an organizer
  In order to start a new game
  I want to be able to setup the game

  Scenario: 1 Player
    Given a game with name "Cool Evening" exists
    And a player with name "Rafael" exists
    And a player with name "Rafael" is assign to game "Cool Evening"
    When game "Cool Evening" deals cards
    Then the game should show the message: "Minimum game players is 2"

  Scenario: 8 Players
    Given a game with name "GameNight" exists
    And a player with name "Rafael" exists
    And a player with name "Rafael" is assign to game "GameNight"
    And a player with name "Roger" exists
    And a player with name "Roger" is assign to game "GameNight"
    And a player with name "Karina" exists
    And a player with name "Karina" is assign to game "GameNight"
    And a player with name "Ramon" exists
    And a player with name "Ramon" is assign to game "GameNight"
    And a player with name "Julio" exists
    And a player with name "Julio" is assign to game "GameNight"
    And a player with name "Marco" exists
    And a player with name "Marco" is assign to game "GameNight"
    And a player with name "Gomez" exists
    And a player with name "Gomez" is assign to game "GameNight"
    And a player with name "Robert" exists
    And a player with name "Robert" is assign to game "GameNight"
    When game "GameNight" deals cards
    Then the game should show the message: "Maximum amount of players is 6"
    And the game should be invalid

  Scenario: 6 Players
    Given a game with name "GameNight" exists
    And a player with name "Rafael" exists
    And a player with name "Rafael" is assign to game "GameNight"
    And a player with name "Roger" exists
    And a player with name "Roger" is assign to game "GameNight"
    And a player with name "Karina" exists
    And a player with name "Karina" is assign to game "GameNight"
    And a player with name "Ramon" exists
    And a player with name "Ramon" is assign to game "GameNight"
    And a player with name "Julio" exists
    And a player with name "Julio" is assign to game "GameNight"
    And a player with name "Marco" exists
    And a player with name "Marco" is assign to game "GameNight"
    When game "GameNight" deals cards
    Then the game should be valid

