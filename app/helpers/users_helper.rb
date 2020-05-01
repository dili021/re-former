module UsersHelper
    def param_filter
        params.require(:user).permit(:username, :email, :password)
    end
end
