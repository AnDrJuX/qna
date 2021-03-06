require 'rails_helper'

RSpec.describe Answer, type: :model do
  it {should validate_presence_of :body}
  it {should belong_to(:question)}
  it {should validate_length_of(:body).is_at_least(5).on(:create)}

  describe '#check_best' do
    let(:user) {create(:user)}
    let(:question) {create(:question, user: user)}
    let(:answer) {create(:answer, question: question, user: user)}

    it 'change attribute best to true' do
      answer.check_best
      expect(answer).to be_best
    end

    #it 'if there is another better answer, it ceases to be the best.' do
      #expect(page).to have_content 'Now your answer is the best.'
    #end
  end
end