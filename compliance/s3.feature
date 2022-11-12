Feature: Check tags on the S3 resource

Scenario: Ensure all resources have tags
    Given I have resource that supports tags defined
    Then it must contain tags
    And its value must not be null

Scenario Outline: Ensure that specific tags are defined
    Given I have aws_s3_bucket that supports tags defined
    When it has tags
    Then it must contain <tags>
    And its value must not be null
    #And its value must match the “<value>” regex

    Examples:
      | tags |
      | Name |
