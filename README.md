E-commerce Product Reviews
This project focuses on the e-commerce domain and implements a system for managing product reviews. It utilizes Active Record migrations, associations, class and instance methods, and querying to create and retrieve data related to products, users, and reviews.

Setup
To set up the project locally, follow these steps:

Clone the repository from GitHub.
Install the necessary dependencies by running bundle install in the terminal.
Run the database migrations by executing rails db:migrate.
(Optional) If you want to test the code using sample data, run rails db:seed to populate the database with sample users, products, and reviews.
Models
The project consists of three models:

User: Represents a user who can leave reviews for products.
Product: Represents a product that can receive reviews from users.
Review: Represents a review left by a user for a specific product.
Associations
The models have the following associations:

User:

has_many :reviews
has_many :products, through: :reviews
Product:

has_many :reviews
has_many :users, through: :reviews
Review:

belongs_to :user
belongs_to :product
Methods
The following methods are implemented in the project:

User
#reviews: Returns a collection of all the reviews that the user has given.
#products: Returns a collection of all the products that the user has reviewed.
#favorite_product: Returns the product instance with the highest star rating from this user.
#remove_reviews(product): Removes all the user's reviews for a specific product.
Product
.reviews: Returns a collection of all the reviews for the product.
.users: Returns a collection of all the users who reviewed the product.
#leave_review(user, star_rating, comment): Creates a new review associated with the product and the user.
#print_all_reviews: Prints all the reviews for the product.
#average_rating: Returns the average star rating for all the reviews of the product.
Review
.user: Returns the user instance for the review.
.product: Returns the product instance for the review.
#print_review: Prints the details of the review.
Usage
To test the functionality of the project, you can use the rake console command to open a console session with the Active Record models loaded.

In the console, you can create instances of the User, Product, and Review models and test the implemented methods. Feel free to customize the code in the run.rb file to suit your testing requirements.