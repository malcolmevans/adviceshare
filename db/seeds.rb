# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

Advicearea.create!([
  { :name => "Test test test", :description => "Test test test", :created_at => "2013-10-23 16:34:42", :updated_at => "2013-10-23 16:34:42", :permalink => "Test-test-test" },
  { :name => "Test test test", :description => "Test test test", :created_at => "2013-10-23 16:34:49", :updated_at => "2013-10-23 16:34:49", :permalink => "Test-test-test" },
  { :name => "DO NOT SHOW", :description => "DO NOT SHOW", :created_at => "2013-10-23 16:35:10", :updated_at => "2013-10-23 16:35:10", :permalink => "DO-NOT-SHOW" }
])



User.create!([
  { :email => "malcolmfevans@gmail.com", :encrypted_password => "$2a$10$WDeO8eDI7mzrOQustr6NwOBttL4pBLHit8Hd942nGKH8W7pLurA1e", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-10-23 16:10:19", :last_sign_in_at => "2013-10-23 16:10:19", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :confirmation_token => nil, :confirmed_at => nil, :confirmation_sent_at => nil, :created_at => "2013-10-23 16:10:19", :updated_at => "2013-10-23 16:10:19", :admin => false, :name => "malcolm evans" },
  { :email => "malcolm@adviceshare.co", :encrypted_password => "$2a$10$ebyH9jZi1GKrS9n8.ovLLuhuyKh0SOoxFPB/5FI40TGQ7YTaE/Jya", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 3, :current_sign_in_at => "2013-10-24 15:19:07", :last_sign_in_at => "2013-10-24 02:30:51", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :confirmation_token => nil, :confirmed_at => nil, :confirmation_sent_at => nil, :created_at => "2013-10-23 16:33:11", :updated_at => "2013-10-24 15:19:07", :admin => true, :name => "malcolm evans" }
])


