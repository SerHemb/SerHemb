Feature: competition creating

  Scenario Outline: Admin creates new competition with types data in to required fields
    Given new league with "<leagueName>" name creates via API request
    Given user logs in as "iserhiy888@gmail.com" "Parol123"
    When browser is on new competition creation page
    And admin types "<competitionName>" in Name field and selects "<leagueName>" from dropdown menu
    Then the cart with "<competitionName>" title presents on competitions list page
    And delete created league

    Examples:
      | competitionName | leagueName          |
      | Fifa Champ      | Intelligence fifa   |
      | Tennis Champ    | Intelligence tennis |