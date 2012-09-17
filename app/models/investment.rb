class Investment < ActiveRecord::Base

  belongs_to :portfolio
  belongs_to :company
validate:quantity_positive

  def   quantity_positive
       if quantity<0
         errors.add :quantity, 'should be positive'
       end
  end
validate:cost_positive

def   cost_positive
  if cost<0
    errors.add :cost, 'should be positive'
  end
end
  def worth_at_cost
       worth=quantity*cost
    return worth
  end
  def worth_today
    worth=quantity*company.price
  end

end
