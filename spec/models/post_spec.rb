require "rails_helper"

RSpec.describe Post, type: :model do
  describe "バリデーション" do
    context "データが条件を満たすとき" do
      it "保存可能" do
        expect(FactoryBot.create(:post)).to be_valid
      end
    end

    context "titleが空のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:post, title: "")).to_not be_valid
      end
    end

    context "titleが51文字以上のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:post, title: "a" * 51)).to_not be_valid
      end
    end

    context "contentが空のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:post, content: "")).to_not be_valid
      end
    end

    context "contentが1001文字以上のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:post, content: "a" * 1001)).to_not be_valid
      end
    end
  end
end
