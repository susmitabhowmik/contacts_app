class Contact < ApplicationRecord
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :email, uniqueness:true
  def friendly_updated_at
    created_at.strftime("%b %e, %l:%M %p")
  end

  def full_name
    p "#{first_name} #{middle_name} #{last_name}"
  end

  def japanese_phone_number_prefix
    p "+81 #{phone_number}"
  end
end
