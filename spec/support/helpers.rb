module Helpers
  def login(user)
    visit new_user_session_path
    fill_in "Email address", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
end
