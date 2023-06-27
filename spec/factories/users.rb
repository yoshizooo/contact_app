FactoryBot.define do
  factory :user do
    children_name          { Faker::Name.initials(number: 2) }
    guodian_name           { Faker::Name.initials(number: 2) }
    email                  { Faker::Internet.free_email }
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    class_name_id
  end
end