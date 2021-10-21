require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'is not valid if :name is blank' do
      @user = User.new(name: nil, email: "email@email.com", password: "password", password_confirmation: "password")
      expect(@user).to_not be_valid
    end

    it 'is not valid if :email is blank' do
      @user = User.new(name: "Name", email: nil, password: "password", password_confirmation: "password")
      expect(@user).to_not be_valid
    end

    it 'is not valid if :password is blank' do
      @user = User.new(name: "Name", email: "email@email.com", password: nil, password_confirmation: "password")
      expect(@user).to_not be_valid
    end

    it 'is not valid if :password_confirmation is blank' do
      @user = User.new(name: "Name", email: "email@email.com", password: "password", password_confirmation: nil)
      expect(@user).to_not be_valid
    end

    it 'is not valid if :password and :password_confirmation do not match' do
      @user = User.new(name: "Name", email: "email@email.com", password: "password", password_confirmation: "password_confirmation")
      expect(@user).to_not be_valid
    end

    it 'is valid if :password and :password_confirmation match' do
      @user = User.new(name: "Name", email: "email@email.com", password: "password", password_confirmation: "password")
      expect(@user).to be_valid
    end

    it 'emails are unique' do
      @user = User.create(name: "Name", email: "email@email.com", password: "password", password_confirmation: "password")
      @fakeUser = User.create(name: "Name", email: "email@email.com", password: "password", password_confirmation: "password")
      expect(@fakeUser).to_not be_valid
    end

    it 'emails are not case sensitive' do
      @user = User.create(name: "Name", email: "email@email.com", password: "password", password_confirmation: "password")
      @fakeUser = User.create(name: "Name", email: "EMAIL@EMAIL.com", password: "password", password_confirmation: "password")
      expect(@fakeUser).to_not be_valid
    end

    it 'password has a minimum length' do
      @user = User.new(name: "Name", email: "email@email.com", password: "pass", password_confirmation: "pass")
      expect(@user).to_not be_valid
    end
  end

  describe '.authenticate_credentials' do
    it 'is valid if there is whitespaces in email' do
      @user = User.new(name: "Name", email: " email@email.com ", password: "password", password_confirmation: "password")
      expect(@user).to be_valid
    end

    it 'is able to login even if email is in wrong case' do
      @user = User.new(name: "Name", email: "EMAIL@EMAIL.com", password: "password", password_confirmation: "password")
      expect(@user).to be_valid
    end
  end
end