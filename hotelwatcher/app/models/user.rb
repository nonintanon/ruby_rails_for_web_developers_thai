class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  has_many :comments
  has_many :watchers
  has_many :watched_hotels, through: watchers, source: watchable, conditions: { watchers: { watchable_type: "Hotel" } }
  has_many :watched_rooms, through: watchers, source: watchable, conditions: { watchers: { watchable_type: "RoomType" } }

  def to_s
  	name.present? ? name : email
  end

  def watching_for resource
    watchers.where{(watchable_type.eq resource.class.name) & (watchable_id.eq resource.id).first
  end

end