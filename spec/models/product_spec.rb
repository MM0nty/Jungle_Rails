require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'saves successfully' do
      @category = Category.new(name: "Category")
        @product = Product.new(name: "Product", price: 20, quantity: 13, category: @category)
        expect(@product).to be_valid
    end

    it 'is not valid if :name is blank' do
      @category = Category.new(name: "Category")
        @product = Product.new(name: nil, price_cents: 20, quantity: 13, category: @category)
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages).to include "Name can't be blank"
    end

    it 'is not valid if :price is blank' do
      @category = Category.new(name: "Category")
        @product = Product.new(name: "Product", price_cents: nil, quantity: 13, category: @category)
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages).to include "Price can't be blank"
    end

    it 'is not valid if :quantity is blank' do
      @category = Category.new(name: "Category")
        @product = Product.new(name: "Product", price_cents: 20, quantity: nil, category: @category)
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages).to include "Quantity can't be blank"
    end
    
    it 'is not valid if :category is blank' do
      @category = Category.new(name: "Category")
        @product = Product.new(name: "Product", price_cents: 20, quantity: 13, category: nil)
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages).to include "Category can't be blank"
    end
  end
end