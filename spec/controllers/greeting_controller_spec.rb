require 'controllers/greeting_controller'
require 'json'

describe GreetingController do
  subject(:greet_ctrl) do
    GreetingController.new
  end

  it 'is not nil' do
    is_expected.not_to be nil
  end

  describe '#index' do
    let(:json_greeting) do
      {
        greet: "Hi there!"
      }.to_json
    end

    it 'responds a greeting in json format' do
      expect(greet_ctrl.index).to eql(json_greeting)
    end
  end
end
