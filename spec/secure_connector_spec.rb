# frozen_string_literal: true

require 'securerandom'
require './secure_connector'

RSpec.describe SecureConnector do
  let(:secure_connector) { SecureConnector.new }
  let(:secret_key) { SecureRandom.hex(1) }

  describe '#connect!' do
    context 'successfull connection' do
      it 'connects and connected is true' do
        secure_connector.connect!(secret_key)
        expect(secure_connector.connected?).to eq(true)
      end
    end

    context 'errors' do
      it 'raises error on connection' do
        expect { secure_connector.connect!(nil) }.to raise_error(
          StandardError, 'No Secret Key -- Cannot Connect!'
        )
      end
    end
  end
end
