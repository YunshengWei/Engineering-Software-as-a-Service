class Dessert
  attr_accessor :name, :calories  

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    return @calories < 200
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    super(5, @flavor + " jelly bean")
  end

  def delicious?
    return flavor != "licorice"
  end
end
