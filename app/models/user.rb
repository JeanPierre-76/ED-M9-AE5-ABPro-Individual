class User < ApplicationRecord

  has_many :posts, through: :boards
  has_many :boards, dependent: :destroy
  has_many :posts, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  enum role: [:fotografo, :admin]

  def rol_por_defecto
    self.role ||= :fotografo
  end
        
  has_one_attached :avatar

end
