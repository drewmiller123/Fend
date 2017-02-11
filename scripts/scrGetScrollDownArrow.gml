///scrGetScrollDownArrow()
    //changes current arrow when scrolling

switch(currentArrow)
{
    case objArrow:
        if(lightningUpgrade)
        {
            r = true;//currentArrow = objLightningArrow;
        }
        else if(frostUpgrade)
        {
            e = true;//currentArrow = objIceArrow;
        }
        else if(fireUpgrade)
        {
            w = true;//currentArrow = objFireArrow;
        }
    break;
    case objFireArrow:
        q = true;//currentArrow = objArrow;
    break;
    case objIceArrow:
        w = true;//currentArrow = objFireArrow;
    break;
    case objLightningArrow:
        e = true;//currentArrow = objIceArrow;
    break;
}
