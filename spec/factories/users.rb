# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "danb#{n}@ro.dev" }
    name { "Daniel B" }
    password { "Secret1*3*5*" }
    verified { true }
  end
end
