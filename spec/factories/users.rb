FactoryBot.define do
     factory :user do
     name                  {Faker::Name.initials(number: 2)}
     email                 {Faker::Internet.free_email}
     password              {"take1023"}
     password_confirmation {password}
     end
   end