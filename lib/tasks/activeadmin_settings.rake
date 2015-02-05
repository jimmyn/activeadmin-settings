# encoding: UTF-8

namespace :activeadmin do
  namespace :settings do
    desc "Add settings from activeadmin_settings.yml file to the db"
    task :flush => :environment do
      ActiveadminSettings::Setting.find_each(&:destroy)
    end
  end
end