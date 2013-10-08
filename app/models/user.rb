# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
#  attr_accessible :email, :name
#  attr_accessible :password, :password_confirmation
  has_secure_password
#  has_many :microposts

  before_save { email.downcase! }

  validates :name, presence: true, length: { maximum: 50 }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-zA-Z\d\-]+(\.?[a-zA-Z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
       uniqueness: { case_sensitive: false }
end

private

def app_params
params.require(:user).permit(:email, :name, :password, :password_confirmation)
end
