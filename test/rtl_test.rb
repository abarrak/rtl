require 'test_helper'

class RtlTest < Minitest::Test
  include Rtl

  def setup
    @iso_codes        = Rtl::ISO_CODES
    @iso_long_codes   = Rtl::ISO_LONG_CODES
    @iso_numbers      = Rtl::ISO_NUMBERS
    @unicode_aliases  = Rtl::UNICODE_ALIASES
    @full_names       = Rtl::FULL_NAMES
    @wrong_lang       = ["en", "fr", "de", "Spanish", 420]
  end

  def test_respond_corretly_for_iso_codes
    @iso_codes.each do |code|
      assert Rtl.rtl? code
      assert Rtl.rtl? code.to_sym, :iso_code
    end

    @wrong_lang.each { |w| assert !Rtl.rtl?(w) }
  end

  def test_respond_corretly_for_iso_long_codes
    @iso_long_codes.each do |long_code|
      assert Rtl.rtl? long_code, :iso_long_code
      assert Rtl.rtl? long_code.to_sym, :iso_long_code
    end

    @wrong_lang.each { |w| assert !Rtl.rtl?(w, :iso_long_code) }
  end

  def test_respond_corretly_for_iso_numbers
    @iso_numbers.each do |iso_num|
      assert Rtl.rtl? iso_num, :iso_number
      assert Rtl.rtl? iso_num.to_sym, :iso_number
    end

    @wrong_lang.each { |w| assert !Rtl.rtl?(w, :iso_number) }
  end

  def test_respond_corretly_for_unicode_aliases
    @unicode_aliases.each do |u_alias|
      assert Rtl.rtl? u_alias, :unicode_alias
      assert Rtl.rtl? u_alias.to_sym, :unicode_alias
    end

    @wrong_lang.each { |w| assert !Rtl.rtl?(w, :unicode_alias) }
  end

  def test_respond_corretly_for_full_names
    @full_names.each do |full_name|
      assert Rtl.rtl? full_name, :full_name
      assert Rtl.rtl? full_name.to_sym, :full_name
    end

    @wrong_lang.each { |w| assert !Rtl.rtl?(w, :full_name) }
  end

  def test_can_make_exhasutive_search
    [@iso_codes, @iso_long_codes, @iso_numbers, @unicode_aliases, @full_names].each do |set|
      set.each do |el|
        assert Rtl.rtl? el, :all
        assert Rtl.rtl? el.to_sym, :all
      end
    end

    @wrong_lang.each { |w| assert !Rtl.rtl?(w, :all) }
  end

  def test_get_iso_codes_languages
    assert_equal Rtl.rtl_languages, @iso_codes
    assert_equal Rtl.rtl_languages(:iso_code), @iso_codes
  end

  def test_get_iso_long_codes_languages
    assert_equal Rtl.rtl_languages(:iso_long_code), @iso_long_codes
  end

  def test_get_iso_numbers_languages
    assert_equal Rtl.rtl_languages(:iso_number), @iso_numbers
  end

  def test_get_unicode_aliases_languages
    assert_equal Rtl.rtl_languages(:unicode_alias), @unicode_aliases
  end

  def test_get_full_names_languages
    assert_equal Rtl.rtl_languages(:full_name), @full_names
  end

  def test_get_report_invalid_scheme_arg
    [:langs, :iso].each do |arg|
      assert_raises(ArgumentError) { Rtl.rtl_languages arg }
    end
  end
end
