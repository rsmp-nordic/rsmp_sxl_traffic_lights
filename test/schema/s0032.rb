require 'sus'
require_relative '../support/validate'

describe 'S0032' do
  let(:request) do
    {
      'mType' => 'rSMsg',
      'type' => 'StatusRequest',
      'mId' => 'c764a831-e3c9-4b01-a938-2171fb3d9bbd',
      'ntsOId' => 'KK+AG9998=001TC000',
      'xNId' => '',
      'cId' => 'KK+AG9998=001TC000',
      'sS' => [
        { 'sCI' => 'S0032', 'n' => 'intersection' },
        { 'sCI' => 'S0032', 'n' => 'status' },
        { 'sCI' => 'S0032', 'n' => 'source' }
      ]
    }
  end

  let(:response) do
    {
      'mType' => 'rSMsg',
      'type' => 'StatusResponse',
      'mId' => '56fcfe6b-a07e-4a87-bf9f-4ecd76a805a7',
      'ntsOId' => 'KK+AG9998=001TC000',
      'xNId' => '',
      'cId' => 'KK+AG9998=001TC000',
      'sTs' => '2021-12-13T11:11:07.317Z',
      'sS' => [
        { 'sCI' => 'S0032', 'n' => 'intersection', 's' => '0', 'q' => 'recent' },
        { 'sCI' => 'S0032', 'n' => 'status', 's' => 'local', 'q' => 'recent' },
        { 'sCI' => 'S0032', 'n' => 'source', 's' => 'calendar_clock', 'q' => 'recent' }
      ]
    }
  end

  it 'accepts valid request and response' do
    expect(validate(request)).to be_nil
    expect(validate(response)).to be_nil
  end
end
