# Battle Project

During week 3, we were given the task to build a simple two-player game where each player can attack the opponent and track his/her health points. The main functionalities include:

* saving a webpage
* adding tags to the webpages so that you can find them later
* browse links other users have added

### Learning Objectives

The main topic of this week was the **web**. We finally got to move away from the command line interface and start building an actual web application. Some concepts that I reinforced:

* The relationship between a client and a server.
* How HTTP encodes information sent over the web.
* RESTful APIs.
* The request/response cycle.
* Web templating with HTML/CSS.


Some of the skills that I focused on:

* Debugging programs that use multiple languages.
* Using a framework (Sinatra) in my code.
* Structuring the code for apps that have user interaction and visual output.
* Testing apps that have user interaction and visual output.
* Tracing data between the browser and server.


### Tech

Ruby,
Sinatra,
RSpec,
Capybara

### Setup

* Clone repository
* `cd` to the project's root directory
* Run `gem install bundler`
* Run `bundle install` to install all of the required gems
* Run `rspec` to make sure that all tests are passing
* Run `rackup`
* Visit [localhost:9292](localhost:9292) in a browser


### User Stories

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them
```
```
As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points
```
```
As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation
```
```
As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10
```
```
As two Players,
So we can continue our game of Battle,
We want to switch turns
```
```
As Player 1,
So I can see how close I am to losing,
I want to see my own hit points
```
```
As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation
```
```
As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10
```
```
As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```
