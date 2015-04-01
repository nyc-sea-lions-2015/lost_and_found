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