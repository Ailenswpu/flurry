#encoding:utf-8

namespace :db do
  desc "Virtual Data"
  task :virtualdata => :environment do
    Spin.all.group(:userid).count.sort_by{|k,v| -v}.each do |s| 
      Spin.where(userid: s[0]).each_with_index do |spin,index|
        spin.update_attributes(virtual_time: (Time.parse(spin.timestamp) + (index+1).to_i*10.seconds).to_i
        )
      end
    end
  end
end