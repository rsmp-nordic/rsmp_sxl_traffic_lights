require 'sus'
require_relative '../support/validate'

describe 'S0018' do
  let(:message) do
    {
      'mType' => 'rSMsg',
      'mId' => '4173c2c8-a933-43cb-9425-66d4613731ed',
      'type' => 'StatusRequest',
      'cId' => 'O+14439=481WA001',
      'sTs' => '2015-06-08T09:15:18.266Z',
      'sS' => [
        { 'sCI' => 'S0018', 'n' => 'number' }
      ]
    }
  end

  it 'rejects removed status code' do
    expect(validate(message)).to be == [['/sS/0/sCI', 'enum']]
  end
end
