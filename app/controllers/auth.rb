get "/authentication/login" do
   erb :"authentication/login"
end

get "/authentication/signup" do
  erb :"authentication/signup"
end

get "/authentication/logout" do
  session[:user_id] = nil
  redirect "/"
end

post "/authentication/signin" do

end

post "/authentication/register_user" do

end