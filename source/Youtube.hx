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
    var videolist:Array<String> = ['gar', 'jz', 'sonic', 'tae', 'jzth', 'po', 'soul', 'baldi'];
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

            videogroup = new FlxTypedGroup<FlxSprite>();
		    add(videogroup);

            var tex = Paths.getSparrowAtlas('vid');

            for (i in 0...videolist.length)
            {
                var video:FlxSprite = new FlxSprite(0, 60 + (i * 160));
                video.frames = tex;
                video.animation.addByPrefix('idle', videolist[i], 24);
                video.animation.play('idle');
                video.ID = i;
                //menuItem.screenCenter(X);
                
                video.scrollFactor.set(1, 1);
                video.antialiasing = true;
                video.updateHitbox();
                switch (i) 
			    {
				    case 0:
				    	video.x = 900;
				    	video.y = 50;
				    case 1:
				    	video.x = 900;
				    	video.y = 100;
			    	case 2:
			    		video.x = 900;
			    		video.y = 200;
			    	case 3:
			    		video.x = 900;
			    		video.y = 300;
                    case 4:
			    		video.x = 900;
			    		video.y = 400;
                    case 5:
			    		video.x = 900;
			    		video.y = 500;
                    case 6:
			    		video.x = 900;
			    		video.y = 600;
                    case 7:
			    		video.x = 900;
			    		video.y = 700;
			    }
                videogroup.add(video);

        }
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
                PlayState.storyPlaylist = ['Sticking','Fight','Serious',];
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
        if (FlxG.mouse.overlaps(videogroup))
            {
                if (FlxG.mouse.justPressed)
                {
                    if (videolist[curSelected] == 'sonic')
                        {
                            FlxG.switchState(new FreeplayState());
                        }
                }
            }
        super.update(elapsed);
    }

    function goToState()
        {
            var daChoice:String = videolist[curSelected];
    
            switch (daChoice)
            {
                case 'gar':
                    FlxG.switchState(new StoryMenuState());
                    trace("gar Selected");
                case 'jz':
                    FlxG.switchState(new FreeplayState());
    
                    trace("jz Selected");
    
                case 'sonic':
                    FlxG.switchState(new OptionsMenu());
                case 'tae':
                    FlxG.switchState(new OptionsMenu());
                case 'jzth':
                    FlxG.switchState(new OptionsMenu());
                 case 'po':
                    FlxG.switchState(new OptionsMenu());
                 case 'soul':
                    FlxG.switchState(new OptionsMenu());
                 case 'baldi':
                    FlxG.switchState(new OptionsMenu());
            }
        }
}