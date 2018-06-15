# Submarino Test Automation Example

This project was created to practice my skills using Cucumber, Capybara and Page-Object.

This automation has two scenarios, that purchase a product on the Submarino website. The first scenario, login with an user pre-created on the website, and then purchase a TV and remove from the shopping cart. The second scenario do the same thing, but it doesn't login with any user.


## Prerequisites

```
Ruby 2.4.2
Chromedriver 2.40
Bundler
```

## Getting Started

To get started, first enter the following command:

```
bundle install
```
Then you can use the following commands to run the automation.

```
First Scenario:
cucumber -t @buy_product_logged

Second Scenario:
cucumber -t @buy_product_no_user

Both Scenerios:
cucumber -t @buy_product
```

### Development

The first scenario doesn't login, because the website has reCAPTCHA, so the automation breaks after click the login button
