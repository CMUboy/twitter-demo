class TwilioController < ApplicationController
  def sms
    # Do something with params['From'] -- contains the phone number the SMS came from
    # Do something with params['Body'] -- contains the text sent in the SMS
    logger.info params['From']
    logger.info params['Body']

    # <Reponse/> is the minimum to indicate a "no response" from Twilio
    render xml: "<Response/>"
  end
end
