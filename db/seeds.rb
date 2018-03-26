User.create(username: "bob", email: "bob@example.com", password: "123")

Board.create(name: "Favorite recipes", user_id: 1)

Item.create(image: "http://res.cloudinary.com/du8aeeumk/image/upload/v1521857111/k5yf9kkgiok6w4vkgi3s.jpg",
  description: "Chocolate chip cookies", url: "http://www.thebakingchocolatess.com/perfect-chocolate-chip-cookies/",
  site_source: "The baking chocolates", board_id: 1)

Item.create(image: "http://res.cloudinary.com/du8aeeumk/image/upload/v1521770518/v5z5xxmxt9ksidd7zx7k.jpg",
  description: "Chocolate cake", url: "https://www.tasteofhome.com/recipes/sandy-s-chocolate-cake",
  site_source: "Taste of home", board_id: 1)

Item.create(image: "http://res.cloudinary.com/du8aeeumk/image/upload/v1521771004/um3t0xoptzoexe6dy3td.png",
  description: "Lemon bars", url: "http://www.geniuskitchen.com/recipe/lemon-bars-9989",
  site_source: "Genius Kitchen", board_id: 1)

Item.create(image: "http://res.cloudinary.com/du8aeeumk/image/upload/v1521772859/myhoqprqnlxbdse0uq2j.jpg",
  description: "French macarons", url: "https://www.foodnetwork.com/recipes/food-network-kitchen/french-macarons-3362691",
  site_source: "Food network", board_id: 1)

Item.create(image: "http://res.cloudinary.com/du8aeeumk/image/upload/v1521770685/llfcxjjoyrv1qvmpoiuc.jpg",
  description: "Strawberry shortcake", url: "https://www.tasteofhome.com/recipes/strawberry-shortcake",
  site_source: "Taste of home", board_id: 1)

Item.create(image: "http://res.cloudinary.com/du8aeeumk/image/upload/v1521772069/kqvqjsj4jgvnjheoxh3y.jpg",
  description: "Coffee milkshake", url: "https://www.sanfranciscobaycoffee.com/index.php/perfect-coffee-milkshake-recipe/",
  site_source: "San Francisco bay coffee", board_id: 1)

Item.create(image: "http://res.cloudinary.com/du8aeeumk/image/upload/v1521857235/rifofqfmxwuenxzkac1o.jpg",
  description: "Oreo cupcakes with cookies & cream frosting", url: "https://www.cookwithmanali.com/oreo-cupcakes-cookies-cream-frosting/",
  site_source: "Cook with Manali", board_id: 1)
