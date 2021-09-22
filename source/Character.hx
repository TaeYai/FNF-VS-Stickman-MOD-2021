package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;

using StringTools;

class Character extends FlxSprite
{
	public var animOffsets:Map<String, Array<Dynamic>>;
	public var debugMode:Bool = false;

	public var isPlayer:Bool = false;
	public var curCharacter:String = 'bf';

	public var holdTimer:Float = 0;

	public function new(x:Float, y:Float, ?character:String = "bf", ?isPlayer:Bool = false)
	{
		super(x, y);

		animOffsets = new Map<String, Array<Dynamic>>();
		curCharacter = character;
		this.isPlayer = isPlayer;

		var tex:FlxAtlasFrames;
		antialiasing = true;

		switch (curCharacter)
		{
			case 'gf':
				// GIRLFRIEND CODE
				tex = Paths.getSparrowAtlas('characters/GF_assets');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'gfspeaker':
				// GIRLFRIEND CODE
				tex = Paths.getSparrowAtlas('kack/gfspeaker');
				frames = tex;
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('uhhleft', "GF Dancing Beat uhhh", [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24);
				animation.addByIndices('uhhright', "GF Dancing Beat uhhh", [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);
				addOffset('uhhleft', 0, -9);
				addOffset('uhhright', 0, -9);



				playAnim('danceRight');

			case 'gfspeaker2':
				// GIRLFRIEND CODE
				tex = Paths.getSparrowAtlas('kack/gfspeaker');
				frames = tex;
				animation.addByIndices('danceLeft', "GF Dancing Beat uhhh", [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24);
				animation.addByIndices('danceRight', "GF Dancing Beat uhhh", [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('uhhleft', "GF Dancing Beat uhhh", [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24);
				animation.addByIndices('uhhright', "GF Dancing Beat uhhh", [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);				addOffset('danceLeft', 0, -9);

				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);
	
	
	
				playAnim('danceRight');

			case 'gf-christmas':
				tex = Paths.getSparrowAtlas('characters/gfChristmas');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'gf-car':
				tex = Paths.getSparrowAtlas('characters/gfCar');
				frames = tex;
				animation.addByIndices('singUP', 'GF Dancing Beat Hair blowing CAR', [0], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat Hair blowing CAR', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat Hair blowing CAR', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24,
					false);

				addOffset('danceLeft', 0);
				addOffset('danceRight', 0);

				playAnim('danceRight');

			case 'gf-table':
				tex = Paths.getSparrowAtlas('kack/GF_table');
				frames = tex;
				animation.addByIndices('danceLeft', 'GF Dancing Beat table', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat table', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24,false);
				animation.addByPrefix('fear', 'GF Dancing Beat table fear');
				animation.addByIndices('fearstop', 'GF Dancing Beat table fear', [6], "", 24, false);		
				addOffset('danceLeft');
				addOffset('danceRight');

				playAnim('danceRight');


			case 'gf-tableuh':
				tex = Paths.getSparrowAtlas('kack/GF_table');
				frames = tex;
				animation.addByIndices('danceLeft', 'GF Dancing Beat table uhhh', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat table uhhh', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24,false);
				animation.addByIndices('uhhleft', "GF Dancing Beat table uhhh", [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24);
				animation.addByIndices('uhhright', "GF Dancing Beat table uhhh", [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);				addOffset('danceLeft', 0, -9);			
				animation.addByPrefix('fear', 'GF Dancing Beat table fear');
				
				addOffset('danceLeft');
				addOffset('danceRight');
				addOffset('fear');

				playAnim('danceRight');
			
			case 'gfshook':
				tex = Paths.getSparrowAtlas('kack/GF_table');
				frames = tex;	
				animation.addByPrefix('fear', 'GF Dancing Beat table fear');
				
				playAnim('fear');



			case 'gf-pixel':
				tex = Paths.getSparrowAtlas('characters/gfPixel');
				frames = tex;
				animation.addByIndices('singUP', 'GF IDLE', [2], "", 24, false);
				animation.addByIndices('danceLeft', 'GF IDLE', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF IDLE', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);

				addOffset('danceLeft', 0);
				addOffset('danceRight', 0);

				playAnim('danceRight');

				setGraphicSize(Std.int(width * PlayState.daPixelZoom));
				updateHitbox();
				antialiasing = false;

			case 'dad':
				// DAD ANIMATION LOADING CODE
				tex = Paths.getSparrowAtlas('characters/DADDY_DEAREST', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');
			case 'spooky':
				tex = Paths.getSparrowAtlas('characters/spooky_kids_assets');
				frames = tex;
				animation.addByPrefix('singUP', 'spooky UP NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'spooky DOWN note', 24, false);
				animation.addByPrefix('singLEFT', 'note sing left', 24, false);
				animation.addByPrefix('singRIGHT', 'spooky sing right', 24, false);
				animation.addByIndices('danceLeft', 'spooky dance idle', [0, 2, 6], "", 12, false);
				animation.addByIndices('danceRight', 'spooky dance idle', [8, 10, 12, 14], "", 12, false);

				addOffset('danceLeft');
				addOffset('danceRight');

				addOffset("singUP", -20, 26);
				addOffset("singRIGHT", -130, -14);
				addOffset("singLEFT", 130, -10);
				addOffset("singDOWN", -50, -130);

				playAnim('danceRight');
			case 'mom':
				tex = Paths.getSparrowAtlas('characters/Mom_Assets');
				frames = tex;

				animation.addByPrefix('idle', "Mom Idle", 24, false);
				animation.addByPrefix('singUP', "Mom Up Pose", 24, false);
				animation.addByPrefix('singDOWN', "MOM DOWN POSE", 24, false);
				animation.addByPrefix('singLEFT', 'Mom Left Pose', 24, false);
				// ANIMATION IS CALLED MOM LEFT POSE BUT ITS FOR THE RIGHT
				// CUZ DAVE IS DUMB!
				animation.addByPrefix('singRIGHT', 'Mom Pose Left', 24, false);

				addOffset('idle');
				addOffset("singUP", 14, 71);
				addOffset("singRIGHT", 10, -60);
				addOffset("singLEFT", 250, -23);
				addOffset("singDOWN", 20, -160);

				playAnim('idle');

			case 'mom-car':
				tex = Paths.getSparrowAtlas('characters/momCar');
				frames = tex;

				animation.addByPrefix('idle', "Mom Idle", 24, false);
				animation.addByPrefix('singUP', "Mom Up Pose", 24, false);
				animation.addByPrefix('singDOWN', "MOM DOWN POSE", 24, false);
				animation.addByPrefix('singLEFT', 'Mom Left Pose', 24, false);
				// ANIMATION IS CALLED MOM LEFT POSE BUT ITS FOR THE RIGHT
				// CUZ DAVE IS DUMB!
				animation.addByPrefix('singRIGHT', 'Mom Pose Left', 24, false);

				addOffset('idle');
				addOffset("singUP", 14, 71);
				addOffset("singRIGHT", 10, -60);
				addOffset("singLEFT", 250, -23);
				addOffset("singDOWN", 20, -160);

				playAnim('idle');
			case 'monster':
				tex = Paths.getSparrowAtlas('characters/Monster_Assets');
				frames = tex;
				animation.addByPrefix('idle', 'monster idle', 24, false);
				animation.addByPrefix('singUP', 'monster up note', 24, false);
				animation.addByPrefix('singDOWN', 'monster down', 24, false);
				animation.addByPrefix('singLEFT', 'Monster left note', 24, false);
				animation.addByPrefix('singRIGHT', 'Monster Right note', 24, false);

				addOffset('idle');
				addOffset("singUP", -20, 50);
				addOffset("singRIGHT", -51);
				addOffset("singLEFT", -30);
				addOffset("singDOWN", -30, -40);
				playAnim('idle');
			case 'monster-christmas':
				tex = Paths.getSparrowAtlas('characters/monsterChristmas');
				frames = tex;
				animation.addByPrefix('idle', 'monster idle', 24, false);
				animation.addByPrefix('singUP', 'monster up note', 24, false);
				animation.addByPrefix('singDOWN', 'monster down', 24, false);
				animation.addByPrefix('singLEFT', 'Monster left note', 24, false);
				animation.addByPrefix('singRIGHT', 'Monster Right note', 24, false);

				addOffset('idle');
				addOffset("singUP", -20, 50);
				addOffset("singRIGHT", -51);
				addOffset("singLEFT", -30);
				addOffset("singDOWN", -40, -94);
				playAnim('idle');
			case 'pico':
				tex = Paths.getSparrowAtlas('characters/Pico_FNF_assetss');
				frames = tex;
				animation.addByPrefix('idle', "Pico Idle Dance", 24);
				animation.addByPrefix('singUP', 'pico Up note0', 24, false);
				animation.addByPrefix('singDOWN', 'Pico Down Note0', 24, false);
				if (isPlayer)
				{
					animation.addByPrefix('singLEFT', 'Pico NOTE LEFT0', 24, false);
					animation.addByPrefix('singRIGHT', 'Pico Note Right0', 24, false);
					animation.addByPrefix('singRIGHTmiss', 'Pico Note Right Miss', 24, false);
					animation.addByPrefix('singLEFTmiss', 'Pico NOTE LEFT miss', 24, false);
				}
				else
				{
					// Need to be flipped! REDO THIS LATER!
					animation.addByPrefix('singLEFT', 'Pico Note Right0', 24, false);
					animation.addByPrefix('singRIGHT', 'Pico NOTE LEFT0', 24, false);
					animation.addByPrefix('singRIGHTmiss', 'Pico NOTE LEFT miss', 24, false);
					animation.addByPrefix('singLEFTmiss', 'Pico Note Right Miss', 24, false);
				}

				animation.addByPrefix('singUPmiss', 'pico Up note miss', 24);
				animation.addByPrefix('singDOWNmiss', 'Pico Down Note MISS', 24);

				addOffset('idle');
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -68, -7);
				addOffset("singLEFT", 65, 9);
				addOffset("singDOWN", 200, -70);
				addOffset("singUPmiss", -19, 67);
				addOffset("singRIGHTmiss", -60, 41);
				addOffset("singLEFTmiss", 62, 64);
				addOffset("singDOWNmiss", 210, -28);

				playAnim('idle');

				flipX = true;

			case 'bf':
				var tex = Paths.getSparrowAtlas('characters/BOYFRIEND', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'bfmad':
				var tex = Paths.getSparrowAtlas('kack/BFmad');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle shaking', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP mad0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT mad0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT mad0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN mad0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);


				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);

				playAnim('idle');

				flipX = true;

			case 'bfguard':
				var tex = Paths.getSparrowAtlas('kack/BFsong2');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle guard', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP guard', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT guard0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT guard', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN guard', 24, false);


				addOffset('idle', -5);
				addOffset("singUP", -18, 19);
				addOffset("singRIGHT", -15, 19);
				addOffset("singLEFT", 33, 18);
				addOffset("singDOWN", -2, -39);

				playAnim('idle');

				flipX = true;

			case 'bfconfused':
				var tex = Paths.getSparrowAtlas('kack/BFabuse');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF wth idle', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP wth', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT wth', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT wth', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN wth', 24, false);
				animation.addByPrefix('wha', 'BF watch', 24, false);


				addOffset('idle', -5);
				addOffset("singUP", -47, 29);
				addOffset("singRIGHT", -46, -6);
				addOffset("singLEFT", 10, -7);
				addOffset("singDOWN", -13, -51);

				playAnim('idle');

				flipX = true;	
				
				
				case 'bfgettingabuse':
					var tex = Paths.getSparrowAtlas('kack/BFabuse');
					frames = tex;
	
					trace(tex.frames.length);

					animation.addByPrefix('wha', 'BF watch', 24, false);
					animation.addByPrefix('bflook', 'BF idle  speaker off', 24, false);
					animation.addByPrefix('bfgf', 'BF wactch gf', 24, false);

		
					addOffset('wha', -5);
					addOffset('bflook', -5);
					addOffset('bfgf', -5);

					//playAnim('wha');
	
					flipX = true;				
					
				

			case 'bfmichit':
					var tex = Paths.getSparrowAtlas('kack/BFHitWithMic');
					frames = tex;
	
					trace(tex.frames.length);
	
					animation.addByPrefix('idle', 'BF hit', 24, false);
	
	
					addOffset('idle', -5);
	
					playAnim('idle');
	
					flipX = true;




			case 'bforaed':
					var tex = Paths.getSparrowAtlas('kack/BFsong2');
					frames = tex;
	
					trace(tex.frames.length);
	
					animation.addByPrefix('idle', 'BF hit Got oraed', 24, false);
	
	
					addOffset('idle', -5);
	
					playAnim('idle'); 
	
					flipX = true;
			case 'bfrevage':
						var tex = Paths.getSparrowAtlas('kack/BFthrow');
						frames = tex;
		
						trace(tex.frames.length);
		
						animation.addByPrefix('idle', 'BF idle dance revage', 24, false);
		
		
						addOffset('idle', -5);
		
						playAnim('idle'); 
		
						flipX = true;
			case 'bfwhat':
					var tex = Paths.getSparrowAtlas('kack/BFsong2');
					frames = tex;
		
					trace(tex.frames.length);
		
					animation.addByPrefix('idle', 'BF idle dance whatt', 24, false);
		
		
					addOffset('idle', -5);
		
					playAnim('idle'); 
		
					flipX = true;
			case 'bfno':
					var tex = Paths.getSparrowAtlas('kack/BFsong2');
					frames = tex;
		
					trace(tex.frames.length);
		
					animation.addByPrefix('idle', 'BF idle dance had enough', 24, false);
		
		
					addOffset('idle', -5);
		
					playAnim('idle'); 
		
					flipX = true;

			case 'bfgot':
					var tex = Paths.getSparrowAtlas('kack/BFthrow');
					frames = tex;
		
					trace(tex.frames.length);
		
					animation.addByPrefix('got', 'bf get mic', 24, false);
					//animation.addByIndices('idle', 'bf got mic', [6], "", 24, false);
		
					addOffset('got', -5);
		
					playAnim('got'); 
		
					flipX = true;

			case 'bfthrow':
					var tex = Paths.getSparrowAtlas('kack/BFthrow');
					frames = tex;
		
					trace(tex.frames.length);
		
					animation.addByPrefix('idle', 'BF idle dance revage', 24, false);
		
		
					addOffset('idle', -5);
		
					playAnim('idle'); 
		
					flipX = true;
			case 'bfattack':
					var tex = Paths.getSparrowAtlas('kack/BFthrow');
					frames = tex;
		
					trace(tex.frames.length);
		
					animation.addByPrefix('atk', 'bf got mic att 0', 24, false);
					animation.addByIndices('idle', 'bf got mic att 0', [3], "", 24, false);
		
		
					addOffset('idle', -5);
					addOffset('atk', -5);
		
					playAnim('idle'); 
		
					flipX = true;
			case 'bfgot2':
					var tex = Paths.getSparrowAtlas('kack/BFthrow');
					frames = tex;
					trace(tex.frames.length);
					animation.addByPrefix('idle', 'bf got mic copy', 24, false);
		
					addOffset('idle', -5);
		
					playAnim('idle'); 
		
					flipX = true;

			case 'bfpreatk':
					var tex = Paths.getSparrowAtlas('kack/BFthrow');
					frames = tex;
					trace(tex.frames.length);
					animation.addByPrefix('idle', 'bf got mic pre att', 24, false);

		
					addOffset('idle', -5);
					playAnim('idle'); 
					flipX = true;

			case 'bfatk2':
					var tex = Paths.getSparrowAtlas('kack/BFthrow');
					frames = tex;
		
					trace(tex.frames.length);
		
					animation.addByPrefix('idle', 'bf got mic pre attack', 24, false);
		
		
					addOffset('idle', -5);
		
					playAnim('idle'); 
		
					flipX = true;
			case 'bf-christmas':
				var tex = Paths.getSparrowAtlas('characters/bfChristmas');
				frames = tex;
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);

				playAnim('idle');

				flipX = true;
			case 'bf-car':
				var tex = Paths.getSparrowAtlas('characters/bfCar');
				frames = tex;
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				playAnim('idle');

				flipX = true;
			case 'bf-pixel':
				frames = Paths.getSparrowAtlas('characters/bfPixel');
				animation.addByPrefix('idle', 'BF IDLE', 24, false);
				animation.addByPrefix('singUP', 'BF UP NOTE', 24, false);
				animation.addByPrefix('singLEFT', 'BF LEFT NOTE', 24, false);
				animation.addByPrefix('singRIGHT', 'BF RIGHT NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'BF DOWN NOTE', 24, false);
				animation.addByPrefix('singUPmiss', 'BF UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF DOWN MISS', 24, false);

				addOffset('idle');
				addOffset("singUP");
				addOffset("singRIGHT");
				addOffset("singLEFT");
				addOffset("singDOWN");
				addOffset("singUPmiss");
				addOffset("singRIGHTmiss");
				addOffset("singLEFTmiss");
				addOffset("singDOWNmiss");

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				playAnim('idle');

				width -= 100;
				height -= 100;

				antialiasing = false;

				flipX = true;
			case 'bf-pixel-dead':
				frames = Paths.getSparrowAtlas('characters/bfPixelsDEAD');
				animation.addByPrefix('singUP', "BF Dies pixel", 24, false);
				animation.addByPrefix('firstDeath', "BF Dies pixel", 24, false);
				animation.addByPrefix('deathLoop', "Retry Loop", 24, true);
				animation.addByPrefix('deathConfirm', "RETRY CONFIRM", 24, false);
				animation.play('firstDeath');

				addOffset('firstDeath');
				addOffset('deathLoop', -37);
				addOffset('deathConfirm', -37);
				playAnim('firstDeath');
				// pixel bullshit
				setGraphicSize(Std.int(width * 6));
				updateHitbox();
				antialiasing = false;
				flipX = true;
			case 'bf-jack-dead':
				frames = Paths.getSparrowAtlas('kack/jackkillbf');
				animation.addByPrefix('singUP', "BF die instance 1", 24, false);
				animation.addByPrefix('firstDeath', "BF die instance 1", 24, false);
				animation.addByPrefix('deathLoop', "BF die loop instance 1", 24, true);
				animation.addByPrefix('deathConfirm', "BF die confirm instance 1", 24, false);
				animation.play('firstDeath');

				addOffset('firstDeath', -444,50);
				addOffset('deathLoop', -787,-220);
				addOffset('deathConfirm', 873, -150);
				playAnim('firstDeath');
				updateHitbox();
				antialiasing = false;
				flipX = true;

			case 'senpai':
				frames = Paths.getSparrowAtlas('characters/senpai');
				animation.addByPrefix('idle', 'Senpai Idle', 24, false);
				animation.addByPrefix('singUP', 'SENPAI UP NOTE', 24, false);
				animation.addByPrefix('singLEFT', 'SENPAI LEFT NOTE', 24, false);
				animation.addByPrefix('singRIGHT', 'SENPAI RIGHT NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'SENPAI DOWN NOTE', 24, false);

				addOffset('idle');
				addOffset("singUP", 5, 37);
				addOffset("singRIGHT");
				addOffset("singLEFT", 40);
				addOffset("singDOWN", 14);

				playAnim('idle');

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				antialiasing = false;
			case 'senpai-angry':
				frames = Paths.getSparrowAtlas('characters/senpai');
				animation.addByPrefix('idle', 'Angry Senpai Idle', 24, false);
				animation.addByPrefix('singUP', 'Angry Senpai UP NOTE', 24, false);
				animation.addByPrefix('singLEFT', 'Angry Senpai LEFT NOTE', 24, false);
				animation.addByPrefix('singRIGHT', 'Angry Senpai RIGHT NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'Angry Senpai DOWN NOTE', 24, false);

				addOffset('idle');
				addOffset("singUP", 5, 37);
				addOffset("singRIGHT");
				addOffset("singLEFT", 40);
				addOffset("singDOWN", 14);
				playAnim('idle');

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				antialiasing = false;

			case 'spirit':
				frames = Paths.getPackerAtlas('characters/spirit');
				animation.addByPrefix('idle', "idle spirit_", 24, false);
				animation.addByPrefix('singUP', "up_", 24, false);
				animation.addByPrefix('singRIGHT', "right_", 24, false);
				animation.addByPrefix('singLEFT', "left_", 24, false);
				animation.addByPrefix('singDOWN', "spirit down_", 24, false);

				addOffset('idle', -220, -280);
				addOffset('singUP', -220, -240);
				addOffset("singRIGHT", -220, -280);
				addOffset("singLEFT", -200, -280);
				addOffset("singDOWN", 170, 110);

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				playAnim('idle');

				antialiasing = false;

			case 'parents-christmas':
				frames = Paths.getSparrowAtlas('characters/mom_dad_christmas_assets');
				animation.addByPrefix('idle', 'Parent Christmas Idle', 24, false);
				animation.addByPrefix('singUP', 'Parent Up Note Dad', 24, false);
				animation.addByPrefix('singDOWN', 'Parent Down Note Dad', 24, false);
				animation.addByPrefix('singLEFT', 'Parent Left Note Dad', 24, false);
				animation.addByPrefix('singRIGHT', 'Parent Right Note Dad', 24, false);

				animation.addByPrefix('singUP-alt', 'Parent Up Note Mom', 24, false);

				animation.addByPrefix('singDOWN-alt', 'Parent Down Note Mom', 24, false);
				animation.addByPrefix('singLEFT-alt', 'Parent Left Note Mom', 24, false);
				animation.addByPrefix('singRIGHT-alt', 'Parent Right Note Mom', 24, false);

				addOffset('idle');
				addOffset("singUP", -47, 24);
				addOffset("singRIGHT", -1, -23);
				addOffset("singLEFT", -30, 16);
				addOffset("singDOWN", -31, -29);
				addOffset("singUP-alt", -47, 24);
				addOffset("singRIGHT-alt", -1, -24);
				addOffset("singLEFT-alt", -30, 15);
				addOffset("singDOWN-alt", -30, -27);

				playAnim('idle');
				case 'jackcop':
					tex = Paths.getSparrowAtlas('kack/jackboom');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_idile_1', 24);
					animation.addByPrefix('idle2', 'Jack_idile_2', 24);
					animation.addByPrefix('idle3', 'Jack_idile_3', 24);
					animation.addByPrefix('singUP', 'Jack_Up', 24);
					animation.addByPrefix('singRIGHT', 'Jack_Right', 24);
					animation.addByPrefix('singDOWN', 'Jack_Down', 24);
					animation.addByPrefix('singLEFT', 'Jack_Left', 24);
					
					addOffset('idle', -769, -102);
					addOffset('idle2', -770, -110);
					addOffset('idle3', -750, -120);
					addOffset("singUP", -749, -38);
					addOffset("singRIGHT", -791, -84);
					addOffset("singLEFT", -773, -102);
					addOffset("singDOWN", -790, -151);
	
					playAnim('idle3');

				case 'jack3-1':
					tex = Paths.getSparrowAtlas('kack/Jacksing3');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_idleMicsong3', 24);
					animation.addByPrefix('singUP', 'Jack_Micsong3 Up', 24);
					animation.addByPrefix('singRIGHT', 'Jack_Micsong3 Right', 24);
					animation.addByPrefix('singDOWN', 'Jack_Micsong3 Down', 24);
					animation.addByPrefix('singLEFT', 'Jack_Micsong3 Left', 24);
						
					addOffset('idle',2, -22);
					addOffset("singUP", 11, 15);
					addOffset("singRIGHT", -25, -30);
					addOffset("singLEFT", 28, -26);
					addOffset("singDOWN", -15, -66);
		
					playAnim('idle');

				case 'jack3-2':
					tex = Paths.getSparrowAtlas('kack/Jacksing3');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_idleMicsong3', 24);
					animation.addByPrefix('singUP', 'Jack_Up not mad', 24);
					animation.addByPrefix('singRIGHT', 'Jack_Right not mad', 24);
					animation.addByPrefix('singDOWN', 'Jack_Down not mad', 24);
					animation.addByPrefix('singLEFT', 'Jack_Left not mad', 24);
							
					addOffset('idle',2, -22);
					addOffset("singUP", 9, 12);
					addOffset("singRIGHT", -14, -11);
					addOffset("singLEFT", 33, -26);
					addOffset("singDOWN", 36, -82);
			
					playAnim('idle');
	

				case 'jack3-3':
					tex = Paths.getSparrowAtlas('kack/Jacksing3');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_idleMicsong3', 24);
					animation.addByPrefix('singUP', 'Jack_up mad', 24);
					animation.addByPrefix('singRIGHT', 'Jack_right mad', 24);
					animation.addByPrefix('singDOWN', 'Jack_down mad', 24);
					animation.addByPrefix('singLEFT', 'Jack_left mad', 24);
							
					addOffset('idle',2, -22);
					addOffset("singUP", 39, 9);
					addOffset("singRIGHT", -5, -22);
					addOffset("singLEFT", 28, -15);
					addOffset("singDOWN", 47, -66);
			
					playAnim('idle');

				case 'jackgiveup':
					tex = Paths.getSparrowAtlas('kack/Jacksong3end');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_Song3end', 24);
			
					playAnim('idle');




				case 'jackwonder':
					tex = Paths.getSparrowAtlas('kack/jackboom');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_idile_3', 24);
					animation.addByPrefix('go', 'Jack_BringBoom0', 24);
					addOffset('idle', -750, -120);
					addOffset('go', 583, -70);
					playAnim('idle');


				case 'jackcop-record':
					tex = Paths.getSparrowAtlas('kack/jackboom');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_idile_2', 24);
					animation.addByPrefix('idleboom', 'Jack_idile_2', 24);
					animation.addByPrefix('singUP', 'Jack_Up', 24);
					animation.addByPrefix('singRIGHT', 'Jack_Right', 24);
					animation.addByPrefix('singDOWN', 'Jack_Down', 24);
					animation.addByPrefix('singLEFT', 'Jack_Left', 24);
	
					addOffset('idle', -769, -102);
					addOffset('idle2', -770, -100);
					addOffset('idle3', -767, -104);
					addOffset('go', 583, -74);
					addOffset("singUP", -789, -29);
					addOffset("singRIGHT", -811, -84);
					addOffset("singLEFT", -783, -102);
					addOffset("singDOWN", -810, -149);
	
					playAnim('idle2');
				case 'jack-piano':
					tex = Paths.getSparrowAtlas('kack/jackpiano');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_piano_idle', 24);
					animation.addByPrefix('singUP', 'Jack_piano_Up', 24);
					animation.addByPrefix('singRIGHT', 'Jack_piano_right', 24);
					animation.addByPrefix('singDOWN', 'Jack_piano_down', 24);
					animation.addByPrefix('singLEFT', 'Jack_piano_left', 24);

					addOffset('idle', 0, 0);
					addOffset("singUP", 46, 0);
					addOffset("singRIGHT", 19, 0);
					addOffset("singLEFT", 17, 0);
					addOffset("singDOWN", 18, 0);
	
					playAnim('idle');
				case 'jackmic':
					tex = Paths.getSparrowAtlas('kack/JzSongtwo');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_idile_mic', 24);
					animation.addByPrefix('thrown', 'Jack_throwmic1', 24);
					animation.addByIndices('thrownstop', 'Jack_throwmic1', [6], "", 24, false);
					animation.addByPrefix('jackspaam', 'Jack_throwmic ora', 24);

					addOffset('idle');
					playAnim('idle');

				case 'jackstop':
					tex = Paths.getSparrowAtlas('kack/JzSongtwo');
					frames = tex;
					animation.addByIndices('thrownstop', 'Jack_throwmic1', [6], "", 24, false);

	
					addOffset('thrownstop');
					playAnim('thrownstop');

				case 'jackprethrow':
					tex = Paths.getSparrowAtlas('kack/Jackthrow');
					frames = tex;
					animation.addByPrefix('jackpreattack', 'Jackpre attack', 24);
					animation.addByPrefix('jackbigattack', 'Jack_pre attack strong', 24);
					animation.addByPrefix('jackspaam', 'Jack_throwmic ora', 24);
	
					addOffset('jackpreattack');
					addOffset('jackbigattack');
					playAnim('jackpreattack');



				case 'jackget':
					tex = Paths.getSparrowAtlas('kack/jackgetit');
					frames = tex;
					animation.addByPrefix('got', 'Jack_get mic', 24);
					animation.addByIndices('idle', 'Jack_get mic', [4], "", 24, false);

					addOffset('idle');
	
					playAnim('got');



				case 'jackgetmic':
					var tex = Paths.getSparrowAtlas('kack/jackgetit');
					frames = tex;
					trace(tex.frames.length);
					animation.addByPrefix('jackget', 'Jack_get mic', 24, false);
			
					addOffset('jackget', -5);
			
					playAnim('jackget'); 
			
					


				case 'jackora':
					tex = Paths.getSparrowAtlas('kack/JzSongtwo');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_throwmic ora', 24);

					addOffset('idle');
	
					playAnim('idle');

				case 'jacktaunt':
					tex = Paths.getSparrowAtlas('kack/JackSong2');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_idle_mic2', 24);
					animation.addByPrefix('noob', 'Jack_youbad lol', 24);
					animation.addByPrefix('ded', 'Jack_rip', 24);
					animation.addByPrefix('ora', 'Jack_got Oraed', 24);

					addOffset('idle');
					addOffset('noob', 27, 0);
	
					playAnim('idle');
				case 'jackhurt':
					tex = Paths.getSparrowAtlas('kack/JackSong2');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_got Oraed', 24);

					addOffset('idle');
	
					playAnim('idle');
					
				case 'jackded':
					tex = Paths.getSparrowAtlas('kack/JackSong2');
					frames = tex;
					animation.addByPrefix('idle', 'Jack_rip', 24);
					animation.addByIndices('dedstop', 'Jack_rip', [15], "", 24, false);

					addOffset('idle');
					addOffset('dedstop');

					playAnim('dedstop');

				case 'fighting':
					tex = Paths.getSparrowAtlas('kack/fighting');
					frames = tex;
					animation.addByPrefix('jackpress', 'GF Dancing Beat but mad', 24);
					animation.addByIndices('idlej', 'GF Dancing Beat but mad', [17], "", 24, false);
					animation.addByIndices('idlegf', 'GF Dancing Beat but mad 2', [17], "", 24, false);
					animation.addByPrefix('gfpress', 'GF Dancing Beat but mad 2', 24);
					animation.addByPrefix('fight', 'Stickman vs GF', 24);


					addOffset('idle');
					addOffset('jackpress', -2, 1);
					addOffset('gfpress', 0, 1);
					addOffset('idlej', -2, 1);
					addOffset('idlegf', 0, 1);
					addOffset('fight', 10, -19);

					playAnim('idlej');

				case 'jackreal':
				tex = Paths.getSparrowAtlas('kack/Jacksing3');
				frames = tex;
				animation.addByPrefix('idle', 'Jack_idleMicsong3', 24);
				animation.addByPrefix('singUP', 'Jack_Micsong3 Up0', 24);
				animation.addByPrefix('singRIGHT', 'Jack_Micsong3 Right0', 24);
				animation.addByPrefix('singDOWN', 'Jack_Micsong3 Down0', 24);
				animation.addByPrefix('singLEFT', 'Jack_Micsong3 Left0', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

				
		}

		dance();

		if (isPlayer)
		{
			flipX = !flipX;

			// Doesn't flip for BF, since his are already in the right place???
			if (!curCharacter.startsWith('bf'))
			{
				// var animArray
				var oldRight = animation.getByName('singRIGHT').frames;
				animation.getByName('singRIGHT').frames = animation.getByName('singLEFT').frames;
				animation.getByName('singLEFT').frames = oldRight;

				// IF THEY HAVE MISS ANIMATIONS??
				if (animation.getByName('singRIGHTmiss') != null)
				{
					var oldMiss = animation.getByName('singRIGHTmiss').frames;
					animation.getByName('singRIGHTmiss').frames = animation.getByName('singLEFTmiss').frames;
					animation.getByName('singLEFTmiss').frames = oldMiss;
				}
			}
		}
	}

	override function update(elapsed:Float)
	{
		if (!curCharacter.startsWith('bf'))
		{
			if (animation.curAnim.name.startsWith('sing'))
			{
				holdTimer += elapsed;
			}

			var dadVar:Float = 4;

			if (curCharacter == 'dad')
				dadVar = 6.1;
			if (holdTimer >= Conductor.stepCrochet * dadVar * 0.001)
			{
				trace('dance');
				dance();
				holdTimer = 0;
			}
		}

		switch (curCharacter)
		{
			case 'gf':
				if (animation.curAnim.name == 'hairFall' && animation.curAnim.finished)
					playAnim('danceRight');
		}

		super.update(elapsed);
	}

	private var danced:Bool = false;

	/**
	 * FOR GF DANCING SHIT
	 */
	public function dance()
	{
		if (!debugMode)
		{
			switch (curCharacter)
			{
				case 'gf':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-christmas':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-car':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gf-table':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gfspeaker':
					if (!animation.curAnim.name.startsWith('uhh'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gfspeaker2':
					if (!animation.curAnim.name.startsWith('uhh'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-tableuh':
					if (!animation.curAnim.name.startsWith('uhh'))
					{
							danced = !danced;
	
							if (danced)
								playAnim('danceRight');
							else
								playAnim('danceLeft');
						}
											
				case 'gf-pixel':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'spooky':
					danced = !danced;

					if (danced)
						playAnim('danceRight');
					else
						playAnim('danceLeft');
				default:
					playAnim('idle');
			}
		}
	}

	public function playAnim(AnimName:String, Force:Bool = false, Reversed:Bool = false, Frame:Int = 0):Void
	{
		animation.play(AnimName, Force, Reversed, Frame);

		var daOffset = animOffsets.get(AnimName);
		if (animOffsets.exists(AnimName))
		{
			offset.set(daOffset[0], daOffset[1]);
		}
		else
			offset.set(0, 0);

		if (curCharacter == 'gf')
		{
			if (AnimName == 'singLEFT')
			{
				danced = true;
			}
			else if (AnimName == 'singRIGHT')
			{
				danced = false;
			}

			if (AnimName == 'singUP' || AnimName == 'singDOWN')
			{
				danced = !danced;
			}
		}
	}

	public function addOffset(name:String, x:Float = 0, y:Float = 0)
	{
		animOffsets[name] = [x, y];
	}
}
