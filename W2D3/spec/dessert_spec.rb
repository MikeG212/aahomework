require 'rspec'
require 'dessert.rb'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cake) { Dessert.new('cake', 200, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq('cake')
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(200)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new('cake', 'two', chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("eggs")
      expect(cake.ingredients).to include("eggs")
    end
  end

  # describe "#mix!" do
  #   it "shuffles the ingredient array" do
  #     ingredients = ["butter", "chocolate", "flour"]
  #     ingredients.each do |ingredient|
  #       cake.add_ingredient(ingredient)
  #     end
  #     cake.mix!
  #     expect(cake.ingredients).not_to eq(ingredients)
  #     expect(cake.ingredients.sort).to eq(ingredients.sort)
  # end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(50)
      expect(cake.quantity).to eq(150)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{cake.eat(9001)}.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      cake.serve
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
