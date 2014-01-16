require 'csv'
class Spin < ActiveRecord::Base
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
  
  
  def import_csv_data path
    CSV.open(path,{:headers => true}).each do |row|
      save_row_database row
    end
  end

  def save_row_database row
    spin = Spin.new(
    timestamp: Time.parse(row[0]),
    session_index: row[1],
    event: row[2],
    description: row[3],
    version: row[4],
    platform: row[5],
    device: row[6],
    userid: row[7],
    bet_max: row[8].split(";")[0].split(":")[1].strip,
    gems: row[8].split(";")[1].split(":")[1].strip,
    level: row[8].split(";")[2].split(":")[1].strip,
    coins: row[8].split(";")[3].split(":")[1].strip,
    win_ratio: row[8].split(";")[4].split(":")[1].strip,
    spin_mode: row[8].split(";")[5].split(":")[1].strip,
    bet_amount: row[8].split(";")[6].split(":")[1].strip,
    bonus: row[8].split(";")[7].split(":")[1].strip,
    boost: row[8].split(";")[8].split(":")[1].strip,
    )
    spin.save
  end
end

