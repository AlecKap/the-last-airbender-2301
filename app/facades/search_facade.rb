class SearchFacade
  def initialize(query)
    @query = query
  end

  def nation_members
    nation_members_data[0..24].map { |member_data| Member.new(member_data) }
  end

  def nation_members_count
    nation_members_data.size
  end

  private

  def service
    @_service ||= TlabService.new
  end

  def nation_members_data
    @_nation_members_data ||= service.members_by_nation(@query)
  end
end