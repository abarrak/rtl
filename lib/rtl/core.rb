module Rtl
  # Formal full names for RTL languages.
  FULL_NAMES = ["Adlam", "Arabic", "Arabic (Nastaliq variant)", "Imperial Aramaic", "Avestan",
                "Cypriot", "Egyptian demotic", "Egyptian hieratic", "Hatran", "Hebrew",
                "Old Hungarian (Hungarian Runic)", "Indus (Harappan)", "Kharoshthi", "Lydian",
                "Mandaic, Mandaean", "Manichaean", "Mende Kikakui", "Meroitic Cursive",
                "Meroitic Hieroglyphs", "Old North Arabian (Ancient North Arabian)",
                "Nabataean", "N’Ko", "Old Turkic, Orkhon Runic", "Palmyrene",
                "Inscriptional Pahlavi", "Psalter Pahlavi", "Book Pahlavi", "Phoenician",
                "Inscriptional Parthian", "Samaritan", "Old South Arabian", "Syriac",
                "Syriac (Estrangelo variant)", "Syriac (Western variant)",
                "Syriac (Eastern variant)", "Thaana", "Woleai", "Persian", "Kurdish"]

  # ISO 639 codes for RTL languages.
  # If a language has 639-1 and 639-2 codes, both are included.
  ISO_CODES = ["ar", "ara", "arc", "ae", "ave", "egy", "he", "heb", "nqo", "pal", "phn", "sam",
               "syc", "syr", "fa", "per", "fas", "ku", "kur"]

  # ISO 15924 codes for RTL languages.
  ISO_LONG_CODES = ['Adlm', 'Arab', 'Aran', 'Armi', 'Avst', 'Cprt', 'Egyd', 'Egyh', 'Hatr',
                    'Hebr', 'Hung', 'Inds', 'Khar', 'Lydi', 'Mand', 'Mani', 'Mend', 'Merc',
                    'Mero', 'Narb', 'Nbat', 'Nkoo', 'Orkh', 'Palm', 'Phli', 'Phlp', 'Phlv',
                    'Phnx', 'Prti', 'Samr', 'Sarb', 'Syrc', 'Syre', 'Syrj', 'Syrn', 'Thaa',
                    'Wole']

  # ISO 15924 numbers for RTL languages.
  ISO_NUMBERS = ['166', '160', '161', '124', '134', '403', '070', '060', '127', '125', '176',
                 '610', '305', '116', '140', '139', '438', '101', '100', '106', '159', '165',
                 '175', '126', '131', '132', '133', '115', '130', '123', '105', '135', '138',
                 '137', '136', '170', '480']

  # Unicode alias names for RTL languages.
  # Not all ISO languages has this alias.
  UNICODE_ALIASES = ["Adlam", "Arabic", "Imperial Aramaic", "Avestan", "Cypriot",
                     "Hatran", "Hebrew", "Old Hungarian", "Kharoshthi", "Lydian", "Mandaic",
                     "Manichaean", "Mende Kikakui", "Meroitic Cursive", "Meroitic Hieroglyphs",
                     "Old North Arabian", "Nabataean", "NKo", "Old Turkic", "Palmyrene",
                     "Inscriptional Pahlavi", "Psalter Pahlavi", "Phoenician",
                     "Inscriptional Parthian", "Samaritan", "Old South Arabian", "Syriac",
                     "Thaana"]

  # Query whether a language is rtl or not.
  def self.rtl? language, scheme = :iso_code
    sch = scheme.to_sym
    l = language.to_s.strip

    case sch
      when :iso_code
        self.iso_codes l
      when :iso_long_code
        self.iso_long_codes l
      when :iso_number
        self.iso_numbers l
      when :unicode_alias
        self.unicode_aliases l
      when :full_name
        self.full_names l
      when :all
        self.all l
      else
        raise ArgumentError.new "Unknown base value #{base}."
    end
  end

  # Get a list of languages by scheme
  def self.rtl_languages scheme = :iso_code
    sch = scheme.to_s
    s = sch.end_with?('s') ? 'ES' : 'S'
    member = "#{sch.upcase}#{s}".to_sym

    begin
      self.const_get member
    rescue NameError
      raise ArgumentError.new "Unknown Supplied scheme #{sch}."
    end
  end

  private

    def self.iso_codes lang
      ISO_CODES.include? lang.downcase
    end

    def self.iso_long_codes lang
      ISO_LONG_CODES.include? lang.capitalize
    end

    def self.iso_numbers lang
      ISO_NUMBERS.include? lang
    end

    def self.full_names lang
      FULL_NAMES.map(&:capitalize).include? lang.capitalize
    end

    def self.unicode_aliases lang
      UNICODE_ALIASES.map(&:downcase).include? lang.downcase
    end

    def self.all lang
      iso_codes(lang)  || iso_long_codes(lang) || iso_numbers(lang) ||
      full_names(lang) || unicode_aliases(lang)
    end
end
