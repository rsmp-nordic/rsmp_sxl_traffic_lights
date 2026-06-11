require 'sus'
require_relative '../support/validate'

describe 'M0022' do
  let(:message) do
    {
      'mType' => 'rSMsg',
      'type' => 'CommandRequest',
      'mId' => 'e4e9668a-b562-4fbe-9c1e-d4a30733ddea',
      'ntsOId' => 'KK+AG9998=001TC000',
      'xNId' => '',
      'cId' => 'KK+AG9998=001TC000',
      'arg' => [
        { 'cCI' => 'M0022', 'n' => 'requestId', 'cO' => 'requestPriority', 'v' => 'f90c' },
        { 'cCI' => 'M0022', 'n' => 'connectionId', 'cO' => 'requestPriority', 'v' => '5' },
        { 'cCI' => 'M0022', 'n' => 'type', 'cO' => 'requestPriority', 'v' => 'new' },
        { 'cCI' => 'M0022', 'n' => 'level', 'cO' => 'requestPriority', 'v' => '14' },
        { 'cCI' => 'M0022', 'n' => 'eta', 'cO' => 'requestPriority', 'v' => '20' },
        { 'cCI' => 'M0022', 'n' => 'vehicleType', 'cO' => 'requestPriority', 'v' => 'bus' }
      ]
    }
  end

  it 'accepts valid command' do
    expect(validate(message)).to be_nil
  end
end
