Feature: Check if s3 bucket has encrypted

Scenario: Ensure all S3 buckets are encrypted
    Given I have aws_s3_bucket_server_side_encryption_configuration defined
    When it has rule
    Then it must contain sse_algorithm
    And its value must contain AES256
