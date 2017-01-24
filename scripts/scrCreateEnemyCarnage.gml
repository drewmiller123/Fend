///scrCreateEnemyCarnage(enemyCode)

var enemyLetter = string_letters(argument0);
//var enemyGold = real(string_digits(argument0));

var enemyObject = scrGetCarnageObject(enemyLetter);
var enemySprite = scrGetCarnageType(enemyLetter);
var paletteSprite = scrGetPaletteSprite(enemyLetter);
var paletteIndex = scrGetPaletteIndex(enemyLetter);

if(displayx + sprite_get_width(enemySprite) > objCarnageReport.x + objCarnageReport.sprite_width/2 - 40)
{
    displayx = objCarnageReport.x - objCarnageReport.sprite_width/2 + 40;
    displayy += sprite_get_height(enemySprite) * 1.5;
}

if(!instance_exists(carnageObjects[carIndex]))
{
    carnageObjects[carIndex] = instance_create(displayx, displayy, enemyObject)
    carnageObjects[carIndex].paletteSprite = paletteSprite;
    carnageObjects[carIndex].paletteIndex = paletteIndex;
    carnageObjects[carIndex].depth -= carIndex;
    displayx += carnageObjects[carIndex].sprite_width*3/4;
}
/*pal_swap_set(paletteSprite, paletteIndex, false);
    draw_sprite(enemySprite,0,displayx,displayy);
pal_swap_reset();*/



//carnageGold += worth;
