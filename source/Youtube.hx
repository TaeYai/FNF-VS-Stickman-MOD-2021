import flixel.ui.FlxButton;
import flixel.text.FlxText;
import flixel.FlxSubState;
import flixel.addons.ui.FlxUIInputText;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.util.FlxColor;
import flixel.FlxG;
import lime.system.System;
import flixel.util.FlxTimer;
import flixel.FlxSprite;
import flixel.ui.FlxBar;

class Youtube extends MusicBeatSubstate
{
    
    var bg:FlxSprite;
   
    var click:FlxSprite;
    var videogroup:FlxTypedGroup<FlxSprite>;
    var curSelected:Int = 0;
    var video:MP4Handler = new MP4Handler();
    var isCutscene:Bool = false;
    var disy:FlxSprite;
    var bal:FlxSprite;
    var gar:FlxSprite;
    var jz:FlxSprite;
    var al:FlxSprite;
    var sonic:FlxSprite;
    var tae:FlxSprite;
    var mix:FlxSprite;
    
    override function create()
        {
            FlxG.mouse.visible = true;
            bg = new FlxSprite().loadGraphic(Paths.image('story/bg', 'preload'));
            bg.setGraphicSize(FlxG.width);
            bg.antialiasing = true;
            bg.updateHitbox();
            bg.screenCenter();
            bg.scrollFactor.set();
            add(bg);

            click = new FlxSprite(0,0).loadGraphic(Paths.image('story/box', 'preload'));
            click.setGraphicSize(FlxG.width);
            click.antialiasing = true;
            click.x = 65;
            click.y = 120;
            click.scale.set(1, 1);
            click.updateHitbox();
            click.scrollFactor.set();
            add(click);

            disy = new FlxSprite(0,0);
            disy.setGraphicSize(FlxG.width);
            disy.frames = Paths.getSparrowAtlas('story/vid', 'preload');
            disy.animation.addByPrefix('idle', 'soul', 24, true);
            disy.animation.play('idle');
            disy.antialiasing = true;
            disy.x = 930;
            disy.y = 564;
            disy.scale.set(1, 1);
            disy.updateHitbox();
            disy.scrollFactor.set();
            add(disy);
            trace(disy);

            bal = new FlxSprite(0,0);
            bal.setGraphicSize(FlxG.width);
            bal.frames = Paths.getSparrowAtlas('story/vid', 'preload');
            bal.animation.addByPrefix('idle', 'baldi', 24, true);
            bal.animation.play('idle');
            bal.antialiasing = true;
            bal.x = 917;
            bal.y = 629;
            bal.scale.set(1, 1);
            bal.updateHitbox();
            bal.scrollFactor.set();
            add(bal);
            trace('baldi' + bal);

            gar = new FlxSprite(0,0);
            gar.setGraphicSize(FlxG.width);
            gar.frames = Paths.getSparrowAtlas('story/vid', 'preload');
            gar.animation.addByPrefix('idle', 'gar', 24, true);
            gar.animation.play('idle');
            gar.antialiasing = true;
            gar.x = 930;
            gar.y = 150;
            gar.scale.set(1, 1);
            gar.updateHitbox();
            gar.scrollFactor.set();
            add(gar);
            trace('gar' + gar);

            jz = new FlxSprite(0,0);
            jz.setGraphicSize(FlxG.width);
            jz.frames = Paths.getSparrowAtlas('story/vid', 'preload');
            jz.animation.addByPrefix('idle', 'jzth', 24, true);
            jz.animation.play('idle');
            jz.antialiasing = true;
            jz.x = 930;
            jz.y = 420;
            jz.scale.set(1, 1);
            jz.updateHitbox();
            jz.scrollFactor.set();
            add(jz);
            trace('jz' + jz);

            al = new FlxSprite(0,0);
            al.setGraphicSize(FlxG.width);
            al.frames = Paths.getSparrowAtlas('story/vid', 'preload');
            al.animation.addByPrefix('idle', 'po', 24, true);
            al.animation.play('idle');
            al.antialiasing = true;
            al.x = 930;
            al.y = 489;
            al.scale.set(1, 1);
            al.updateHitbox();
            al.scrollFactor.set();
            add(al);
            trace('al' + al);

            tae = new FlxSprite(0,0);
            tae.setGraphicSize(FlxG.width);
            tae.frames = Paths.getSparrowAtlas('story/vid', 'preload');
            tae.animation.addByPrefix('idle', 'tae', 24, true);
            tae.animation.play('idle');
            tae.antialiasing = true;
            tae.x = 930;
            tae.y = 360;
            tae.scale.set(1, 1);
            tae.updateHitbox();
            tae.scrollFactor.set();
            add(tae);
            trace('tae' + tae);

            sonic = new FlxSprite(0,0);
            sonic.setGraphicSize(FlxG.width);
            sonic.frames = Paths.getSparrowAtlas('story/vid', 'preload');
            sonic.animation.addByPrefix('idle', 'sonic', 24, true);
            sonic.animation.play('idle');
            sonic.antialiasing = true;
            sonic.x = 930;
            sonic.y = 290;
            sonic.scale.set(1, 1);
            sonic.updateHitbox();
            sonic.scrollFactor.set();
            add(sonic);
            trace('sonic' + sonic);

            mix = new FlxSprite(0,0);
            mix.setGraphicSize(FlxG.width);
            mix.frames = Paths.getSparrowAtlas('story/vid', 'preload');
            mix.animation.addByPrefix('idle', 'jz0', 24, true);
            mix.animation.play('idle');
            mix.antialiasing = true;
            mix.x = 930;
            mix.y = 220;
            mix.scale.set(1, 1);
            mix.updateHitbox();
            mix.scrollFactor.set();
            add(mix);
            trace('mix' + mix);


        
        }
    override function update(elapsed:Float)
    {
        if (FlxG.sound.music != null)
            Conductor.songPosition = FlxG.sound.music.time;

        if (FlxG.keys.justPressed.ESCAPE)
        {
            if(!isCutscene)
            FlxG.mouse.visible = false;
            FlxG.switchState(new MainMenuState());
            FlxG.mouse.enabled = true;
        }

        if (FlxG.mouse.overlaps(click))
        {
            if (FlxG.mouse.justPressed)
            {
                FlxG.mouse.visible = false;
                FlxG.mouse.enabled = false;
                PlayState.isStoryMode = true;
                PlayState.stickthingidk = true;
                PlayState.storyPlaylist = ['Sticking', 'fight', "serious"];
                trace(PlayState.storyPlaylist);
				PlayState.storyDifficulty = 2;
				PlayState.SONG = Song.loadFromJson(StringTools.replace(PlayState.storyPlaylist[0]," ", "-").toLowerCase() + '-hard', StringTools.replace(PlayState.storyPlaylist[0]," ", "-").toLowerCase());
				PlayState.storyWeek = 0;
				PlayState.campaignScore = 0;
                
				new FlxTimer().start(1, function(tmr:FlxTimer)
                    {
                        isCutscene = true;
                        PlayState.isStoryMode = true;
                        PlayState.stickthingidk = true;
                        remove(click);
                        trace(PlayState.isStoryMode);
                        video.playMP4(Paths.video('intro'), new PlayState()); 
                        
                    });
            }
        }
        if (FlxG.mouse.overlaps(disy))
            {
                if (FlxG.mouse.justPressed)
                {
                    FlxG.mouse.visible = false;
                    FlxG.mouse.enabled = false;
                    PlayState.isStoryMode = true;
                    PlayState.stickthingidk = true;
                    PlayState.storyPlaylist = ['wrath-soul'];
                    trace(PlayState.storyPlaylist);
                    PlayState.storyDifficulty = 2;
                    PlayState.SONG = Song.loadFromJson(StringTools.replace(PlayState.storyPlaylist[0]," ", "-").toLowerCase() + '-hard', StringTools.replace(PlayState.storyPlaylist[0]," ", "-").toLowerCase());
                    PlayState.storyWeek = 0;
                    PlayState.campaignScore = 0;
                    
                    new FlxTimer().start(1, function(tmr:FlxTimer)
                        {
                            isCutscene = true;
                            PlayState.isStoryMode = true;
                            remove(click);
                            trace(PlayState.isStoryMode);
                            LoadingState.loadAndSwitchState(new PlayState(), true);
                            
                        });
                }
            }
        if (FlxG.mouse.overlaps(gar))
        {
            if (FlxG.mouse.justPressed)
            {
                fancyOpenURL('https://www.youtube.com/watch?v=RpvkcHCg70M');
            }
        }
        if (FlxG.mouse.overlaps(bal))
            {
                if (FlxG.mouse.justPressed)
                {
                    fancyOpenURL('https://youtu.be/q9TLPYJyVjc');
                }
            }
        if (FlxG.mouse.overlaps(jz))
            {
                if (FlxG.mouse.justPressed)
                {
                    fancyOpenURL('https://youtu.be/txeSIc5LyMw');
                }
            }
        if (FlxG.mouse.overlaps(al))
            {
                if (FlxG.mouse.justPressed)
                {
                    fancyOpenURL('https://youtu.be/XeP9xgsN8no');
                }
            }
        if (FlxG.mouse.overlaps(tae))
            {
                if (FlxG.mouse.justPressed)
                {
                    fancyOpenURL('https://youtu.be/dbVXpVl3j2U');
                }
            }
        if (FlxG.mouse.overlaps(sonic))
            {
                if (FlxG.mouse.justPressed)
                {
                    fancyOpenURL('https://youtu.be/23ILe4eVoJo');
                }
            }
        if (FlxG.mouse.overlaps(mix))
            {
                if (FlxG.mouse.justPressed)
                {
                    fancyOpenURL('https://www.youtube.com/watch?v=JTzpv2uyyPQ&list=RDCMUC37JdJiD6GykkB2HtNLIsRg&start_radio=1&rv=JTzpv2uyyPQ&t=1');
                }
            }
        super.update(elapsed);
    }
    public function fancyOpenURL(schmancy:String)
		{
			#if linux
			Sys.command('/usr/bin/xdg-open', [schmancy, "&"]);
			#else
			FlxG.openURL(schmancy);
			#end
		}
}