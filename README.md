Jasmine Sauce
=============

The jasmine-sauce gem provides the glue necessary to run your Jasmine tests
across browsers in the Sauce OnDemand cloud.



Getting Started
---------------

1. Add jasmine-sauce to your Gemfile
2. bundle install
3. bundle exec sauce config <YOUR_SAUCE_USENRAME> <YOUR_SAUCE_API_KEY>
4. install jasmine for your current rails version as directed in the [guard-jasmine README](https://github.com/netzpirat/guard-jasmine)
5. rails generate sauce:jasmine
6. rake jasmine:ci:sauce

Rails 2.3
---------

`4. echo "begin; load 'sauce/jasmine/jasmine-sauce.rake'; rescue LoadError; end" >> Rakefile`

Testing Multiple Browsers Concurrently
--------------------------------------
You can run tests on multiple browsers at the same time to greatly improve the 
speed of your suite.  Here's how you do it:

In jasmine-sauce.rake (usually under lib/tasks) add the following:

```ruby
Sauce.config do |config|
  config.browsers = [
    ["Windows 2003", "firefox",      "3.6."],
    ["Windows 2003", "safari",       "4."],
    ["Windows 2003", "googlechrome", ""],
    ["Windows 2003", "iexplore",     "6."],
    ["Windows 2003", "iexplore",     "7."],
    ["Windows 2003", "iexplore",     "8."],
  ]
end
```


Modify the browser strings as necessary, look here for details on what to put in there
https://saucelabs.com/docs/sauce-ondemand/browsers

Changing Seettings
------------------
By default, jasmine-sauce will run a server on port 8080 using guard-jasmine's auto server setting.
You can override these defaults to use a different port or server (such as thin).

```rake jasmine:ci:sauce PORT=<PORT_NUMBER> SERVER=<SERVER_TYPE>```

For details on the available server types, see the [guard-jasmine server types](https://github.com/netzpirat/guard-jasmine#server-options)
