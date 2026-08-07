class Employee < ApplicationRecord
  belongs_to :department
  belongs_to :manager, class_name: "Employee", optional: true
  has_many :direct_reports, class_name: "Employee", foreign_key: "manager_id"
  has_many :topics
end
