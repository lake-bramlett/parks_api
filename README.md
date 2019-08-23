# _Parks API_

#### _Code Review, 23 August 2019_

#### By _**Lake Bramlett**_

## Description

'Parks API' is an open RESTful API that presents those accessing it with information of states and parks that reside within them.

## Setup/Installation Requirements

* _Clone https://github.com/lake-bramlett/parks_api repo locally_
* _In the command line, navigate to the clone repo_
* _Initiate a `bundle install` in the command line_
* _Create the database locally using `rails db:create` in the terminal_
* _Run `rake db:migrate`_
* _Create test databse by running `rake db:test:prepare` in terminal_
* _To start local server run `rails s` in terminal window_
* _Use Postman, or similar program, to make calls to localhost:3000 API_
* _Use preferred text editor to edit_
* _Make any pull requests to https://github.com/lake-bramlett/parks_api ._

## Endpoints

#### get
```html
/:api_version/states
```
* Request full list of states available
* Example: `get '/v1/states'`

#### post
```html
/:api_version/states
```
* Add a state by passing `params[:name]` in body or url.
* Example: `post '/v1/states'`

#### get
```html
/:api_version/states/:id
```
* Show specific state and associated parks.
* Example: `get '/v1/states/43'`

#### patch
```html
/:api_version/states/:id
```
* Edit specific state by passing `params[:name]` in body or url.
* Example: `patch '/v1/states/43?name=Ohio'`

#### delete
```html
/:api_version/states/:id
```
* Destroy specific state from API.
* Example: `delete 'v1/states/43'`

#### get
```html
/states/:id/parks
```
* Show all parks associated with a specific park
* Example: `get 'v1/states/43/parks'`

#### get
```html
/:api_version/states/:state_id/parks/:id
```
* Show a specific park associated with a specific state.
* Example: `get 'v1/states/43/parks/12'`


#### patch
```html
/:api_version/states/:state_id/parks/:id
```
* Edit information for a specific park in relation to a specific state by passing in either, or all `params[:name, park_ranger, :open]`
* Example: `patch '/v1/states/43/parks/12?name=Ohio&park_ranger=Jed&open=true'`

#### delete
```html
/:api_version/states/:state_id/parks/:id
```
* Destroy a specific park relating to a specific state
* Example: `delete 'v1/states/43/parks/12'`


#### get
```html
/:api_version/parks
```
* Show all parks irrespective to their associated states
* Example: `get '/v1/parks'`

#### get
```html
/:api_version/parks/search
```
* Search for specific park(s) through name by passing in `params[:name]` in either the body or the URL.
* Example: `get 'v1/parks/search?name=Nyx'`

### get
```html
parks/random
```
* Retrieve random park irrespective of state.
* Example: `get 'v1/parks/random'`

## Known Bugs

  _No observed bugs currently at this time (23 August 2019)._

## Support and contact details

  _email: lake.bramlett@gmail.com_

## Technologies Used

  * _Ruby_
  * _Ruby on Rails_
  * _ActiveRecord_
  * _SQL_
  * _PostgreSQL_
  * _Git_
  * _rspec_

### License

  *This software is licensed under the MIT license.*

  Copyright (c) 2019 **_Lake Bramlett_**
