# FinanceHub
A Ruby on Rails web application for the Student Engineers' Council.

## What is FinanceHub?
FinanceHub is an app started by Dominick Fabian and continued by other members in the
SEC Systems Administration committee. It has the goal of handling all of the financial
data of the council and allowing members to securely upload information that will allow
the CFO to handle dealings with SOFC. The old system is slowly falling apart and will 
soon be decommissioned once the tax archives are not longer required. From then on out,
FinanceHub will take over all financial dealings.

## Goals of this project
Some of the goals of FinanceHub include:
- Integration with MembershipHub for user authentication and access control
- Easy maintenance and accessibility of information to authorized users
- Document upload and storage for items such as receipts, signed forms, and other important records
- Maintainability, in the form of up-to-date documentation and troubleshooting guides

## Topics of interest
This application requires Rails `5.2.3`.
This application requires Ruby `2.5.1`.

## How to get FinanceHub running
First clone the repository:
```
git clone https://github.com/domfabian/financehub.git
```

Then change into the directory of the application:
```
cd financehub
```

Ensure that you are using the correct version of Ruby and Ruby:
```
rvm install 2.5.1
rvm use 2.5.1
rails --version
ruby --version
```

Now we will make sure that all gems are installed on our local machine:
```
gem install bundler
bundle update
bundle install --without production
```

Make sure that your local database is up-to-date:
```
rails db:migrate
```

Now we are ready to start up the Rails server:
```
rails s -p $PORT -b $IP
```

If you make a mistake and need to reset things on your local machine:
```
rails db:reset
rails db:seed
```

Now you should be ready to go!

## Models currently set up
- `Member`
  - `name` (`string`)
  - `auth_level` (`integer`)
  - `has_and_belongs_to_many Committees`

- `Committee`
  - `name` (`string`)
  - `has_and_belongs_to_many Members`

- `FiscalYear`
  - `name` (`string`)
  - `active` (`boolean`)
  - `has_many Budgets`

- `Budget`
  - `belongs_to FiscalYear`
  - `has_many Categories`
  - `has_many Subcategories through Categories`

- `Category`
  - `has_many Subcategories`
  - `belongs_to Budget`

- `Subcategory`
  - `allotted_amount` (`integer`)
