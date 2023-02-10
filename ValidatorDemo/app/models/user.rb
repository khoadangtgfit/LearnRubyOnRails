class User < ApplicationRecord
  before_save :upcases
  # scope :hello, -> { where(:name => "khoa")}
  validates :name, length: {minimum:1, maximum:6}, uniqueness: {message: "name da ton tai"}

  # Ex:- scope :active, -> {where(:active => true)}
  validates :gender, allow_nil: :true, inclusion: { in: %i[male female] }


  def upcases
    self.name.upcase!
  end

end
