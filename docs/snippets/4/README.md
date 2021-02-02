# Show *more* items

Now it gets interesting: instead of showing the next page, we append the content of the next page to the bottom of the list. So every time you click the "Load More"-link you will actually see the list grow.

For this, you only need to make a tiny change to the `index` view, by only adding 2 `<turbo-frame>` elements.

Again, check the files below to see what code changes you need to make to achieve this.

> Credits should go to Nick Pezza and his [post on how to use pagination using Turbo](https://dev.to/pezza/how-to-paginate-items-using-turbo-1862).