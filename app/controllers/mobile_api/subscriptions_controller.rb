module MobileApi
  class SubscriptionsController < ApplicationController
    def index
      subscriptions = Subscription.all
      json_response subscriptions.as_json
    end


  end
end