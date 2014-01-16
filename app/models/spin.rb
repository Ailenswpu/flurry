class Spin < ActiveRecord::Base
  include Util
  scope :range_win_ratio , ->(r1,r2){ where("win_ratio >= ? and win_ratio <= ?",r1,r2) }
  
  def update_time
    self.update_attributes(timestamp: Time.parse(self.timestamp))
  end
  
  def self.top_10_user
    Spin.all.group(:userid).count.sort_by{|k,v| -v}.first 10
  end
  
  def self.user_to_hash(userid,begin_time,end_time)
    Spin.where(userid: userid,timestamp: begin_time..end_time).map{|spin| [spin.virtual_time,spin.coins]}
  end
  
end

