///liquid_update(id)
/*
    Updates the liquid object (stop this executing if you want a pause)
    
    ARGUMENTS
        id - real - id of liquid object
*/
global._argument0 = argument0;
_argument0 = argument0;
    //cycle through the wave wobble
    if instance_exists(global._argument0){
    global._argument0.liquidwaveangle += global._argument0.liquidwavespeed;
    
    var lldelt, lrdelt, ldiff, exec, i;
    
    //loop through to manipulate each node
    for (i = 0; i < global._argument0.liquidnodes; i += 1)
    {
        //get y differences between surrounding nodes, checking for edge nodes
        if (global._argument0.liquidsides) //edge movement is on
        {
            if ((i-1 <= -1)) //if current node is the leftmost edge
            {
                //only use values from right side for movement
                lldelt = (global._argument0.y-global._argument0.liquidarray[i, 0]);
                lrdelt = (global._argument0.liquidarray[i+1, 0]-global._argument0.liquidarray[i, 0]);
                ldiff = (0+global._argument0.liquidarray[i+1, 1]);
            }
            else if (i+1 >= global._argument0.liquidnodes) //if node is the rightmost edge
            {
                //only use values from left side for movement
                lldelt = (global._argument0.liquidarray[i-1, 0]-global._argument0.y);
                lrdelt = (global._argument0.liquidarray[i+1, 0]-global._argument0.liquidarray[i, 0]);
                ldiff = (global._argument0.liquidarray[i-1, 1]+0);
            }
            else // if node is in middle
            {
                //use values from both sides for movement
                lldelt = (global._argument0.liquidarray[i-1, 0]-global._argument0.liquidarray[i, 0]);
                lrdelt = (global._argument0.liquidarray[i+1, 0]-global._argument0.liquidarray[i, 0]);
                ldiff = (global._argument0.liquidarray[i-1, 1]+global._argument0.liquidarray[i+1, 1]);
            }
            exec = 1;
        }
        else //edge movement is off
        {
            //get y differences between surrounding nodes
            lldelt = (global._argument0.liquidarray[i-1, 0]-global._argument0.liquidarray[i, 0]);
            lrdelt = (global._argument0.liquidarray[i+1, 0]-global._argument0.liquidarray[i, 0]);
            ldiff = (global._argument0.liquidarray[i-1, 1]+global._argument0.liquidarray[i+1, 1]);
            
            //if current node is an edge node, dont execue movement, else do
            exec = ((i-1 > -1) && (i+1 < global._argument0.liquidnodes));
        }
        
        //actually move nodes, if node is in middle (or at edge and edge movement is set)
        if (exec)
        {
            //move node based on other nodes (transfer waves energy to self)
            global._argument0.liquidarray[i, 1] += (lldelt+lrdelt+ldiff)/(global._argument0.liquidfactor*global._argument0.liquidspring);
            
            //move based on y position
            global._argument0.liquidarray[i, 1] += ((global._argument0.y) - (global._argument0.liquidarray[i, 0]))/(global._argument0.liquidfactor*global._argument0.liquidspring)
            global._argument0.liquidarray[i, 2] = (global._argument0.liquidarray[i, 1])/(global._argument0.liquidfactor/global._argument0.liquidfriction);
            global._argument0.liquidarray[i, 1] -= global._argument0.liquidarray[i, 2];
            global._argument0.liquidarray[i, 3] = (dsin(global._argument0.liquidwaveangle+global._argument0.liquidarray[i, 4])*global._argument0.liquidwaveamount)*is_even(i);

            //move the current node
            global._argument0.liquidarray[i, 0] += global._argument0.liquidarray[i, 1] + moveSpd;
            
            //
            //
            // The following code snippet is unrelated to the water manipulation //////////////////
            
            // Update floater
            if instance_exists(oFloater){
            with (oFloater) {           
                node = ((x + sprite_width * 0.5) - global._argument0.x) / 16;
                _argument0 = global._argument0;
                
                if instance_exists(pool[id]){
                if (((pool[id].liquid.id)) == other._argument0 && abs(node - i) < 1) {
                    pyp = oFloater.phy_position_y;
                    phy_position_y = ystart + (global._argument0.ystart - global._argument0.liquidarray[i, 0]); //global._argument0.liquidarray[i, 0])  - (sprite_height * 0.5)
                }
            }
            }
            }
            
            ///////////////////////////////////////////////////////////////////////////////////////
            //
            // End floater code
        }
    }
    }
