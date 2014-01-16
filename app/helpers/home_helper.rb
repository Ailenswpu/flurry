module HomeHelper
  def data
    ratio = Rails.cache.fetch('ratio', :expires_in => 24.hours){Spin.range_win_ratio(0,2)}
    ratio.map{|a| [a.win_ratio,a.bet_amount]}
  end
  
  def userdata userid
    Spin.user_to_hash(userid,Time.now.at_beginning_of_week,Time.now.at_end_of_week)
  end
end
