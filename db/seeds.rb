require 'faker'

10.times do
  usertest = User.create(name: Faker::Name.name, password: "password")
  5.times do
    surveytest = usertest.surveys.create(title: Faker::Commerce.department, image: "https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/mountains.png")
    4.times do
      questiontest = surveytest.questions.create(question_desc: Faker::Lorem.word)
      3.times do
        questiontest.answers.create(answer_text: Faker::Name.title)
      end
    end
  end
end




# "https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/mountains.png"