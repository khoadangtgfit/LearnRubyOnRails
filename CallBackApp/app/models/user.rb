class User < ApplicationRecord
  validates :login, :email, presence: true
  before_validation :ensure_login_has_a_value
  before_create :UpcaseLoginWhenEmailPlain2
  after_destroy :PutMessageAfterDelete, on: :destroy
  before_destroy :PutMessageBeforeDelete

  private

  def ensure_login_has_a_value
    return unless login.nil?

    self.login = email unless email.blank?
  end

  def UpcaseLoginWhenEmailPlain2
    return unless email == 'khoa'

    self.login = login.upcase
  end

  def PutMessageAfterDelete
    puts 'Sau khi xoa'
  end

  def PutMessageBeforeDelete
    puts 'Truoc khi xoa'
  end
end
