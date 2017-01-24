///scrDisplayCarnage()
var i = 0;
displayx = objCarnageReport.x - objCarnageReport.sprite_width/2 + 40;
displayy = objCarnageReport.y - objCarnageReport.sprite_height/4 + 30 + sprite_get_height("Enemies Defeated: ");
while(i < carnageTimer div carnageInterval)
{
    scrDisplayEnemy(carnageList[i]);
    i++;
}

/*if(accCheck != carnageTimer div carnageInterval)// && accCheck !=0)
{
    if(i < carnageCount)
    {
        scrAccumulateGold(carnageList[i]);
        accCheck = carnageTimer div carnageInterval;
    }
}*/


