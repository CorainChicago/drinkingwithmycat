require 'rails_helper'

RSpec.describe Charlie, type: :model do
  
  describe "validation" do

     it "valid with all requires attributes" do
      charlie = Charlie.create(description: "Test", email: "test@test.com", image: File.open("#{Rails.root}/public/intensecharliecopy.jpg"))
      expect(charlie.errors.count).to eq 0
    end 

     it "invalid when the email address lacks a '@' symbol" do
      charlie = Charlie.create(description: "Test", email: "testattest.com", image: File.open("#{Rails.root}/public/intensecharliecopy.jpg"))
      expect(charlie.errors.count).to eq 1
    end

    it "requires an email to be valid and formatted correctly" do
      charlie = Charlie.create(description: "Test", image: File.open("#{Rails.root}/public/intensecharliecopy.jpg"))
      expect(charlie.errors.count).to eq 2
    end 
  end
end
