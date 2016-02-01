# Bear CRUD Necessities


## 1. Complete the 20 questions on this [Google form](https://docs.google.com/forms/d/1VK61RXBILtnqzcfnf8EdI6rbLdjy5KrFuU2A9YSnj0g/viewform?ts=56aaa874&edit_requested=true) and submit!



## 2. Create a CRUD app with a `Bears` resource.

It's time to show that you know the "Bear" necessities of CRUD actions by creating a simple app which CRUDs bears.  We have a light coverage of specs but most of the requirements are listed in the "Grading Criteria" section below.


### Setup

1. Fork this repo
1. Run `$ bundle install`
1. Check that RSpec is working `$ rspec`
    - You may use guard if you like `$ bundle exec guard`
1. Get CRUDing!


### Aside: The PlaceBear API

Use the [Place Bear API](https://placebear.com) for placing bear images in the appropriate places in your application.

**Example**

To do so, simply place a URL with the length and width attributes of the image you'd like and a bear is automatically sent back:

```html
<!-- views/bears/show.html.erb -->

<img src="http://placebear.com/200/300" alt="Bear">
```

An image of a bear should be displayed in your Bear resources's `show` template.


### Minimal Viable Product (MVP):

Your app should:

1. Create, read, update and delete bears.
2. Show a list of all the bears in your database (bear index).
3. Use flash messages to inform the user when these operations succeed and fail.


#### Grading Criteria:

- the following routes exist (a simple set of specs verifies this):
    - GET `/`
    - GET `/bears`
    - GET `/bears/:id`
    - GET `/bears/new`
    - GET `/bears/:id/edit`
    - POST `/bears`
    - PUT/PATCH `/bears/:id`
    - DELETE `/bears/:id`

- the bears INDEX should be available at GET `/` and GET `/bears`
- a bear should have at least the following attributes:
    - `name:string`
    - `description:text`
- links should exist that allow you to edit or delete a bear in:
    - the bear INDEX page (separate edit and delete buttons for each bear)
    - the bear SHOW page
- when a bear is created/altered a flash message should inform the user if the operation succeeded or failed
- after performing a CRUD operation the application should:
    - redirect to an appropriate route
    - render a page when redisplaying a form
- there is a image of a bear on the bear `show` page
    - using the [Place Bear](https://placebear.com) service



### Tests

Minimal tests exist to verify that the mandatory routes exist and do not throw errors. You make run them with `$ rspec`. They simply check the following routes exist and do not raise an error.

- GET `/`
- GET `/bears`
- GET `/bears/:id`
- GET `/bears/new`
- GET `/bears/:id/edit`



### Extra Credit

Only if you finish early, set up functionality to ensure that a name and description are not empty strings. If a name or description is sent as an empty string, display an error message and DO NOT create or update the bear!

Also, display a JavaScript confirm box when the user clicks the `Delete` button for a bear. Ask the user if they really want to delete that poor bear in the message of the confirm box. If they click `Cancel` the bear should not be deleted. If they click `Confirm` delete that bear!
