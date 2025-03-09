Feature: Yahoo Finance Stock Search and Validation

  @Tc-001
  Scenario Outline: Verify Stock Search Functionality
    Given the user navigates to yahoo
    When the user enters "<Stock Symbol>" in the search bar
    Then the user verify the tsla header should appear
    Then the user scroll down
    Then the user verifies the stock page header contains "<Stock Symbol>"
    Then the user verifies the stock price is greater than <Expected Price>
    Then the user captures all stock details
    Examples:
      | Stock Symbol | Expected Price |
      | TSLA         | 200            |

  @Tc-002
  Scenario Outline: Validate Stock Trend (Up/Down)
    Given the user navigates to yahoo
    When the user enters "<Stock Symbol>" in the search bar
    Then the user verifies the stock trend is "<Trend>"
    Examples:
      | Stock Symbol | Trend |
      | TSLA         | UP    |

  @Tc-003
  Scenario Outline: Search for an Invalid Stock Symbol
    Given the user navigates to yahoo
    When the user enters "<Stock Symbol>" in the search bar invalid data
    Then the user verifies an error message is displayed

    Examples:
      | Stock Symbol |
      | INVALID123   |
      | 7567%&^%     |

  @Tc-004
  Scenario Outline: Verify if Market is Open or Closed
    Given the user navigates to yahoo
    When the user enters "<Stock Symbol>" in the search bar
    Then the user verifies the market status
    Examples:
      | Stock Symbol |
      | TSLA         |
