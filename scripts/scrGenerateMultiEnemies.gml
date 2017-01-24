///scrGenerateMultiEnemies(); //Populates enemies[] with enemies for each wave up through enemies[numWaves]

wavePos = 0;

while(wavePos < numWaves)
{
    enemies[wavePos] = "";
    j = 0;
    numMages = 0;
    numWaveEnemies = max(max(1,((day-1) div 10)), irandom(maxEnemies) + irandom((day-1) div 10))*objServer.numClients;
    //determine how many bosses to spawn based on number of players
    if(day mod 10 == 0)
    {
        numBosses = scrGetNumBosses();
    }
    while(j < numWaveEnemies)
    {
        j++;
        enemies[wavePos] += scrGetNextMultiEnemy();
        
    }
    
    wavePos++;
}
