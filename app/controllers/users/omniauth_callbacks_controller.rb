class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      puts "\n\n\n\nI MADE IT HERE!!!!!\n\n\n\n"

      puts request.env["omniauth.auth"]

      @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)

      redirect_to static_pages_inside_url
  end
end