require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    let(:params) {{name: "ohori"}}
    it "年齢１:ユーザーのなまえを取得可" do
      params.merge!(age:1)
      user = User.new(params)
      expect(user.disp_name).to eq "ohoriちゃん"
    end
    it "年齢15:ユーザーのなまえを取得可" do
      params.merge!(age:15)
      user = User.new(params)
      expect(user.disp_name).to eq "ohori君"
    end
    it "年齢20:ユーザーのなまえを取得可" do
      params.merge!(age:20)
      user = User.new(params)
      expect(user.disp_name).to eq "ohoriさん"
    end
  end
end
