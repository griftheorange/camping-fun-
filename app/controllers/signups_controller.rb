class SignupsController < ApplicationController
    def create
        camper = Camper.find(params[:camper_id])
        w = params.require(:signup).permit(:activity, :time)
        camper_id = camper.id
        activity_id = w[:activity]
        time = w[:time]
        s = Signup.create(camper_id: camper_id, activity_id: activity_id, time: time)
        if s.errors.empty?
            redirect_to camper
        else
            redirect_to "/campers/#{camper.id}/activity"
        end
    end
end
