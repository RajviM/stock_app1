class Company < ActiveRecord::Base
  validate:symbol_length

  def   symbol_length
    if symbol.length!=3
      errors.add :symbol, 'Symbol should be of length 3 or 4'
    end
  end

end
