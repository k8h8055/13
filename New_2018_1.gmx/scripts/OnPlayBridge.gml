/// OnPlayBridge(_xspd,onGround_scale)
// Bridge
if !(place_meeting(x - sign(argument0) + (argument1 * 1), y + 15, oBridgeSegment)) {
DIRECTION_Y = 0;
}
    if (place_meeting(x, y + 1, oBridgeSegment)) {
        if (place_meeting(x + sign(argument0) + (argument1 * 1), y , O_Block_Parent)) {
          
            // 5 pixel bridge slope
            if (place_meeting(x + sign(argument0) + (argument1 * 1), y - 4 , O_Block_Parent) 
            && place_meeting(x + sign(argument0) + (argument1 * 1), y - 3 , O_Block_Parent) 
            && place_meeting(x + sign(argument0) + (argument1 * 1), y - 2 , O_Block_Parent) 
            && place_meeting(x + sign(argument0) + (argument1 * 1), y - 1 , O_Block_Parent)) {
            if (!place_meeting(x + sign(argument0) + (argument1 * 1), y - 5 , O_Block_Parent))
            y -= 5;
            DIRECTION_Y = 10;
            }
            
            // 4 pixel bridge slope
            if (place_meeting(x + sign(argument0) + (argument1 * 1), y - 3 , O_Block_Parent) 
            && place_meeting(x + sign(argument0) + (argument1 * 1), y - 2 , O_Block_Parent) 
            && place_meeting(x + sign(argument0) + (argument1 * 1), y - 1 , O_Block_Parent)) {
                if (!place_meeting(x + sign(argument0) + (argument1 * 1), y - 4 , O_Block_Parent))
                    {y -= 4;DIRECTION_Y = 10;}
                  
            }
           
            // 3 pixel bridge slope
            if (place_meeting(x + sign(argument0) + (argument1 * 1), y - 2 , O_Block_Parent) && place_meeting(x + sign(argument0) + (argument1 * 1), y - 1 , O_Block_Parent)) {
                if (!place_meeting(x + sign(argument0) + (argument1 * 1), y - 3 , O_Block_Parent))
                    {y -= 3;DIRECTION_Y = 10;}
                   
            }
        }
    
    }

    // End bridge   
    
    // UP slope
if (place_meeting(x + sign(argument0) + (argument1 * 1), y , O_Block_Parent) && place_meeting(x + sign(argument0) + (argument1 * 1), y - 1 , O_Block_Parent) && !(place_meeting(x + sign(argument0) + (argument1 * 1), y - 2 , O_Block_Parent))) {
        y -= 2;DIRECTION_Y = 10;
    } else if (place_meeting(x + sign(argument0) + (argument1 * 1), y , O_Block_Parent) && !place_meeting(x + sign(argument0) + (argument1 * 1), y - 1 , O_Block_Parent)) {
        --y;DIRECTION_Y = 10;
    }
                      
    // DOWN slope
    if (!place_meeting(x + sign(argument0) + (argument1 * 1), y , O_Block_Parent) && !place_meeting(x + sign(argument0) + (argument1 * 1), y + 1 , O_Block_Parent) && !place_meeting(x + sign(argument0) + (argument1 * 1), y + 2 , O_Block_Parent) && place_meeting(x + sign(argument0) + (argument1 * 1), y + 3 , O_Block_Parent))
        {y += 2;DIRECTION_Y = 10;}
    else if (!place_meeting(x + sign(argument0) + (argument1 * 1), y , O_Block_Parent) && !place_meeting(x + sign(argument0) + (argument1 * 1), y + 1 , O_Block_Parent) && place_meeting(x + sign(argument0) + (argument1 * 1), y + 2 , O_Block_Parent))
        {++y;DIRECTION_Y = 10;}

