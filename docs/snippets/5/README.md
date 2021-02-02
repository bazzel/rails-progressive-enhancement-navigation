# Add an endless scroll using Stimulus

In this step you'll add a Stimulus controller to turn the page into an endless scroll - this way the next set of items is loaded automatically when the user *almost* reaches the bottom of the page.

* Add and install Stimulus:

        $ bin/rails webpacker:install:stimulus

* Copy the content of `infinite_scroll_controller.js` shown below to `app/javascript/controllers/infinite_scroll_controller.js` in your project.
* Add the `data` attribute to the "Load More"-link in the `index`-page, see the sample code below for the details.