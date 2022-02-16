class Contact < ApplicationRecord
    #association
    belongs_to :kind
    has_many :phones

    def as_json(options={})
        h = super(options)
        h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
        h
    end
end
