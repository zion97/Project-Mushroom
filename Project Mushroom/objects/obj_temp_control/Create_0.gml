/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _tile_tol	= layer_tilemap_get_id("tile_tol");
var _tile_map	= layer_tilemap_get_id("tile_map");
var _w = tilemap_get_width(_tile_tol);
var _h = tilemap_get_height(_tile_tol);

for (var _y = 0; _y < _h; _y++)
{
	for (var _x = 0; _x < _w; _x++)
	{
		var _p1	= tilemap_get(_tile_tol, _x-1, _y-1);
		var _p2	= tilemap_get(_tile_tol, _x, _y-1);
		var _p3	= tilemap_get(_tile_tol, _x+1, _y-1);
		var _p4	= tilemap_get(_tile_tol, _x-1, _y);
		var _p5	= tilemap_get(_tile_tol, _x, _y);
		var _p6	= tilemap_get(_tile_tol, _x+1, _y);
		var _p7	= tilemap_get(_tile_tol, _x-1, _y+1);
		var _p8	= tilemap_get(_tile_tol, _x, _y+1);
		var _p9	= tilemap_get(_tile_tol, _x+1, _y+1);
		
		if (_p5 == 0)
		{
			for (var _i = 0; _i < 4; _i++)
			{
				for (var _j = 0; _j < 4; _j++)
				{
					tilemap_set(_tile_map, 14, _x*4 + _i, _y*4 + _j);
				}
			}
		}
		else
		{
			tilemap_set(_tile_map, 1, _x*4 + 1, _y*4 + 1);
			tilemap_set(_tile_map, 1, _x*4 + 2, _y*4 + 1);
			tilemap_set(_tile_map, 1, _x*4 + 1, _y*4 + 2);
			tilemap_set(_tile_map, 1, _x*4 + 2, _y*4 + 2);
			
			//상단이 물
			if (_p2 == 0)
			{
				tilemap_set(_tile_map, 2, _x*4 + 1, _y*4);
				tilemap_set(_tile_map, 2, _x*4 + 2, _y*4);
				
				if (_p4 == 0)
				{
					tilemap_set(_tile_map, 6, _x*4 + 0, _y*4);
				}
				else
				{
					tilemap_set(_tile_map, 2, _x*4 + 0, _y*4);
				}
				
				if (_p6 == 0)
				{
					tilemap_set(_tile_map, 7, _x*4 + 3, _y*4);
				}
				else
				{
					tilemap_set(_tile_map, 2, _x*4 + 3, _y*4);
				}
			}
			else
			{
				tilemap_set(_tile_map, 1, _x*4 + 1, _y*4);
				tilemap_set(_tile_map, 1, _x*4 + 2, _y*4);
				
				if (_p4 == 0)
				{
					tilemap_set(_tile_map, 3, _x*4 + 0, _y*4);
				}
				else
				{
					if (_p1 == 0)
					{
						tilemap_set(_tile_map, 10, _x*4 + 0, _y*4);
					}
					else
					{
						tilemap_set(_tile_map, 1, _x*4 + 0, _y*4);
					}
				}
				
				if (_p6 == 0)
				{
					tilemap_set(_tile_map, 4, _x*4 + 3, _y*4);
				}
				else
				{
					if (_p3 == 0)
					{
						tilemap_set(_tile_map, 11, _x*4 + 3, _y*4);
					}
					else
					{
						tilemap_set(_tile_map, 1, _x*4 + 3, _y*4);
					}
				}
			}
			
			//하단이 물
			if (_p8 == 0)
			{
				tilemap_set(_tile_map, 5, _x*4 + 1, _y*4 + 3);
				tilemap_set(_tile_map, 5, _x*4 + 2, _y*4 + 3);
				
				if (_p4 == 0)
				{
					tilemap_set(_tile_map, 8, _x*4 + 0, _y*4 + 3);
				}
				else
				{
					tilemap_set(_tile_map, 5, _x*4 + 0, _y*4 + 3);
				}
				
				if (_p6 == 0)
				{
					tilemap_set(_tile_map, 9, _x*4 + 3, _y*4 + 3);
				}
				else
				{
					tilemap_set(_tile_map, 5, _x*4 + 3, _y*4 + 3);
				}
			}
			else
			{
				tilemap_set(_tile_map, 1, _x*4 + 1, _y*4 + 3);
				tilemap_set(_tile_map, 1, _x*4 + 2, _y*4 + 3);
				
				if (_p4 == 0)
				{
					tilemap_set(_tile_map, 3, _x*4 + 0, _y*4 + 3);
				}
				else
				{
					if (_p7 == 0)
					{
						tilemap_set(_tile_map, 12, _x*4 + 0, _y*4 + 3);
					}
					else
					{
						tilemap_set(_tile_map, 1, _x*4 + 0, _y*4 + 3);
					}
				}
				
				if (_p6 == 0)
				{
					tilemap_set(_tile_map, 4, _x*4 + 3, _y*4 + 3);
				}
				else
				{
					if (_p9 == 0)
					{
						tilemap_set(_tile_map, 13, _x*4 + 3, _y*4 + 3);
					}
					else
					{
						tilemap_set(_tile_map, 1, _x*4 + 3, _y*4 + 3);
					}
				}
			}
			
			//좌측이 물
			if (_p4 == 0)
			{
				tilemap_set(_tile_map, 3, _x*4 + 0, _y*4 + 1);
				tilemap_set(_tile_map, 3, _x*4 + 0, _y*4 + 2);
			}
			else
			{
				tilemap_set(_tile_map, 1, _x*4 + 0, _y*4 + 1);
				tilemap_set(_tile_map, 1, _x*4 + 0, _y*4 + 2);
			}
			
			//우측이 물
			if (_p6 == 0)
			{
				tilemap_set(_tile_map, 4, _x*4 + 3, _y*4 + 1);
				tilemap_set(_tile_map, 4, _x*4 + 3, _y*4 + 2);
			}
			else
			{
				tilemap_set(_tile_map, 1, _x*4 + 3, _y*4 + 1);
				tilemap_set(_tile_map, 1, _x*4 + 3, _y*4 + 2);
			}
		}
	}
}





