module MyFlexboxHelper
	["md","xs","lg","sm"].each do |device|
		1..13.times do |val|
			define_method("grid_#{device}_#{val}") do |args = {}, &block|
				args[:class] = "#{args[:class]} col-#{device}-#{val}"
				attrs = args.map {|k,v| "#{k}='#{v}' " }.join(" ")
				html_generator attrs, block 
			end
		end
	end
	def html_generator attrs_string, block
		html= "<div #{attrs_string}>" \
					"<div class='box'>" \
					"#{capture(&block) unless block.nil?}" \
					"</div></div>"
		html.html_safe
	end
	def grid args = {},&block
		[:xs,:sm,:md,:lg].each do |device|
			if args.has_key? device
				args[:class] =  "#{args[:class]} col-#{device}-#{args[device]}"
			end
		end
		attrs = args.except!(:md,:lg,:xs,:sm).map {|k,v| "#{k}='#{v}' " }.join(" ")
		html_generator attrs, block
	end
end