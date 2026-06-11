require 'sus'
require_relative '../support/validate'

describe 'S0003' do
  let(:message) do
    {
      'mType' => 'rSMsg',
      'mId' => '4173c2c8-a933-43cb-9425-66d4613731ed',
      'type' => 'StatusRequest',
      'cId' => 'O+14439=481WA001',
      'sTs' => '2015-06-08T09:15:18.266Z',
      'sS' => [
        { 'sCI' => 'S0003', 'n' => 'inputstatus' },
        { 'sCI' => 'S0003', 'n' => 'extendedinputstatus' }
      ]
    }
  end

  it 'rejects extended input status' do
    expect(validate(message)).to be == [['/sS/1/n', 'enum']]
  end
end
