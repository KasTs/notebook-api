class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate


  # def attributes(*args)
  #   h = super(*args)
  #   h[:birthdate] = (I18N.l(object.birthdate) unless object.birthdate.blank?)
  #   h
  # end

end
