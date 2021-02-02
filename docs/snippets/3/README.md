# Show *n* items

This step introduces pagination so we don't need to load and render all items at once. The page also contains a link to show the next set of items (or page).

In this example we use [kaminari](https://github.com/kaminari/kaminari) for pagination, but you're free to use any other solution available.

* Add and install kaminari:

        $ bundle add kaminari

* Check the files below to see what code changes you need to make.