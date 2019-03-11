class ApinytJob < ApplicationJob
  queue_as :default

require 'json'
require 'open-uri'

  def perform
    # --------------------- NEW YORK TIMES --------------------------
    nytimeskey = "iwQGATb3B3YA6GzsZkG0zxVV4JLqnf96"
    theguardiankey = "13a601cd-ff74-4179-bf87-969fdba0192b"
    newsapi = "1f20e8f9d59a42be91f8c25d9ab2baeb"


    # --------------------- NYT --------------------------

    categories = Category.all
    categories[0..4].each do |category|
      category_for_article = Category.find_by_name(category.name)

      category.tags.each do |tag|
        tag_for_article = Tag.find_by_name(tag.name)
        url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{tag.name}&fq=#{category.name_nyt}&api-key=#{nytimeskey}"
        user_serialized = open(url).read
        articles = JSON.parse(user_serialized)
        sleep 2

        articles["response"]["docs"][0..5].each do |article|
          p id_for_test = article["_id"]
          p image_for_article = article['multimedia'] == [] ? "no-img.png" : "https://www.nytimes.com/#{article['multimedia'][0]['url']}"
          unless Article.where(id_from_source: id_for_test).any?
            Article.create!(
              source: "NYT",
              url: article["web_url"],
              title: article["headline"]["main"],
              category: category_for_article,
              tag: tag_for_article,
              upvote: (0..100).to_a.sample,
              id_from_source: article["_id"],
              photo: image_for_article,
              pub_date: article["pub_date"].split("T").first
            )
            sleep 1
          end
        end
      end
    end


    # ----------------- The Guardian ----------------------

    # categories = Category.all
    # categories[0..1].each do |category|
    #   category_for_article = Category.find_by_name(category.name)

    # content = "food cooking sustainable"
    #   url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    #   user_serialized = open(url).read
    #   articles = JSON.parse(user_serialized)

    #   articles["response"]["results"][0..10].each do |article|
    #     id_for_test = article["id"]
    #     unless Article.where(id_from_source: id_for_test).any?
    #       Article.create!(
    #         source: "The Guardian",
    #         url: article["webUrl"],
    #         title: article["webTitle"],
    #         category: category_for_article,
    #         upvote: (0..100).to_a.sample,
    #         id_from_source: article["id"]
    #       )
    #     end
    #   end






    # category_for_article = Category.find_by_name("Food & Cooking")

    # category_nyt = "Food"
    # tag = "vegan"
    # url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{category_nyt}&fq=#{tag}&api-key=#{nytimeskey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["docs"][0..10].each do |article|
    #   id_for_test = article["_id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "NYT",
    #       url: article["web_url"],
    #       title: article["headline"]["main"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["_id"]
    #     )
    #   end
    # end

    # content = "food cooking sustainable"
    # url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["results"][0..10].each do |article|
    #   id_for_test = article["id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "The Guardian",
    #       url: article["webUrl"],
    #       title: article["webTitle"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["id"]
    #     )
    #   end
    # end

    # # --------------------- Travel & Commute --------------------------
    # category_for_article = Category.find_by_name("Travel & Commute")

    # category_nyt = "Travel"
    # tag = "co2 emissions"
    # url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{category_nyt}&fq=#{tag}&api-key=#{nytimeskey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["docs"][0..10].each do |article|
    #   id_for_test = article["_id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "NYT",
    #       url: article["web_url"],
    #       title: article["headline"]["main"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["_id"]
    #     )
    #   end
    # end


    # # --------------------- Energy --------------------------
    # category_for_article = Category.find_by_name("Energy")

    # category_nyt = "Energy"
    # tag = "climate change"
    # url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{category_nyt}&fq=#{tag}&api-key=#{nytimeskey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["docs"][0..10].each do |article|
    #   id_for_test = article["_id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "NYT",
    #       url: article["web_url"],
    #       title: article["headline"]["main"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["_id"]
    #     )
    #   end
    # end

    # content = "energy climate change"
    # url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["results"][0..10].each do |article|
    #   id_for_test = article["id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "The Guardian",
    #       url: article["webUrl"],
    #       title: article["webTitle"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["id"]
    #     )
    #   end
    # end

    # # --------------------- Waste & Recycling --------------------------
    # category_for_article = Category.find_by_name("Waste & Recycling")

    # content = "waste recycling"
    # url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["results"][0..10].each do |article|
    #   id_for_test = article["id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "The Guardian",
    #       url: article["webUrl"],
    #       title: article["webTitle"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["id"]
    #     )
    #   end
    # end

    # # --------------------- Politics & Activism --------------------------
    # category_for_article = Category.find_by_name("Politics & Activism")

    # content = "activism climate change"
    # url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["results"][0..10].each do |article|
    #   id_for_test = article["id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "The Guardian",
    #       url: article["webUrl"],
    #       title: article["webTitle"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["id"]
    #     )
    #   end
    # end

    # # --------------------- Technology --------------------------
    # category_for_article = Category.find_by_name("Technology")

    # content = "technology renewable energy"
    # url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["results"][0..10].each do |article|
    #   id_for_test = article["id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "The Guardian",
    #       url: article["webUrl"],
    #       title: article["webTitle"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["id"]
    #     )
    #   end
    # end

    # # --------------------- Shopping & Fashion --------------------------
    # category_for_article = Category.find_by_name("Shopping & Fashion")

    # category_nyt = "Fashion"
    # tag = "sustainability"
    # url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{category_nyt}&fq=#{tag}&api-key=#{nytimeskey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["docs"][0..10].each do |article|
    #   id_for_test = article["_id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "NYT",
    #       url: article["web_url"],
    #       title: article["headline"]["main"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["_id"]
    #     )
    #   end
    # end

    # content = "sustainable fashion"
    # url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["results"][0..10].each do |article|
    #   id_for_test = article["id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "The Guardian",
    #       url: article["webUrl"],
    #       title: article["webTitle"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["id"]
    #     )
    #   end
    # end

    # # --------------------- House & Building --------------------------
    # category_for_article = Category.find_by_name("House & Building")

    # content = "sustinable housing"
    # url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["results"][0..10].each do |article|
    #   id_for_test = article["id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "The Guardian",
    #       url: article["webUrl"],
    #       title: article["webTitle"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["id"]
    #     )
    #   end
    # end

    # # --------------------- Lifestyle --------------------------
    # # category_for_article = Category.find_by_name("Lifestye")

    # content = "lifestyle sustinable"
    # url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["results"][0..10].each do |article|
    #   id_for_test = article["id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "The Guardian",
    #       url: article["webUrl"],
    #       title: article["webTitle"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["id"]
    #     )
    #   end
    # end

    # # --------------------- Climate Change --------------------------
    # category_for_article = Category.find_by_name("Climate Change")

    # category_nyt = "Climate"
    # tag = "emissions"
    # url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{category_nyt}&fq=#{tag}&api-key=#{nytimeskey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["docs"][0..10].each do |article|
    #   id_for_test = article["_id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "NYT",
    #       url: article["web_url"],
    #       title: article["headline"]["main"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["_id"]
    #     )
    #   end
    # end

    # content = "climate change"
    # url = "https://content.guardianapis.com/search?q=#{content}&api-key=#{theguardiankey}"
    # user_serialized = open(url).read
    # articles = JSON.parse(user_serialized)

    # articles["response"]["results"][0..10].each do |article|
    #   id_for_test = article["id"]
    #   unless Article.where(id_from_source: id_for_test).any?
    #     Article.create!(
    #       source: "The Guardian",
    #       url: article["webUrl"],
    #       title: article["webTitle"],
    #       category: category_for_article,
    #       upvote: (0..100).to_a.sample,
    #       id_from_source: article["id"]
    #     )
    #   end
    # end
  end
end
