///scrCreateCarnageObjects()
carIndex = 0;
if(displayx == 0 && displayy == 0)
{
    displayx = objCarnageReport.x - objCarnageReport.sprite_width/2 + 40;
    displayy = objCarnageReport.y - objCarnageReport.sprite_height/2 + 70 + sprite_get_height("Enemies Defeated: ");
}

while(carIndex < carnageTimer div carnageInterval)
{
    scrCreateEnemyCarnage(carnageList[carIndex]);
    carIndex++;
}

/*if(accCheck != carnageTimer div carnageInterval)// && accCheck !=0)
{
    if(i < carnageCount)
    {
        scrAccumulateGold(carnageList[i]);
        accCheck = carnageTimer div carnageInterval;
    }
}*/


