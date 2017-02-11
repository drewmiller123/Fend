///scrDrawPlayerToBuffer()        //Stores all of the sprites for Player-controlled Objects in buffer to send to clients



///////////////Arrows/////////////////////////////
scrDrawPlayerObjectToBuffer(objArrowParent);

/////////////////LightningArcs////////////////////
//scrDrawObjectToBuffer(objArcDraw);
//scrDrawObjectToBuffer(objArcPoint);


////////////Defenders///////////////////
scrDrawPlayerObjectToBuffer(objArcherParent);
scrDrawPlayerObjectToBuffer(objBowParent);


///////////Reticles/////////////////////
if(room == rmMultiBattleField)
{
    scrDrawPlayerObjectToBuffer(objReticle);
    scrDrawPlayerObjectToBuffer(objClientReticle);
}













