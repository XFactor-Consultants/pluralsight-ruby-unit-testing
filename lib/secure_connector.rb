# frozen_string_literal: true

class SecureConnector
  attr_accessor :connected

  def connect!(secret_key)
    if secret_key.nil?
      @connected = false
      raise StandardError, 'No Secret Key -- Cannot Connect!'
    else
      @connected = true
    end
  end

  def connected?
    connected
  end
end
