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
  has_many :watches
  has_many :watched_hotels, through: :watches, source: :watchable_hotel
  has_many :watched_rooms, through: :watches, source: :watchable_room

  def to_s
  	name.present? ? name : email
  end

  def watching_for resource
    watches.where("watchable_type = ? and watchable_id = ?", resource.class.name, resource.id).first
    # watches.where{(watchable_type.eq resource.class.name) & (watchable_id.eq resource.id)}.first
  end

end