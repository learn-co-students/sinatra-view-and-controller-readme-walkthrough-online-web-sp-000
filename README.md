

# Passing Data Between Views And Controllers in Sinatra

##OUTLINE FOR TEACHERS
1. Review passing data from a form to a controller.
2. Manipulate data inside of a route in the controller, use the .reverse method
3. Assign data to an instance variable
4. render the instance variable on a view using erb.
5. Iterate through an array in erb



## Overview

In this code-along, we'll show you how to pass data back to views from your controller using an instance variable, and then render it using ERB. This is an important step in building web applications, because it allows us to make your pages *dynamic* rather than *static* - that is, the data can change depending on the inputs provided by the user. As an example, we'll be creating a "String Reverser" - the user inputs a string ("Hello World") into an HTML form, and is shown the reverse of the string ("dlroW olleH") on the following page.

## Objectives
1. Review passing data from a form to a controller using `params`
2. Manipulate data inside of a route in the controller
3. Assign data to an instance variable
4. Render data in a `.erb` file using erb tags.

## Setup

To code along, fork and clone this repository. Run `bundle install` from the command line to ensure you have the proper dependencies installed. The starter code contains a basic Sinatra application which you can access by running `shotgun` in your command line and then opening `http://localhost:9393/` in your browser. For issues with local deployment using Sinatra, visit [this readme](MISSING).

Let's take a closer look at the starter code.

+ `index.erb` has a form that has one `<input type="text"> `tag a method attribute of `POST`, and an action attribute of `/reverse`.
+ The controller has two routes:
	+  `get '/' do`, which renders the `index.erb` page.
	+  `post '/reverse do'`, which receives that 	params hash from the form.


