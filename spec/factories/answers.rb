FactoryGirl.define do
  factory :answer do
    sequence(:body) { |n| "MyText#{n}" }
    question nil
  end
  factory :invalid_answer, class: "Answer" do
    body nil
  end
end
