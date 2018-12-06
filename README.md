# Datadog Baseline

Configure the DataDog Provider and setup some basic monitors

## Usage

The module expects the DataDog API and APP keys to be set as environment variables, as documented at https://www.terraform.io/docs/providers/datadog/

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| free\_ram\_percentage\_critical | Metric Thresholds | string | `0.3` | no |
| free\_ram\_percentage\_critical\_recovery | - | string | `0.5` | no |
| load\_avg\_critical | - | string | `1` | no |
| load\_avg\_critical\_recovery | - | string | `0.5` | no |
| primary\_notifier | Notifiers | string | `@pagerduty` | no |


## Copyright
This module is released by Mockingbird Consulting Ltd under the MIT License.
For more information on Mockingbird Consulting, please visit www.mockingbirdconsulting.co.uk
