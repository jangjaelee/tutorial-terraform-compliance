Feature: This is base for check basic of s3

Scenario Outline: S3 resources must be configured
    Given I have AWS S3 Bucket defined
    Then it must contain <attributes>
      Examples:
      | attributes |
      | tags       |
