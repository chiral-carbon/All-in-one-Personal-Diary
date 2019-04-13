require "Exercise47/game.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

    def test_room()
        gold = Room.new("GoldRoom",
                    """This room has gold in it you can grab. There's a
                door to the north.""")
        assert_equal("GoldRoom", gold.name)
        assert_equal({}, gold.paths)
    end

    def test_room_paths()
        center = Room.new("Center", "Test room in the center.")
        north = Room.new("North", "Test room in the north.")
        south = Room.new("South", "Test room in the south.")

        center.add_paths({'north'=> north, 'south'=> south})
        assert_equal(north, center.go('north'))
        assert_equal(south, center.go('south'))

    end
end 