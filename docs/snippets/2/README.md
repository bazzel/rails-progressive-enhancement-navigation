# Show all items using Turbo

By wrapping your result list in a `<turbo-frame>` element, only the result list will be updated. This may not be a great improvement, but you will see that, when using the search form, the application already feels much smoother.

To achieve this:

* Add and install Turbo:

        $ bundle add turbo-rails
        $ bin/rails turbo:install

* Wrap the result list in a `<turbo-frame>` element and add the proper `data` attributes to both the search form and the **Clear filter**-link.

You should inspect the files below to see which changes you need to make. Using the buttons in the top right corner you can toggle between the code and the changes.