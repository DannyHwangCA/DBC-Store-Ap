## Master Ware INC - Full Stack Shopping Cart Site. 

## Introduction

This is a Dynamic Shopping Site created using Ruby on Rails.

It features many functionalities including a dynamic shopping cart created with AJAX, JQUERY, and Javascript.

A full front end enables users to fill a shopping cart, review products, and place orders.

A full backend enables administrators to create categories, create products, and assign categores to products. 

Mailgun was also used to send customer custom greeting / checkout emails. 

Additionally, User & Adminstrator authentications / validations are also available. 

## How to use.

Regular user login: Email - tom@tom.com, Password - tom

Administrator user login: tim@tim.com, Password - tim

Simply login to run site. 

## Initial User/Admin Stories

### As A User:
1. I want a Sign up / Login Screen
  1. I want a nice form to fill out.
  2. I want to have validations that tell me what is required.
  3. I want an email to notify me when a sign up is successful.
  4. I want to be logged in once the sign up or login is completed.
2. I want to be able to see the product whether logged in or not.
3. I want a shopping cart that holds products I want to purchase.
  1. I want the shopping cart icon in the nav bar to reflect the total products within the shopping cart.
  2. I want the shopping cart to display at the top of the page with the quantity, name, and price of the products I want.
  3. I want this shopping cart list to display prettily.
4. I want to be able to check out.
  1. I want to receive a notice when I check out successfully.
  2. I want an email when I checkout successfully.
  3. I want to be able to review my shopping cart before I check out.
5. I want to be able to review my order history.
  1. If I did not place an order, I want to have a notice saying I do not have any orders.
  2. If I have place orders before, I want a list of orders and the date they were purchased.

### As An Admin:
1. I want to have a special login credential.
  1. Once I log in, I want to be able to create products and categories.
  2. I want to be able to delete and edit products.
  3. I want to be able to easily review all products and categories I created.
2. I want certain sections of the site to only be available to myself and other admins.
3. I want a special designation for my admin accounts and I want the site's common login to check for admin privileges.
4. I want a responsive site that can be easily viewed on mobile devices.
5. I want to be able to logout so I can view the site as a regular account.
6. I do not want a shopping cart on my admin navbar as I do not want to have my admins accidentally place an order.

###Our Database Schema

![alt tag](http://i.imgur.com/31og47t.png)

### Installation Notes

1. Rails 4.2.6
2. Ruby 2.2.5
3. Bcrypt 3.1.7
4. BootStrap 3.2.0
5. Post Gres 0.10.3
6. Capybara 2.7.1
7. Database Cleaner 1.5.3
8. Faker 1.6.3
9. Haml Rails 0.9.0
10. Jquery-rails 4.1.1
11. Pry 0.10.3
12. Thin 1.6.4
13. Mail Gun 1.0.2

### Deployment & Resources

Heroku Link: https://lit-waters-72995.herokuapp.com/

Github Link: https://github.com/DannyHwangCA/DBC-Store-Ap





