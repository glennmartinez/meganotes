class LabelsController < ApplicationController
	autocomplete :label, :name, :full => true


def index

	@labels = Label.all

	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @labels }
  end
	
end


def new
	@label = Label.new

	respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @label }
  end
	
end

def create

	@label = Label.new(params[:label])

	respond_to do |format|
     if @label.save
      format.html { redirect_to (@label)}
      format.json
      else
        #flash[:alert] = "Label has not been created."
       format.html {render :action => "new"} 
       format.json
      end
  end
	
end

 def show
    @label = Label.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @label }
    end
  end

end
