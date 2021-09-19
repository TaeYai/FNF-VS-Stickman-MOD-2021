import flixel.ui.FlxButton;
import flixel.text.FlxText;
import flixel.addons.api.FlxGameJolt as GJApi;
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
            //click.screenCenter();
            click.scrollFactor.set();
            add(click);
        
        }
    override function update(elapsed:Float)
    {
        if (FlxG.sound.music != null)
            Conductor.songPosition = FlxG.sound.music.time;

        if (FlxG.keys.justPressed.ESCAPE)
        {
            FlxG.mouse.visible = false;
            FlxG.switchState(new MainMenuState());
        }

        if (FlxG.mouse.overlaps(click))
        {
            if (FlxG.mouse.justPressed)
            {
                FlxG.mouse.visible = false;
                PlayState.storyPlaylist = ['Sticking','Fight','Serious'];
				PlayState.isStoryMode = true;
	
				PlayState.storyDifficulty = 2;
	
				PlayState.SONG = Song.loadFromJson(StringTools.replace(PlayState.storyPlaylist[0]," ", "-").toLowerCase() + '-hard', StringTools.replace(PlayState.storyPlaylist[0]," ", "-").toLowerCase());
				PlayState.storyWeek = 7;
				PlayState.campaignScore = 0;
				new FlxTimer().start(1, function(tmr:FlxTimer)
				{
					LoadingState.loadAndSwitchState(new PlayState(), true);
				});
            }
        }
        super.update(elapsed);
    }
}