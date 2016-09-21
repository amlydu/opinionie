Feature: Opinion
  In order to judge or pluralize opinions
  As a CLI
  I want to judge away

  Scenario: Your opinion is ok. Not great. But also not good.
    When I run `opinion judge "Kanye West is a God."`
    Then the output should contain "not good"

  Scenario: opinion
    When I run `opinion pluralize --word "opinion"`
    Then the output should contain "opinions"
