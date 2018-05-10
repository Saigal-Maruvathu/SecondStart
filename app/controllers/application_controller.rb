class ApplicationController < ActionController::Base
	 #skip_before_action :authenticate_user!
protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token
	#  def respond_modal_with(*args, &blk)
  #   options = args.extract_options!
  #   options[:responder] = ModalResponder
  #   respond_with *args, options, &blk
  # end
    include PostsHelper
end
