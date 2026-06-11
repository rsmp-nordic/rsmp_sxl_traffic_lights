require 'sus'
require_relative '../support/validate'

describe 'M0023' do
  let(:message) do
    {
      'mType' => 'rSMsg',
      'type' => 'CommandRequest',
      'mId' => 'e4e9668a-b562-4fbe-9c1e-d4a30733ddea',
      'ntsOId' => 'KK+AG9998=001TC000',
      'xNId' => '',
      'cId' => 'KK+AG9998=001TC000',
      'arg' => [
        { 'cCI' => 'M0023', 'n' => 'securityCode', 'cO' => 'setTimeout', 'v' => '0000' },
        { 'cCI' => 'M0023', 'n' => 'status', 'cO' => 'setTimeout', 'v' => '30' }
      ]
    }
  end

  it 'accepts valid command' do
    expect(validate(message)).to be_nil
  end
end
