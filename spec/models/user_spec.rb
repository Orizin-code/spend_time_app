require "rails_helper"

RSpec.describe User, type: :model do
  describe "バリデーション" do
    context "データが条件を満たすとき" do
      it "保存可能" do
        expect(FactoryBot.create(:user)).to be_valid
      end
    end

    context "usernameが空のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:user, username: "")).to_not be_valid
      end
    end

    context "usernameが26文字以上のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:user, username: "a" * 26)).to_not be_valid
      end
    end

    context "passwordが空のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:user, password: "")).to_not be_valid
      end
    end

    context "passwordが17文字以上のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:user, password: "a" * 17)).to_not be_valid
      end
    end

    context "passwordに使用出来ない文字が含まれているとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:user, password: "pass$%&!()")).to_not be_valid
      end
    end

    context "password_confirmationとpasswordが異なるとき" do
      it "保存不可" do
        expect(FactoryBot.build(:user, password: "password", password_confirmation: "passward")).to_not be_valid
      end
    end

    context "emailが空のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:user, email: "")).to_not be_valid
      end
    end

    context "emailが重複しているとき" do
      it "登録不可" do
        user1 = FactoryBot.create(:user, username: "taro", email: "taro@example.com")
        expect(FactoryBot.build(:user, username: "ziro", email: user1.email)).to_not be_valid
      end
    end

    context "emailが256文字以上のとき" do
      it "登録不可" do
        expect(FactoryBot.build(:user, email: "a" * 256)).to_not be_valid
      end
    end

    context "emailに使用出来ない文字が含まれているとき" do
      it "登録不可" do
        expect(FactoryBot.build(:user, email: "test%$=~+@example.com")).to_not be_valid
      end
    end

    context "emailに@マークがないとき" do
      it "登録不可" do
        expect(FactoryBot.build(:user, email: "testexample.com")).to_not be_valid
      end
    end
  end
end
