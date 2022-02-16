class Contact < ApplicationRecord
    #association
    belongs_to :kind#, optional: true
    has_many  :phones

    def as_json(options={})
        h = super(options)
        h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
        h
    end


    # def birthdate_br
    #     I18n.l(self.birthdate) unless self.birthdate.blank?
    # end

    # def author
    #     "Thiago Fagundes"
    # end

    # def kind_description
    #     self.kind.description
    # end

    # def as_json(options={})
    #     super(
    #     root: true,
    #     methods: :author,
    #     #methods: [:kind_description, :author],
    #     include: { kind: { only: :description }}
    #     )
    # end
end
