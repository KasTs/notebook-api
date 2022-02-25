class Contact < ApplicationRecord
    #association
    belongs_to :kind
    has_many :phones
    has_one :address

    #aninhamento.
    accepts_nested_attributes_for :phones, allow_destroy: true
    accepts_nested_attributes_for :address, update_only: true
end
