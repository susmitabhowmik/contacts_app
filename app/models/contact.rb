class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_groups
  has_many :groups, :through => :contact_groups


  # validates :first_name, presence:true
  # validates :last_name, presence:true
  # validates :email, uniqueness:true
  # validates :email, format: {with: /\w+@\w+.\w+/,
  #   message: "has an invalid format"}

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
