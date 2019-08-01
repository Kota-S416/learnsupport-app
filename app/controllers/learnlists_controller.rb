class LearnlistsController < ApplicationController
    def index
      @learnlists = Learnlist.all
    end

    def new
        @learnlist = Learnlist.new
    end
    
    def create
        @learnlist = Learnlist.create(learnlist_params)
        redirect_to learnlists_path
    end
    
    def edit
        @learnlist = Learnlist.find(params[:id])
    end
    
    def update
        @learnlist = Learnlist.find(params[:id])
        @learnlist.update(learnlist_params)
        redirect_to learnlists_path
    end
    
    def destroy
        @learnlist = Learnlist.find(params[:id])
        @learnlist.destroy
        redirect_to learnlists_path
    end
    
    private
        def learnlist_params
          params.require(:learnlist).permit(:title, :range)
    end
end