///scrGetScrollUpArrow()
    //changes current arrow when scrolling

switch(currentArrow)
{
    case objArrow:
        if(fireUpgrade)
        {
            w = true;//currentArrow = objFireArrow;
        }
    break;
    case objFireArrow:
        if(frostUpgrade)
        {
            e = true;//currentArrow = objIceArrow;
        }
        else
        {
            q = true;//currentArrow = objArrow;
        }
    break;
    case objIceArrow:
        if(lightningUpgrade)
        {
            r = true;//currentArrow = objLightningArrow;
        }
        else
        {
            q = true;//currentArrow = objArrow;
        }
    break;
    case objLightningArrow:
        q = true;//currentArrow = objArrow;
    break;
}
