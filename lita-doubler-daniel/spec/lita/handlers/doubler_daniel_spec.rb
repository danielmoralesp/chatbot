require "spec_helper"

describe Lita::Handlers::DoublerDaniel, lita_handler: true do
  describe 'routing' do
    it { is_expected.to route('Lita double 2') }
    it { is_expected.to route('Lita double     22') }
    it { is_expected.to route('Lita doUble 4') }

    it { is_expected.to_not route('Lita double two') }
    it { is_expected.to_not route('Lita double 1e4') }

  end
end
