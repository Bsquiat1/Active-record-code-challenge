# db/seeds.rb
User.create(name: "John")
User.create(name: "Jane")

Product.create(name: "Product 1")
Product.create(name: "Product 2")

Review.create(star_rating: 4, comment: "Great product!", product_id: 1, user_id: 1)
Review.create(star_rating: 5, comment: "Excellent service!", product_id: 2, user_id: 2)
