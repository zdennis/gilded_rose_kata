#!/usr/bin/env ruby

$LOAD_PATH << "."
require File.dirname(__FILE__) + "/../gilded_rose"

# We use the setup in the spec rather than the following for testing.
#
Items = [
  Item.new("+5 Dexterity Vest", 10, 20),
  Item.new("Aged Brie", 2, 0),
  Item.new("Elixir of the Mongoose", 5, 7),
  Item.new("Sulfuras, Hand of Ragnaros", 0, 80),
  Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20),
  Item.new("Conjured Mana Cake", 3, 6),
]

(0..50).each do |day_number|
  puts "Day #{day_number}:\n========================================"
  Items.each do |item|
    puts item
  end
  update_quality Items
end
