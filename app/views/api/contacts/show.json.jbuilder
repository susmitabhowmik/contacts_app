json.partial! "contact.json.jbuilder", contact: @contact
json.formatted do
  json.updated_at @contact.friendly_updated_at
  json.full_name @contact.full_name
end