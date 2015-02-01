class Reviewer
  # friends who have added their recommendations to this list

  attr_reader :name, :relation, :id

  def initialize(args)
    @id          = args[:id]
    @name        = args[:name]
    @relation    = args[:relation]
  end

  def to_s
    'name: #{@name}, relation: #{@relation}'
  end
end
