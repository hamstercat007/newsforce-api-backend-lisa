module StoriesHelper
  BBC_NEWS = ["us-canada", "latin-america", "middle-east", "africa", "europe"]

  AFRICA = ["Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", "Cabo Verde", "Cameroon", "Central African Republic", "Chad", "Comoros", "Democratic Republic of the Congo", "Republic of the Congo", 'Cote d\'Ivoire', "Djibouti", "Egypt", "Equatorial Guinea", "Eritrea", "Ethiopia", "Gabon", "Gambia", "Ghana", "Guinea", "Guinea Bissau", "Kenya", "Lesotho", "Liberia", "Libya", "Madagascar", "Malawi", "Mali", "Mauritania", "Mauritius", "Morocco", "Mozambique", "Namibia", "Niger", "Nigeria", "Rwanda", "Sao Tome and Principe", "Senegal", "Seychelles", "Sierra Leone", "Somalia", "South Africa", "South Sudan", "Sudan", "Swaziland", "Tanzania", "Togo", "Tunisia", "Uganda", "Zambia", "Zimbabwe"]

  N_AMERICA = ["Antigua and Barbuda", "Bahamas", "Barbados", "Belize", "Canada", "Costa Rica", "Cuba", "Dominica", "Dominican Republic", "El Salvador", "Grenada", "Guatemala", "Haiti", "Honduras", "Jamaica", "Mexico", "Nicaragua", "Panama", "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Trinidad and Tobago", "United States of America", "USA", "United States"]

  S_AMERICA = ["Argentina", "Bolivia", "Brazil", "Chile", "Colombia", "Ecuador", "Guyana", "Paraguay", "Peru", "Suriname", "Uruguay", "Venezuela"]

  EUROPE = ["Albania", "Andorra", "Armenia", "Austria", "Azerbaijan", "Belarus", "Belgium", "Bosnia and Herzegovina", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Denmark", "Estonia", "Finland", "France", "Georgia", "Germany", "Greece", "Iceland", "Ireland", "Italy", "Kazakhstan", "Kosovo", "Latvia", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Malta", "Moldova", "Monaco", "Montenegro", "Netherlands", "Norway", "Poland", "Portugal", "Romania", "Russia", "San Marino", "Serbia", "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", "Turkey", "Ukraine", "United Kingdom", "Vatican City"]

  ASIA = ["Armenia", "Azerbaijan", "Bangladesh", "Bhutan", "Brunei", "Cambodia", "China", "Cyprus", "Georgia", "India", "Indonesia", "Japan", "Kazakhstan", "Kyrgyzstan", "Laos", "Malaysia", "Maldives", "Mongolia", "Myanmar", "Nepal", "North Korea", "Pakistan", "Philippines", "Russia", "Singapore", "South Korea", "Sri Lanka", "Taiwan", "Tajikistan", "Thailand", "Timor Leste", "Turkey", "Turkmenistan", "Uzbekistan", "Vietnam"]

  MIDDLE_EAST = ["Bahrain", "Iran", "Iraq", "Israel", "Jordan", "Kuwait", "Lebanon", "Oman", "Palestine", "Qatar", "Saudi Arabia", "Syria", "United Arab Emirates", "Yemen"]

  def self.add_to_tag_list(item)
    @tag_list = []
    if item["publisher"] == "BBC News"
      self.bbc_tags(item)
    end
    self.continental_scan(item)
    @tag_list.uniq!
    return @tag_list
  end

  def self.bbc_tags(item)
    BBC_NEWS.each do |tag|
      if item["source_url"].include? tag
        if tag == "latin-america"
          @tag_list << "south-america"
        elsif tag == "us-canada"
          @tag_list << "north-america"
        else
          @tag_list << tag
        end
      end
    end
  end

  def self.continental_scan(item)
    info = item["headline"] << item["sub_headline"] << item["article_body"]
    EUROPE.each do |eu_nation|
      @tag_list << "europe" if info.include? eu_nation
    end
    ASIA.each do |asia_nation|
      @tag_list << "asia" if info.include? asia_nation
    end
    MIDDLE_EAST.each do |me_nation|
      @tag_list << "middle-east" if info.include? me_nation
    end
    AFRICA.each do |af_nation|
      @tag_list << "africa" if info.include? af_nation
    end
    N_AMERICA.each do |na_nation|
      @tag_list << "north-america" if info.include? na_nation
    end
    S_AMERICA.each do |sa_nation|
      @tag_list << "south-america" if info.include? sa_nation
    end
  end
end
