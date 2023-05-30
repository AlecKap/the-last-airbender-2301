require 'rails_helper'

RSpec.describe TlabService do
  context 'class methods' do
    context 'members_by_nation' do
      it 'returns data of members affiliated with a particular nation' do
        query = "Fire+Nation"
        members = TlabService.new.members_by_nation(query)
        member = members.second

        expect(members).to be_an(Array)
        expect(member).to be_an(Hash)

        expect(member).to have_key(:_id)
        expect(member).to have_key(:allies)
        expect(member).to have_key(:enemies)
        expect(member).to have_key(:photoUrl)
        expect(member).to have_key(:name)
        expect(member).to have_key(:affiliation)

        expect(member[:_id]).to be_a(String)
        expect(member[:allies]).to be_an(Array)
        expect(member[:enemies]).to be_an(Array)
        expect(member[:photoUrl]).to be_a(String)
        expect(member[:name]).to be_a(String)
        expect(member[:affiliation]).to be_a(String)
      end
    end
  end
end