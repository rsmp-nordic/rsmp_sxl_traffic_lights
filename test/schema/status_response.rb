require 'sus'
require_relative '../support/validate'

describe 'StatusResponse' do
  let(:message) do
    {
      'mType' => 'rSMsg',
      'mId' => '4173c2c8-a933-43cb-9425-66d4613731ed',
      'type' => 'StatusResponse',
      'cId' => 'O+14439=481WA001',
      'sTs' => '2015-06-08T09:15:18.266Z',
      'sS' => [
        { 'sCI' => 'S0003', 'n' => 'inputstatus', 's' => '100101', 'q' => 'recent' }
      ]
    }
  end

  it 'accepts valid message' do
    expect(validate(message)).to be_nil
  end

  it 'accepts valid message with q=undefined and s=nil' do
    message['sS'].first['q'] = 'undefined'
    message['sS'].first['s'] = nil
    expect(validate(message)).to be_nil
  end
end
