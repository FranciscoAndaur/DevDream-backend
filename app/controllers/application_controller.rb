class ApplicationController < ActionController::API
    include ActionController::Cookies

    def temp
        
        render json: {testing: session[:dummy]}
    end
end
