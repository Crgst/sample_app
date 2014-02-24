namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "oco",
                 email: "oco.tasogare@gmail.com",
                 password: "tasogare",
                 password_confirmation: "tasogare")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.jp"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end