module Rtl
  class Core
    # Formal full names for RTL languages.
    RTL_FULL_NAME = ["Adlam", "Arabic", "Arabic (Nastaliq variant)", "Imperial Aramaic", "Avestan", "Cypriot", "Egyptian demotic", "Egyptian hieratic", "Hatran", "Hebrew", "Old Hungarian (Hungarian Runic)", "Indus (Harappan)", "Kharoshthi", "Lydian", "Mandaic, Mandaean", "Manichaean", "Mende Kikakui", "Meroitic Cursive", "Meroitic Hieroglyphs", "Old North Arabian (Ancient North Arabian)", "Nabataean", "N’Ko", "Old Turkic, Orkhon Runic", "Palmyrene", "Inscriptional Pahlavi", "Psalter Pahlavi", "Book Pahlavi", "Phoenician", "Inscriptional Parthian", "Samaritan", "Old South Arabian", "Syriac", "Syriac (Estrangelo variant)", "Syriac (Western variant)", "Syriac (Eastern variant)", "Thaana", "Woleai"]

    # ISO 15924 codes for RTL languages.
    RTL_ISO_CODES = %W[Adlm Arab Aran Armi Avst Cprt Egyd Egyh Hatr Hebr Hung Inds Khar Lydi Mand Mani Mend Merc Mero Narb Nbat Nkoo Orkh Palm Phli Phlp Phlv Phnx Prti Samr Sarb Syrc Syre Syrj Syrn Thaa Wole]
    # ISO 15924 numbers for RTL languages.
    RTL_ISO_NUMBER = %W[166 160 161 124 134 403 070 060 127 125 176 610 305 116 140 139 438 101 100 106 159 165 175 126 131 132 133 115 130 123 105 135 138 137 136 170 480]
    # Unicode alias names for RTL languages.
    RTL_UNICODE_ALIAS = ["Adlam", "Arabic", "", "Imperial Aramaic", "Avestan", "Cypriot", "", "", "Hatran", "Hebrew", "Old Hungarian", "", "Kharoshthi", "Lydian", "Mandaic", "Manichaean", "Mende Kikakui", "Meroitic Cursive", "Meroitic Hieroglyphs", "Old North Arabian", "Nabataean", "NKo", "Old Turkic", "Palmyrene", "Inscriptional Pahlavi", "Psalter Pahlavi", "", "Phoenician", "Inscriptional Parthian", "Samaritan", "Old South Arabian", "Syriac", "", "", "", "Thaana", ""]

    def initialize
    end

    def rtl?
    end

    def rtl_langs
    end

  end
end
