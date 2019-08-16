# Custom Solidus Mailers

Solidus has a set of mailers to notify some actions like: confirm an order, notify when a carton has been already shipped, cancellations, etc. Those notifications were created to keep the customer informed, and we can customize these mailers to satisfy our business needs; for example: improve our user experience for the brand identity.

To see the default mailers, in development you can visit `/rails/mailers`:

![default solidus mailers](http://i.imgur.com/YsASKfN.png)

As you can see, the mailers were created in a very simple way, just to share the transactions information, but maybe we want to show more (or less) information; and set our brand image and that stuff.

#### Carton shipped email preview
![Carton shipped email](http://i.imgur.com/FkOGAKU.png)

## Spree.config

You can set your mailer class for a certain email from the `Spree.config`, for example: 
- To set a custom `shipped_email` (this comes from [Spree::CartonMailer](https://github.com/solidusio/solidus/blob/d2c71a63df381e01a239dd0ecba5813577051fc0/core/app/mailers/spree/carton_mailer.rb#L18)) just create your own mailer.

You can use the rails generator if you want. Doing something like this:

``` rails generate mailer MyCarton shipped_email```

Then just set as mailer class of `shipped_email`:

```
Spree.config do |config|
  ...
  config.carton_shipped_email_class = MyCartonMailer
  ...
end
```
And that's all :tada:!. If you want, you can use as guide the original solidus method that you want to customize.

If you want to see how this flexibility can be performed, you can visit the following pull requests:
  - [Allow customizing the carton mailer class](https://github.com/solidusio/solidus/pull/397)
  - [Allow customizing the promotion code batch mailer class](https://github.com/solidusio/solidus/pull/2796)
  - [Allow customizing the order mailer class](https://github.com/solidusio/solidus/pull/2792)
  - [Allow customizing the reimbursement mailer class](https://github.com/solidusio/solidus/pull/2795)
  
Thanks for reading this blogpost. Comments and feedback are well received, and if you want to check my implementation, you can visit this [repository](https://github.com/EduardoGHdez/solidus_custom_mailer/pull/1).
