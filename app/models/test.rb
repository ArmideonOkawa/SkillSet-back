class Test < ApplicationRecord
  belongs_to :profession
  has_many :problems
end
