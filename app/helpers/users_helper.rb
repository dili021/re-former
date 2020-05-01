module UsersHelper
    def param_filter
        params.require(:user).permit(:username, :email, :password)
    end

    def param_filter2
        params.permit(:username, :email, :password)
    end
end
