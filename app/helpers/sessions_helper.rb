module SessionsHelper
  
  
   # 引数に渡されたユーザーオブジェクトでログインします。
  def log_in
    sessions[:user_id] = user.id
  end  
end

   # 現在ログイン中のユーザーがいる場合オブジェクトを返します。
   def current user
     if session[:user_id]
       @current user ||= User.find_by(id:session[:user_id])
     end
   end   
