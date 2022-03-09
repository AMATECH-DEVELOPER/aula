class Utilizador < ApplicationRecord
  has_many :turmas, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum acesso: { 
    docente: 0,
    administrador: 1
  }
end
