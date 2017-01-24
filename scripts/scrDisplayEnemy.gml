///scrDisplayEnemy(enemyCode)

var enemyLetter = string_letters(argument0);
var enemyGold = real(string_digits(argument0));

var enemySprite = scrGetCarnageType(enemyLetter);
var paletteSprite = scrGetPaletteSprite(enemyLetter);
var paletteIndex = scrGetPaletteIndex(enemyLetter);

if(displayx + sprite_get_width(enemySprite) > objCarnageReport.x + objCarnageReport.sprite_width/2 - 40)
{
    displayx = objCarnageReport.x - objCarnageReport.sprite_width/2 + 40;
    displayy += sprite_get_height(enemySprite) * 1.5;
}
pal_swap_set(paletteSprite, paletteIndex, false);
    draw_sprite(enemySprite,0,displayx,displayy);
pal_swap_reset();
displayx += sprite_get_width(enemySprite)*3/4;


//carnageGold += worth;
