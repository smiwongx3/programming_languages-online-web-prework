def reformat_languages(languages)
  language_attributes = {}

  languages.each do |oo_or_functional, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if language_attributes[language].nil?
          #if language :ruby doesn't exist in new hash
          language_attributes[language] = {}  #initiate a new hash for the value of :ruby
        end
        language_attributes[language][:style] ||= []  
        language_attributes[language][:style] << oo_or_functional     
        if language_attributes[language][attribute].nil?
          language_attributes[language][attribute] = str_value  
        end
      end
    end
  end
  language_attributes
end
