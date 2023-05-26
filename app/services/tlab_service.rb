class TlabService
  def members_by_nation(query)
    get_url("/api/v1/characters?affiliation=#{query}")
  end

  private

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end
end
