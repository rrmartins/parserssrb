#!/bin/env ruby
# encoding: utf-8

require './test/test_helper'

class ParseRssTest < Test::Unit::TestCase

  def setup
    @url = "http://golangweekly.com/rss/1g2bo910"
    @parserss = Parse::Rss.new(@url)
  end

  def test_title
    assert_equal @parserss.get_title, "Go Newsletter"
  end

  def test_description
    assert_equal @parserss.get_description, "A weekly newsletter about the Go programming language"
  end

  def test_link
    assert_equal @parserss.get_link, "http://golangweekly.com/"
  end

  def test_categories
    assert_equal @parserss.get_categories, ["No have Categories"]
  end

  def test_total_items
    assert_equal @parserss.get_total_items, 4
  end

end
