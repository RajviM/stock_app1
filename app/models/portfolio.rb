class Portfolio < ActiveRecord::Base
  has_many :investments
  worth =0
  def worth_at_cost

    @portfolio.investments.each do |x|
      worth=worth+x.worth_at_cost
    end
    return worth


  end
  worth1 =0
  def worth_today

    investments.each do |x|
      worth=worth+x.worth_today
    end
    return worth
    end

    def show_profit
      if(worth-worth1<0)
        return "Profit"
      else
        return "loss"
        end
      end



  end
end
