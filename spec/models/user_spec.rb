# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  user = User.new(
    name: "Anton",
    email: "anton@mail.tu",
    role: 1,
    password: 123_456
  )
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(user).to be_valid
    end

    it "is not valid without name" do
      user.name = nil
      expect(user).to_not be_valid
    end

    it "is not valid without role" do
      user.role = nil
      expect(user).to_not be_valid
    end

    it "is with has invalid email" do
      user.email = "anton"
      expect(user).to_not be_valid
    end

    it "is is not valid without password" do
      user.password = nil
      expect(user).to_not be_valid
    end
  end
end