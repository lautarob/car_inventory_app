administrator = User.create :email => "admin@admin.com", :password => "admin123", :role => "admin"
user = User.create :email => "user@user.com", :password => "user123", :role => "guest"
