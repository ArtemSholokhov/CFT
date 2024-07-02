Feature: AnnotationTests


  @ExternalId=login_attempt_{login}_{password}_test_success
    @DisplayName=login_attempt_{login}_{password}_test
    @Title=login_attempt_{login}_{password}_test_title
    @Description=login_attempt_{login}_{password}_test_description
  Scenario Outline: Parametrized test success
    When get parameters <login> <password>
    Then return true

    Examples:
      | login    | password  |
      | admin    | Qwerty123 |
      | tester   | tester    |
      | observer | admin1234 |

  @ExternalId=address_line_check_{city}_{zipcode}_failed
    @DisplayName=address_line_check_{city}_{zipcode}_failed_display_name
    @Title=address_line_check_{city}_{zipcode}_failed_title
    @Description=address_line_check_{city}_{zipcode}_description
  Scenario Outline: Parametrized test failed
    When get parameters1 <city> <zipcode>
    Then return false

    Examples:
      | city   | zipcode |
      | Moscow | 123099  |
      | Tula   | 300001  |
      | Omsk   | 644001  |