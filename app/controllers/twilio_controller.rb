require "awesome_print"

class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token

  def sms
    # Do something with params['From'] -- contains the phone number the SMS came from
    # Do something with params['Body'] -- contains the text sent in the SMS
    logger.ap params, :info

    # <Reponse/> is the minimum to indicate a "no response" from Twilio
    render xml: "<Response/>"
  end
end
