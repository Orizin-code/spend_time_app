require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "バリデーション" do
    context "データが条件を満たすとき" do
      it "保存可能" do
        expect(FactoryBot.build(:comment)).to be_valid
      end
    end

    context "commentが空のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:comment, content: "")).to_not be_valid
      end
    end

    context "commentが500文字のとき" do
      it "保存可能" do
        expect(FactoryBot.build(:comment, content: "a" * 500)).to be_valid
      end
    end

    context "commentが501文字以上のとき" do
      it "エラーが発生する" do
        expect(FactoryBot.build(:comment, content: "a" * 501)).to_not be_valid
      end
    end
  end
end
