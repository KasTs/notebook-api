class Contact < ApplicationRecord
    belongs_to :kind, optinal: true

    def author
        "Thiago Fagundes"
    end

    # def kind_description
    #     self.kind.description
    # end

    def as_json(options={})
        super(
        root: true,
        methods: :author,
        #methods: [:kind_description, :author],
        include: { kind: { only: :description }}
        )
    end
end
