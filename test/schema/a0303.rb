require 'sus'
require_relative '../support/validate'

describe 'A0303' do
  let(:message) do
    {
      'mType' => 'rSMsg',
      'type' => 'Alarm',
      'mId' => 'efb6a4c5-f2ea-4947-9deb-667756926203',
      'ntsOId' => 'KK+AG9998=001TC000',
      'xNId' => '',
      'cId' => 'KK+AG9998=001DL001',
      'aCId' => 'A0303',
      'xACId' => 'ERROR DETECTOR LOGIC OPEN #1',
      'xNACId' => '',
      'aSp' => 'Issue',
      'ack' => 'notAcknowledged',
      'aS' => 'Active',
      'sS' => 'notSuspended',
      'aTs' => '2021-12-13T09:35:25.602Z',
      'cat' => 'D',
      'pri' => '2',
      'rvs' => [
        { 'n' => 'detector', 'v' => '1' },
        { 'n' => 'type', 'v' => 'loop' },
        { 'n' => 'errormode', 'v' => 'on' },
        { 'n' => 'manual', 'v' => 'True' }
      ]
    }
  end

  it 'accepts valid alarm' do
    expect(validate(message)).to be_nil
  end
end
