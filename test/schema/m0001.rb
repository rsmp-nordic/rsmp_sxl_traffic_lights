require 'sus'
require_relative '../support/validate'

describe 'M0001' do
  let(:message) do
    {
      'mType' => 'rSMsg',
      'mId' => '4173c2c8-a933-43cb-9425-66d4613731ed',
      'type' => 'CommandRequest',
      'siteId' => [{ 'sId' => 'RN+SI0001' }],
      'cId' => 'O+14439=481WA001',
      'arg' => [
        {
          'cCI' => 'M0001',
          'n' => 'status',
          'cO' => 'setValue',
          'v' => 'YellowFlash'
        }
      ]
    }
  end

  it 'accepts valid command' do
    expect(validate(message)).to be_nil
  end

  it 'catches bad value' do
    message['arg'].first['v'] = 'bad'
    expect(validate(message)).to be == [['/arg/0/v', 'enum']]
  end

  it 'catches bad name' do
    message['arg'].first['n'] = 'bad'
    expect(validate(message)).to be == [['/arg/0/n', 'enum']]
  end

  it 'catches bad status values' do
    message['arg'].first['n'] = 'status'
    message['arg'].first['v'] = 'bad'
    expect(validate(message)).to be == [['/arg/0/v', 'enum']]
  end

  it 'accepts timeout strings' do
    message['arg'].first['n'] = 'timeout'
    message['arg'].first['v'] = 'bad'
    expect(validate(message)).to be_nil
  end

  it 'accepts intersection strings' do
    message['arg'].first['n'] = 'intersection'
    message['arg'].first['v'] = 'bad'
    expect(validate(message)).to be_nil
  end
end
