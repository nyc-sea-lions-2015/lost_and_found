get "/items/lost" do
  items = Item.all.where(lost: true)
  erb :"items/all", locals: {items: items, status: "lost"}
end

get "/items/found" do
  items = Item.all.where(found: true)
  erb :"items/all", locals: {items: items, status: "found"}
end

get "/items/:id" do
  item = Item.find_by(id: params[:id])
  user = item.user
  comments = item.comments
  erb :"items/show", locals: {item: item, user: user,comments: comments}
end

post "/items/create" do
  item = Item.new(params)
  if item.save
    redirect back
  else
    [400, "you have not feel up the form correctly!"]
  end
end

delete "/items/:id" do
   item = Item.find_by(id: params[:id])
  if item
    item.destroy
  end
  redirect "/"
end

put "/items/:id" do
  item = Item.find_by(id: params[:id])
  item.name = params[:name]
  item.description = params[:description]
  if item.valid?
    item.save
  end
  redirect "/"
end