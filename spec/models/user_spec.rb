require_relative "../spec_helper"

describe "User Model" do
  let(:finn) { User.new(name: "Finn", email: "finn@gamil.com", password: "123")}
  let(:finns_item) { Item.new(name: "jfhk", description: "jhafjk jasjfa", user: finn)}


  it "has a method may_edit?(item)" do
    finn.save
    finns_item.save
    expect(finn.may_edit?(finns_item)).to eq(true)
  end
end