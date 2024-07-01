Feature: AnnotationTests


  @ExternalId=parametrized_test_{number}_{value}_success
    @DisplayName=parametrized_test_{number}_{value}_success_display_name
    @Title=parametrized_test_{number}_{value}_success_title
    @Description=parametrized_test_{number}_{value}_success
  Scenario Outline: Parametrized test success
    When get parameters <number> <value>
    Then return true

    Examples:
      | number | value    |
      | 1      | string01 |
      | 2      | string02 |
      | 3      | string03 |

  @ExternalId=parametrized_test_{number}_{value}_failed
    @DisplayName=parametrized_test_{number}_{value}_failed_display_name
    @Title=parametrized_test_{number}_{value}_failed_title
    @Description=parametrized_test_{number}_{value}_failed
  Scenario Outline: Parametrized test failed
    When get parameters <number> <value>
    Then return false

    Examples:
      | number | value    |
      | 1      | string01 |
      | 2      | string02 |
      | 3      | string03 |