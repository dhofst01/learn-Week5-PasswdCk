class PasswordsController < ApplicationController

    def check
      @username = params[:userck]
      @password = params[:password]
     if ((@username && @password).length < 5)
       flash.now[@username] = "Your username or password needs to be longer than 5"
     elsif !(params[:userck] && params[:password]).nil?
       flash.now[:userck] = "Your credentials are valid"
       flash.now[:password] = "Your credentials are valid"
     else
       flash.now[:userck] = "Your credentials are not valid"
       flash.now[:password] = "Your credentials are not valid"
    end

      render('check.html.erb')
  end
end


# if !(params[:userck] && params[:password]).nil?
#   flash.now[:userck] = "Your credentials are valid"
#   flash.now[:password] = "Your credentials are valid"
# else
#   #flash.now[:userck] = "Your credentails are not valid "
#   flash.now[:password] = "Your credentails are not valid"
# end
# if (@username.length < 5)
#  flash.now[@username] = "Your username or password needs to be longer than 5"
# else
#  flash.now[@username] = "Your info is fine"
# end
