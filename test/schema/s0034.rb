require 'sus'
require_relative '../support/validate'

describe 'S0034' do
  let(:request) do
    {
      'mType' => 'rSMsg',
      'type' => 'StatusRequest',
      'mId' => 'f1a13213-b90a-4abc-8953-2b8142923c55',
      'ntsOId' => 'KK+AG9998=001TC000',
      'xNId' => '',
      'cId' => 'KK+AG9998=001TC000',
      'sS' => [{ 'sCI' => 'S0034', 'n' => 'status' }]
    }
  end

  let(:response) do
    {
      'mType' => 'rSMsg',
      'type' => 'StatusResponse',
      'mId' => 'c4064647-65c8-4ebd-aa41-e52576329d8e',
      'ntsOId' => 'KK+AG9998=001TC000',
      'xNId' => '',
      'cId' => 'KK+AG9998=001TC000',
      'sTs' => '2021-12-13T11:55:13.399Z',
      'sS' => [
        { 'sCI' => 'S0034', 'n' => 'status', 's' => '30', 'q' => 'recent' }
      ]
    }
  end

  it 'accepts valid request and response' do
    expect(validate(request)).to be_nil
    expect(validate(response)).to be_nil
  end
end
