class TimetablesController < ApplicationController
    def index
      @timetables = Timetable.all
    end
  
    def new
      @timetable = Timetable.new
    end

    def create
        @timetable = Timetable.create(timetable_params)
        redirect_to timetables_path
    end
    
    def edit
        @timetable = Timetable.find(params[:id])
    end
    
    def update
        @timetable = Timetable.find(params[:id])
        @timetable.update(timetable_params)
        redirect_to timetables_path
    end

    def destroy
        @timetable = Timetable.find(params[:id])
        @timetable.destroy
        redirect_to timetables_path
    end    

    private
    def timetable_params
        params.require(:timetable).permit(:dayofweek, :hour, :title, :place, :numofattend)
    end
end  