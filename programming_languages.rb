def reformat_languages(languages)
  # your code here
  hash = {}
  languages.each do |style, langs|
      hash = hash.merge(langs) {|key, v1, v2| v1}
      langs.keys.each do |language|
        hash[language][:style] = [] if hash[language][:style] == nil
        hash[language][:style] << style
      end
  end
  hash
end
