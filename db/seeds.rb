if Rails.env.development?
  Admin.create!(email: 'admin@recipy.com', password: 'password', password_confirmation: 'password')
end
