if Rails.env.development?
  Administrator.create! do |admin|
    admin.email = 'admin@recipy.com'
    admin.password = 'password'
    admin.password_confirmation = 'password'
  end
end
