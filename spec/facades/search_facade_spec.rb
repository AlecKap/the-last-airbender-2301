require 'rails_helper'

RSpec.describe SearchFacade do
  describe 'nation_members' do
    it 'returns an array of members for a particular nation' do
      query = 'Fire+Nation'
      members_facade = SearchFacade.new(query)
      nat_mems = members_facade.nation_members
      member = nat_mems.second

      expect(nat_mems).to be_an(Array)
      expect(nat_mems.first).to be_an(Member)

      expect(member.id).to be_a(String)
      expect(member.allies).to be_an(Array)
      expect(member.enemies).to be_an(Array)
      expect(member.photourl).to be_a(String)
      expect(member.name).to be_a(String)
      expect(member.affiliation).to be_a(String)
    end
  end

  describe 'nation_members_count' do
    it 'returns a count of the members for a particular nation' do
      query = 'Fire+Nation'
      members_facade = SearchFacade.new(query)

      expect(members_facade.nation_members_count).to be_an(Integer)
    end
  end
end
