# Bonus: Live Search using Stimulus

Congrats, you turned a huge list of items into an sophisticated endless scroll by hardly adding any code.

Since we already added Stimulus to our project, let's create another controller that turns our search form into a live search - results will be displayed while the user enters a search term, there's no need to click the "Search" button.

* Add the [`lodash`](https://lodash.com/) JavaScript library so we can make use of the `debounce` function to limit the number of GET requests while typing:

        $ yarn add lodash

* Copy the content of `search_controller.js` shown below to `app/javascript/controllers/ search_controller.js` in your project.
* Update the HTML for the search form in the `index`-page by adding some `data` attributes to 'connect' the search form with the Stimulus controller. See the sample code below for the details.