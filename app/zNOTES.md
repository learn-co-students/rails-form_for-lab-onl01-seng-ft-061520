34 examples, 2 failures, 14 pending

LIST ALL ROUTES:    localhost:3000/rails/info/routes


STEP 1: Create SchoolClass
    rails generate model SchoolClass title:string room_number:integer
    NOTE Created both a class file and table migration

STEP 2: Create SchoolClassesController
    rails g controller SchoolClasses new create index show edit update
    rails g controller Students new create index show edit update
    NOTE Created both a controller file and folder in the views folder

STEP 3: Set up the routes for student & class
    resources :students, only: [:index, :show, :new, :create, :edit, :update]
    resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]

STEP 4: Fill out index & show views & methods for both students and school classes

STEP 5: Build the new method for student
        Build the new form for student
        Build the create method for student

STEP 6: Build the new method for student
        Build the new form for school class
        Build the create method for school class

STEP 7: Build the edit method for student
        Build the edit form for student
        Build the update method for student

STEP 8: Build the edit method for school class
        Build the edit form for school class
        Build the update method for school class



==========================================================

NOTE NOTE My Edit feature is replacing ALL datafields with the edit form information (for both student & school_class)
    NOTE In the browser I get the URL address below after the edit create redirects to the show page:
        http://localhost:3000/school_classes/1%2F2%2F3%2F4
ANSWER Had to specify which student or school_class via id find and update that specific student or school_class

    SOLUTION
        CORRECT:
            @school_class = SchoolClass.find(params[:id])

            @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])

        INCORRECT:
            @school_class = SchoolClass.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])


==========================================================


NOTE NOTE ??????? WHY can't I use the code below: ???????
        <h1>School Class <%= @school_class.title</h1>
ANSWER Missing erb end tag:     %>
        <h1>School Class <%= @school_class.title %></h1>

    Error Message: We're sorry, but something went wrong. If you are the application owner check the logs for more information.

    Resource Solution: https://stackoverflow.com/questions/33490141/were-sorry-but-something-went-wrong-if-you-are-the-application-owner-check-th

    SOLUTION
    Had to remove code below from views/school_classes/show.html.erb
        <h1>School Class <%= @school_class.title</h1>
    Replaced it with code below:
        <h1>School Class <%= @school_class.title %></h1>


