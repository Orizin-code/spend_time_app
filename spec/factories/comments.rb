FactoryBot.define do
  factory :comment do
    association :post, factory: :post
    association :user, factory: :user
    content { "コメント" }
  end

  trait :comment_invalid do
    content { "" }
  end
end
