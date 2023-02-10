class User < ApplicationRecord
  include PgSearch
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :timesheets, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:login]

  attr_writer :login

  def login
    @login || username || email
  end

  def self.find_for_database_authentication(warden_conditions)
    login = warden_conditions.to_h[:login]
    where('lower(username) = :value OR lower(email) = :value', value: login.downcase).first
  end

  def admin?
    has_role?(:admin)
  end

  pg_search_scope :search_by_title_and_body, :against => [:username, :email],
                                             using: {
                                               tsearch: { prefix: true }
                                             }
end
