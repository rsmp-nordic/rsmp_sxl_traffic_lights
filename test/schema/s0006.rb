require 'sus'
require_relative '../support/validate'

describe 'S0006' do
  let(:message) do
    {
      'mType' => 'rSMsg',
      'mId' => '4173c2c8-a933-43cb-9425-66d4613731ed',
      'type' => 'StatusResponse',
      'cId' => 'O+14439=481WA001',
      'sTs' => '2015-06-08T09:15:18.266Z',
      'sS' => [
        { 'sCI' => 'S0006', 'n' => 'emergencystage', 's' => '1', 'q' => 'recent' },
        { 'sCI' => 'S0006', 'n' => 'status', 's' => 'True', 'q' => 'recent' }
      ]
    }
  end

  it 'accepts active and inactive route status' do
    message['sS'][1]['s'] = 'True'
    expect(validate(message)).to be_nil
    message['sS'][1]['s'] = 'False'
    expect(validate(message)).to be_nil
  end

  it 'accepts emergency route 0' do
    message['sS'][0]['s'] = '0'
    expect(validate(message)).to be_nil
  end

  it 'accepts empty route strings' do
    message['sS'][0]['s'] = ''
    expect(validate(message)).to be_nil
  end

  it 'requires route to be a string' do
    message['sS'][0]['s'] = nil
    expect(validate(message)).to be == [['/sS/0/s', 'string']]
    message['sS'][0]['s'] = 1234
    expect(validate(message)).to be == [['/sS/0/s', 'string']]
  end
end
