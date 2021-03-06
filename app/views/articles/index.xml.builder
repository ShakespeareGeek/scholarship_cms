xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Articles"
    xml.description "Lots of articles"
    xml.link articles_url
    
    for article in @articles
      xml.item do
        xml.title article.title
        xml.description article.summary
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link article.url  
        xml.guid article.url  
      end
    end
  end
end