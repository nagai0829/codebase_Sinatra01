require 'sinatra'
require 'sinatra/reloader'


get "/hello" do
    puts "<h1>こんにちは！</h1>"
  end

get "/how_are_you" do
  return "<h1>調子はどう？</h1>"
end
  
get "/im_good" do
  return "<h1>僕は元気だよ！</h1>"
end
  
get "/" do
  return "<h1>トップページです！</h1>"
end


get "/menu" do
    menu = ["カフェラテ", "コーヒー"]
    return "<h1>注文は#{menu[0]}と#{menu[1]}です！</h1>"
  end
  
  get "/loop" do
    menu = ["カフェラテ", "コーヒー"]
    menu.push "カステラ"
  
    html = ""
  
    menu.each do |m|
      html += "<h1>メニューは#{m}</h1>"
    end
  
    return html
  end
  
  get "/wallet" do
    wallet = 100
  
    if wallet > 300
      return "<h1>アイスを買いに行こう！</h1>"
    else
      return "<h1>川沿いを散歩しよう！</h1>"
    end
  end


get "/mypage/:name" do
    return "<h1>ようこそ！#{params[:name]}さん！<h1>"
  end


get "/search" do
    return "<h1>ようこそ！#{params[:name]}さん、「#{params[:word]}」で検索します！</h1>"
  end


get "/mypage/:name" do
    return erb :mypage 
  end