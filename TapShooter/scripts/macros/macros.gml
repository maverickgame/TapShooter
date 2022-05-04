// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_macros()
{
	#macro CELL_WIDTH 32
	#macro CELL_HEIGHT 32
	#macro FLOOR -5
	#macro WALL -6
	#macro VOID -7

	#macro NORTH 1
	#macro WEST 2
	#macro EAST 4
	#macro SOUTH 8
}

function grid_place_meeting(argument0, argument1)
{
	var _object = argument0;
	var _grid = argument1;

	var _top_right = _grid[# (_object.bbox_right-1) div CELL_WIDTH, _object.bbox_top div CELL_HEIGHT] == VOID;
	var _top_left = _grid[# _object.bbox_left div CELL_WIDTH, _object.bbox_top div CELL_HEIGHT] == VOID;
	var _bottom_right = _grid[# (_object.bbox_right-1) div CELL_WIDTH, (_object.bbox_bottom-1) div CELL_HEIGHT] == VOID;
	var _bottom_left = _grid[# _object.bbox_left div CELL_WIDTH, (_object.bbox_bottom-1) div CELL_HEIGHT] == VOID;


	return _top_right || _top_left || _bottom_right || _bottom_left;


}

function round_n(argument0, argument1) 
{
	var _value = argument0;
	var _increment = argument1;
	return(round(_value / _increment) * _increment);
}
