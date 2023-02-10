class Teacher < ApplicationRecord
  belongs_to :school
  before_save :message_before_save

  def message_before_save
    puts "shool has been saved"
  end

end
