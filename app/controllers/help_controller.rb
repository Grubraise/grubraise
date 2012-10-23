class HelpController < ApplicationController

def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restuarant }
    end
end

end
