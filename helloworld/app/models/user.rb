class User < ApplicationRecord
    def hello
        "Heloo Im "+self.name+" age= "+self.age.to_s
    end
end
