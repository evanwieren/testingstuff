class PagesController < ApplicationController
  #require 'lol'
  def index
    client = Lol::Client.new Rails.application.secrets.lol_api_key, {region: "na"}

    foo = client.static.champion.get

    puts foo.class
    puts foo.count

    foo = client.static.champion.get(id=90, champData: 'all')
    @foo_yaml = foo.to_yaml

  end
end
