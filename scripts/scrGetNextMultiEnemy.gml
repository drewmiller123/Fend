///scrGetNextMultiEnemy(); //generates an enemy to add to the current wave

if (day mod 10 == 0)
{
    if(wavePos == numWaves-1)
    {
        numWaveEnemies = 1;
        randomize();
        return choose("d", "i", "z");
    }
    else if(wavePos == round(numWaves/2) && numBosses >= 2)
    {
        numWaveEnemies = 1;
        randomize();
        return choose("d", "i", "z");
    }
    else if(wavePos == 0 && numBosses == 3)
    {
        numWaveEnemies = 1;
        randomize();
        return choose("d", "i", "z");
    }
    else if(wavePos >= numWaves - 3)
    {
        numWaveEnemies = max(numWaveEnemies,3*objServer.numClients);
    }   
    else
    {
        randomize();
        var toughChance = random(1);
        if(toughChance > .95)
        {
            randomize();
            return choose("t", "n");
        }
    }
}
else if(day mod 10 > 5)
{
    randomize();
    var toughChance = random(1);
    if (toughChance > .95)
    {
        randomize();
        return choose("t", "n");
    }
}
else if(day mod 10 == 5)
{
    if(wavePos == numWaves-1)
    {
        numWaveEnemies = 1;
        randomize();
        return choose("t", "n");
    }
}


if (numMages >= maxMages)
{   
    randomize(); 
    return choose("p", "s", "h");
}
else
{
    randomize();
    var ret = choose("p", "s", "h", "b", "g");
    if (ret == "b" || ret == "g")
    {
        numMages++;
    }
    return ret;
}
