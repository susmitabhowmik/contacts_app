# # first name
# FFaker::Name.first_name
# # last name
# FFaker::Name.last_name
# # phone number
# FFaker::PhoneNumber.phone_number
# # email
# FFaker::Internet.email

50.times do 
    first_name = FFaker::Name.first_name
    last_name = FFaker::Name.last_name
    email = "#{first_name}.#{last_name}@gmail.com"
   contact1 = Contact.new(first_name:first_name, last_name:last_name, phone_number:FFaker::PhoneNumber.phone_number, email:email)
  contact1.save
end