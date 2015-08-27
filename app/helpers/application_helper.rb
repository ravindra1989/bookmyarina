module ApplicationHelper
	def resource_name
  :user
	end

	def resource
	  @resource ||= User.new
	end

	def devise_mapping
	  @devise_mapping ||= Devise.mappings[:user]
	end

	def resource_class
	  devise_mapping.to
	end

	def devise_error_messages(flash)
		flashes = []
    flash.each do |name, msg|
	    if msg.class == Array
	      msg.each do |message|
	      	flashes << content_tag(:div, message)
	      end
	    else
	      flashes << content_tag(:div, msg)
	    end
	  end
    flashes
  end
end
