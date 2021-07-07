module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :ensure_normal_user, only: %i[update destroy]

    def update; end

    def destroy; end

    def ensure_normal_user
      redirect_to root_path, alert: "ゲストユーザーの更新・削除はできません。" if resource.email == "guest@example.com"
    end

    protected

    def after_update_path_for(_resource)
      mypage_path(current_user)
    end
  end
end
