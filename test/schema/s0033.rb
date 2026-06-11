require 'sus'
require_relative '../support/validate'

describe 'S0033' do
  let(:request) do
    {
      'mType' => 'rSMsg',
      'type' => 'StatusRequest',
      'mId' => 'f1a13213-b90a-4abc-8953-2b8142923c55',
      'ntsOId' => 'KK+AG9998=001TC000',
      'xNId' => '',
      'cId' => 'KK+AG9998=001TC000',
      'sS' => [{ 'sCI' => 'S0033', 'n' => 'status' }]
    }
  end

  def priority_items
    [
      { 'r' => 'f90c', 't' => '2021-11-09T15:06:38.796Z', 's' => 'received' },
      { 'r' => 'uhnv', 't' => '2021-11-09T15:04:12.348Z', 's' => 'completed', 'e' => '5', 'd' => '10' },
      { 'r' => 'oh0i', 't' => '2021-11-09T15:06:38.796Z', 's' => 'activated' },
      { 'r' => 'f90c', 't' => '2021-11-09T15:06:39.796Z', 's' => 'completed' },
      { 'r' => '3ia2', 't' => '2021-11-09T15:06:48.796Z', 's' => 'queued' },
      { 'r' => '5hc0', 't' => '2021-11-09T15:06:48.796Z', 's' => 'timeout' }
    ]
  end

  def status_message(type, value)
    {
      'mType' => 'rSMsg',
      'type' => type,
      'mId' => 'f1a13213-b90a-4abc-8953-2b8142923c55',
      'ntsOId' => 'KK+AG9998=001TC000',
      'xNId' => '',
      'cId' => 'KK+AG9998=001TC000',
      'sTs' => '2021-12-13T11:11:07.317Z',
      'sS' => [
        { 'sCI' => 'S0033', 'n' => 'status', 'q' => 'recent', 's' => value }
      ]
    }
  end

  it 'accepts valid request, response, empty response, and update' do
    expect(validate(request)).to be_nil
    expect(validate(status_message('StatusResponse', priority_items))).to be_nil
    expect(validate(status_message('StatusResponse', []))).to be_nil
    expect(validate(status_message('StatusUpdate', priority_items))).to be_nil
  end
end
