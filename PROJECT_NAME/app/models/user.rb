class User < ApplicationRecord
    def how_old
        "I'm" +self.age.to_s+" years old"
    end
end
