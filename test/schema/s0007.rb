require 'sus'
require_relative '../support/validate'

describe 'S0007' do
  let(:request) do
    {
      'mType' => 'rSMsg',
      'mId' => '4173c2c8-a933-43cb-9425-66d4613731ed',
      'type' => 'StatusRequest',
      'cId' => 'O+14439=481WA001',
      'sTs' => '2015-06-08T09:15:18.266Z',
      'sS' => [
        { 'sCI' => 'S0007', 'n' => 'intersection' },
        { 'sCI' => 'S0007', 'n' => 'status' }
      ]
    }
  end

  let(:response) do
    {
      'mType' => 'rSMsg',
      'mId' => '4173c2c8-a933-43cb-9425-66d4613731ed',
      'type' => 'StatusResponse',
      'cId' => 'O+14439=481WA001',
      'sTs' => '2015-06-08T09:15:18.266Z',
      'sS' => [
        { 'sCI' => 'S0007', 'n' => 'intersection', 's' => '0', 'q' => 'recent' },
        { 'sCI' => 'S0007', 'n' => 'status', 's' => 'True', 'q' => 'recent' }
      ]
    }
  end

  it 'accepts valid status request' do
    expect(validate(request)).to be_nil
  end

  it 'accepts one and two intersections' do
    expect(validate(response)).to be_nil
    response['sS'] = [
      { 'sCI' => 'S0007', 'n' => 'intersection', 's' => '1,2', 'q' => 'recent' },
      { 'sCI' => 'S0007', 'n' => 'status', 's' => 'True,True', 'q' => 'recent' }
    ]
    expect(validate(response)).to be_nil
  end

  it 'catches bad intersection lists' do
    ['1,2,', ',1,2', ',', '1,,2', '1,a'].each do |value|
      response['sS'] = [{ 'sCI' => 'S0007', 'n' => 'intersection', 's' => value, 'q' => 'recent' }]
      expect(validate(response)).to be == [['/sS/0/s', 'pattern']]
    end
  end

  it 'catches bad status lists' do
    ['True,False,', ',True,False', ',', 'True,,False', 'True,1'].each do |value|
      response['sS'] = [{ 'sCI' => 'S0007', 'n' => 'status', 's' => value, 'q' => 'recent' }]
      expect(validate(response)).to be == [['/sS/0/s', 'pattern']]
    end
  end
end
