XAMPLE_SECRETS = ["het", "keca", "si", nil, "iel"]

def decode(jumble)
  secret = jumble.split("").rotate(3).join("")
  announce(secret) 
  secret
end

def decode_all(secrets)
  secrets.map { |s| decode(s) }
rescue
  puts "whew! safe."
end

decoded_secrets = decode_all(XAMPLE_SECRETS)
puts decoded_secrets.inspect

class UserDataAccess
    attr_accessor :db
  
    def initialize
      @db = Database.new
    end
  
    def find_user(name)
      result = @db.find("SELECT * FROM USERS WHERE NAME = ?", name)
      result # Return the result of the query
    rescue StandardError => e
      puts "A database error occurred: #{e.message}"
      nil # Return nil in case of an error
    ensure
      @db.close
    end
  end
  
