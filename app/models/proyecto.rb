class Proyecto < ApplicationRecord
    validates :name, presence: true
    validates :descripcion, presence: true
    validates :state, presence: true
end
