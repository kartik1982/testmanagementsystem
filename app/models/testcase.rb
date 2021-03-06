class Testcase < ApplicationRecord
  belongs_to :testsuite
  validates :testcaseID, presence: true, uniqueness:true, length: {minimum: 5, maximum:50}
  validates :description, length: {minimum: 5, maximum:100}
  validates :runmode, presence:true
end
