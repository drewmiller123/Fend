///scrGenerateEnemies(); //Populates enemies[] with enemies for each wave up through enemies[numWaves]

wavePos = 0;

while(wavePos < numWaves)
{
    enemies[wavePos] = "";
    j = 0;
    numMages = 0;
    numWaveEnemies = max(max(1,((day-1) div 10)), irandom(maxEnemies) + irandom((day-1) div 10));
    while(j < numWaveEnemies)
    {
        j++;
        enemies[wavePos] += scrGetNextEnemy();
        
    }
    
    wavePos++;
}
