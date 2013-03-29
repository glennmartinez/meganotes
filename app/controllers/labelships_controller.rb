class LabelshipsController < ApplicationController


def new

	@labelship.labels.build
	
end


def create

	@labelship = Label.new(params[:labelship])
	@label = Label.find(params[:label_id])

	@labelship.labels << @label

	@labelship.save
	
end


end
