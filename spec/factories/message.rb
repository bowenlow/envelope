FactoryGirl.define do
  factory :message do
    association :mailbox

    message_id { "<message-#{Digest::SHA1.hexdigest(Random.new.rand(1000).to_s).downcase}@example.com>" }
    sequence(:uid) { |i| i }
    subject { Faker::Company.catch_phrase }
    timestamp 5.days.ago
    flags ['read']
    text_part { Faker::Lorem.paragraphs(3) }
    raw { Faker::Lorem.paragraphs(5) }

    participants { [
      FactoryGirl.build(:participant),
      FactoryGirl.build(:participant_with_contact)
    ] }
  end
end
