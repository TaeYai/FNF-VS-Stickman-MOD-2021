package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		switch(char)
		{
			case 'jackcop' | 'jackcop-record' | 'jack-piano' | 'jackmic' | 'jackora' | 'jackget' | 'jackreal' | 'jackwonder' | 'jacktaunt' | 'jack3-1' | 'jack3-2' | 'jack3-3':
				loadGraphic(Paths.image('jackicon'), true, 150, 150);
				animation.add('jackcop', [0, 1], 0, false, isPlayer);
				animation.add('jackcop-record', [0, 1], 0, false, isPlayer);
				animation.add('jack-piano', [0, 1], 0, false, isPlayer);
				animation.add('jackora', [0, 1], 0, false, isPlayer);
				animation.add('jackmic', [0, 1], 0, false, isPlayer);
				animation.add('jackwonder', [0, 1], 0, false, isPlayer);
				animation.add('jacktaunt', [0, 1], 0, false, isPlayer);	
				animation.add('jack3-1', [0, 1], 0, false, isPlayer);		
				animation.add('jack3-2', [0, 1], 0, false, isPlayer);					
				animation.add('jack3-3', [0, 1], 0, false, isPlayer);					
			case 'bf' | 'bfora' | 'bfguard' | 'bfhit' | 'bfwhat' | 'bfno' | 'bfgot' | 'bfthrow' | 'bfattack' | 'bfgot2' | 'bfatk' | 'bfatk2':
				loadGraphic(Paths.image('iconGrid'), true, 150, 150);
				animation.add('bf', [0, 1], 0, false, isPlayer);
				animation.add('bfora', [0, 1], 0, false, isPlayer);
				animation.add('bfguard', [0, 1], 0, false, isPlayer);
				animation.add('bfhit', [0, 1], 0, false, isPlayer);
				animation.add('bfwhat', [0, 1], 0, false, isPlayer);
				animation.add('bfno', [0, 1], 0, false, isPlayer);
				animation.add('bfgot', [0, 1], 0, false, isPlayer);
				animation.add('bfthrow', [0, 1], 0, false, isPlayer);
				animation.add('bfattack', [0, 1], 0, false, isPlayer);
				animation.add('bfgot2', [0, 1], 0, false, isPlayer);
				animation.add('bfatk', [0, 1], 0, false, isPlayer);
				animation.add('bfatk2', [0, 1], 0, false, isPlayer);

		default:
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bfmad', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('jackcop', [10, 11], 0, false, isPlayer);
		animation.add('jackcop-record', [10, 11], 0, false, isPlayer);
		animation.add('jack-piano', [10, 11], 0, false, isPlayer);
		animation.add('fighting', [10, 11], 0, false, isPlayer);
		animation.add('gfspeaker', [16], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-table', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		
		}

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		animation.play(char);
		antialiasing = true;
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
