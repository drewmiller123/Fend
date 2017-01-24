///scrSpawnEnemies(waveNum)
//spawns enemies wave
with(objEnemyWave)
{
    if(waveNum == argument0)
    {
        var type = scrGetEnemyType(enemyType);
        for(i=0; i<enemyNum; i++)
        {
            //var inst = instance_create(room_width - (room_width-display_get_width())/enemyNum*i,988,type);
            var inst = instance_create(room_width - (room_width-view_wview[0])/2,988,type);
            with(inst)
            {
                y-=sprite_height/2;
                while(place_meeting(x,y,objEnemyParent))
                {
                    x += sprite_width;
                }
            }
        }
        instance_destroy();
    }    
}
