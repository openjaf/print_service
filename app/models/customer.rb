class Customer < ApplicationRecord

  belongs_to :organization
  accepts_nested_attributes_for :organization

  validates_presence_of :name, :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create


end
