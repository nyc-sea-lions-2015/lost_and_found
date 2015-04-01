get "/items/lost" do
  items = Item.all.where(lost: true)
  erb :"items/all", locals: {items: items}
end

get "/items/found" do
  items = Item.all.where(found: true)
  erb :"items/all", locals: {items: items}
end