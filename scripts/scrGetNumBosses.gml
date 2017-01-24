///scrGetNumBosses()    returns the number of boss enemies to spawn on days 10 based on number of players.

var numPlayers = objServer.numClients+1;

var chance = random(1);

if(numPlayers > 3)
{
    if(chance > .5)
    {
        return 3;
    }
    else
    {
        return 2;
    }
}
else if(numPlayers > 2)
{
    if(chance > .66)
    {
        return 3;
    }
    else
    {
        return 2;
    }
}
else
{
    if(chance > .66)
    {
        return 2;
    }
    else
    {
        return 1;
    }
}
