Feature: Check if s3 bucket has private

Scenario: Ensure all S3 buckets are private
    Given I have aws_s3_bucket_acl defined
    When it has acl
    Then its value must contain private

