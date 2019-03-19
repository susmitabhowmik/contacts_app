# # first name
# FFaker::Name.first_name
# # last name
# FFaker::Name.last_name
# # phone number
# FFaker::PhoneNumber.phone_number
# # email
# FFaker::Internet.email

contact = Contact.all
contact.each do |contact|
  id_from_user = User.all.sample.id
  contact.update!(user_id: id_from_user)
end