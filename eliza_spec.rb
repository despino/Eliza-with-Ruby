require 'rspec'
require_relative 'eliza_questions'

# describe 'Response' do
#   it "should create the Response class" do
#     expect { Response }.to_not raise_error
#     # expect { Response }.to_not raise_error
#   end
# # end

# describe 'Response' do
#   describe "Dummies" do
#     p Response.get_dummies
#     it "is an array" do
#       expect(Response.get_dummies).to be_a(Array)
#     end
#     it "has three elements" do
#       expect(Response.get_dummies.length).to eq(3)
#     end
#   end
# describe 'Response' do
#   describe "Responses" do
#     p Response.get_answer("hurt")
#     it "should respond how has your health been" do
#       expect(Response.get_answer('hurt')).to eq("How has your health been?")
#       end
#     end
#   end


describe Response do
  describe 'Yelling mode' do
    it "should non-yelling when the Response starts up" do
      expect(Response.get_yelling_mode).to eq(false)
    end
  end

  # describe 'Yelling mode' do
  #   it "should not be yelling at start" do
  #     answer = Response.get_answer("mom")
  #     expect(answer.upcase).not_to eq(answer)
  #   end
  # end

  # describe 'Yelling mode' do
  #   it "should start yelling when there is a ! in the input" do
  #     answer = Response.get_answer("mom!")
  #     expect(Response.get_yelling_mode).to eq(true)
  #     expect(answer.upcase).to eq(answer)
  #   end
  # end

  # describe 'Yelling mode' do
  #   it "should stay in yelling mode after a ! in the input" do
  #     Response.get_answer("mom!") # because we are asking it to go into yelling mode by using the !
  #     answer = Response.get_answer("mom") # user responds w/out !, but we are still in yelling mode
  #     expect(Response.get_yelling_mode).to eq(true)
  #     expect(answer.upcase).to eq(answer)
  #   end
  # end

  describe 'Yelling mode' do
    it "should stop yelling after two questions with !s" do
      Response.get_answer("mom!")
      answer = Response.get_answer("mom!") # now the user responds with another ! and we exit yelling mode
      expect(answer.upcase).not_to eq(answer)
    end
  end
  describe 'Eliza limit' do
    it "should start saying 'next session..' after 10 Qs" do
      Response.get_answer("mom")
      Response.get_answer("mom")
      Response.get_answer("mom")
      Response.get_answer("mom")
      Response.get_answer("mom")
      Response.get_answer("mom")
      Response.get_answer("mom")
      Response.get_answer("mom")
      Response.get_answer("mom")
      Response.get_answer("mom")
      expect(Response.get_answer("mom")).to eq("Let's get in to that next session.")

    end
  end

end


# end # Final end of the whole document
