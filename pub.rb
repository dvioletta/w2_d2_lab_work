class Pub

attr_reader :name
attr_writer :total_till

  def initialize(name, total_till)
    @name = name
    @total_till = total_till
    @drinks = []
  end


end
