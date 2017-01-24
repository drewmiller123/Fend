///scrCreateEnemyWave(waveString,stringIndex)
//creates new objEnemyWave
//no return value

var num =  real(string_char_at(argument0,argument1));
var type = string_char_at(argument0,argument1+1);
var wavenum = real(string_char_at(argument0,argument1+2));

numWaves = max(numWaves,wavenum+1);

var newWave = instance_create(x,y,objEnemyWave);
newWave.enemyNum = num;
newWave.enemyType = type;
newWave.waveNum = wavenum;
