class ApinytJob < ApplicationJob
  queue_as :default

require 'json'
require 'open-uri'

  def perform
    # --------------------- NEW YORK TIMES --------------------------
    nytimeskey = "iwQGATb3B3YA6GzsZkG0zxVV4JLqnf96"

    # --------------------- NYT - Food & Cooking --------------------------
    category_nyt = "Food"
    tag = "vegan"
    url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{category_nyt}&fq=#{tag}&api-key=#{nytimeskey}"
    user_serialized = open(url).read
    articles = JSON.parse(user_serialized)

    articles["response"]["docs"][0..4].each do |article|
      id_for_test = article["_id"]
      unless Article.where(id_from_source: id_for_test).any?
        Article.create!(
          source: "NYT",
          url: article["web_url"],
          title: article["headline"]["main"],
          category_id: 1,
          upvote: (0..100).to_a.sample,
          id_from_source: article["_id"]
        )
      end
    end

    # --------------------- NYT - Climate Change --------------------------
    category_nyt = "Climate"
    tag = "emissions"
    url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{category_nyt}&fq=#{tag}&api-key=#{nytimeskey}"
    user_serialized = open(url).read
    articles = JSON.parse(user_serialized)

    articles["response"]["docs"][0..4].each do |article|
      id_for_test = article["_id"]
      unless Article.where(id_from_source: id_for_test).any?
        Article.create!(
          source: "NYT",
          url: article["web_url"],
          title: article["headline"]["main"],
          category_id: 11,
          upvote: (0..100).to_a.sample,
          id_from_source: article["_id"]
        )
      end
    end



  end
end
