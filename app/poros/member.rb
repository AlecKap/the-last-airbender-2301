class Member
  attr_reader :id,
              :allies,
              :enemies,
              :photourl,
              :name,
              :affiliation

  def initialize(attrs)
    @id = attrs[:_id]
    @allies = attrs[:allies]
    @enemies = attrs[:enemies]
    @photourl = attrs[:photoUrl]
    @name = attrs[:name]
    @affiliation = attrs[:affiliation]
  end
end