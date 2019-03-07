json.array! @contacts.each do |contact|
  json.partial! "contact.json.jbuilder", contact: contact
  json.formatted do
    json.japanese_phone_number contact.japanese_phone_number_prefix
  end
end