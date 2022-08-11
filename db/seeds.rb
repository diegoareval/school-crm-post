User.create(email: "admin@gmail.com", password: "admin123456", password_confirmation: "admin123456")
User.create(email: "student@gmail.com", password: "student123456", password_confirmation: "student123456")

User.update_all confirmed_at: DateTime.now