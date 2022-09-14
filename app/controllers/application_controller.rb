class ApplicationController < ActionController::Base
  before_action :set_request_variant

  def set_request_variant
    if request.user_agent.downcase =~ /android|blackberry|iphone|ipod|iemobile|mobile|webos/
      request.variant = :mobile 
    else
     request.variant = :default
    end
  end
end
