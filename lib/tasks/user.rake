namespace :user do
  desc "generate articles"
  task generate_articles: :environment do
    ApinytJob.perform_now
  end

end
