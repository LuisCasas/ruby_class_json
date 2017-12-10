require 'json'

class User
  
  attr_accessor :email, :name, :permissions
  
  def initialize(*args)
    @email = args[0]
    @name = args[1]
    @permissions = User.permission_template
  end
  
  def self.permission_template
    file = File.read 'permissions.json'
    JSON.load(file, nil, symbolize_names: true)
  end
  
  def save
    self_json = {email: @email, name: @name, permissions: @permissions}.to_json
    open('users.json', 'a') do |file|
      file.puts self_json
    end
    
  end
end