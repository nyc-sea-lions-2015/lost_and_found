post "/comments" do
   comment = Comment.new(params)
   if comment.valid?
    comment.save!
    # "#{comment.to_json}"
    redirect back
   else
    [400, "something went wrong"]
  end
end

put "/comments/:id" do
  comment = Comment.find_by(id: params[:id])
  comment.text=params[:text]
  if comment.valid?
    comment.save
  end
  redirect back
end

delete "/comments/:id" do
   comment = Comment.find_by(id: params[:id])
  if comment
    comment.destroy
  end
  redirect "/"
end