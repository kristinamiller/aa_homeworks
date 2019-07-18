require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("cookie", 2, "Joe")}
  let(:chef) { double("chef") }
  

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cookie") 
    end

    it "sets a quantity" do
    expect(quantity).to eq(2) 
    end


    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("cookie", "many", "Jim")}.to raise ArgumentError
    end


  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
    expect(dessert.ingredients.length).to eq(1)
    end
  end 
  describe "#mix!" do
    it "shuffles the ingredient array"
    end


  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
    end

    it "raises an error if the amount is greater than the quantity" do
    end
  end
  describe "#serve" do
    it "contains the titleized version of the chef's name" do
    end
  end
  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
  end
  end
