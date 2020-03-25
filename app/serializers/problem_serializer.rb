class ProblemSerializer < ActiveModel::Serializer
  attributes :id, :question, :choice1, :choice2, :choice3, :choice4, :answer
  has_one :test
end
