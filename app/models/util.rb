require 'csv'
class Util
  def import_csv_data path
    CSV.open(path,{:headers => true}).each do |row|
      save_row_database row
    end
  end

  def save_row_database row
    spin = Spin.new(
    timestamp: row[0],
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