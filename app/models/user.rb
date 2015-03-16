class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :recoverable, :lockable, :timeoutable and :validatable
  devise :database_authenticatable, :registerable,
    :rememberable, :trackable, :omniauthable

  has_many :comedians_users 
  has_many :comedians, through: :comedians_users

  def followComedian(current_user)
    comedian = Comedian.find(comedian_id)
    self.comedians << comedian

  end

  def unfollowComedian(current_user)
    comedian = Comedian.find(comedian_id)
    self.comedians.where(comedian_id)
  end
end

