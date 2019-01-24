class HealthCheck < ApplicationRecord
  validates :note, presence: true
end
