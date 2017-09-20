# better-chef-rundeck Cookbook

A Sinatra app for integrating Chef and Rundeck : [https://github.com/atheiman/better-chef-rundeck](https://github.com/atheiman/better-chef-rundeck).

## Attributes

Please refer to the [attributes/default.rb](attributes/default.rb) file.

## Recipes

### default

Installs and configures the better-chef-client application.

### passenger_standalone

Installs Passenger standalone and uses it to run the better-chef-client-application.