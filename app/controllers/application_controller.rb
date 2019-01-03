class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

   def current_patient
     if session[:patient_id]
       Patient.find(session[:user_id])
     else
       Patient.new
     end
   end

   def logged_in?
     !!current_patient.id
   end

   def authorized?
     if !logged_in?
       flash[:authorized] = "you are not logged in"
       redirect_to login_path and return
     end
   end

   def authorized_for(target_patient_id)
     if current_patient.id != target_patient_id.to_i && current_patient.admin != true
       flash[:authorized] = "You cannot view a page that does not belong to you!"
       redirect_to welcome_index_path
     end
   end
end
