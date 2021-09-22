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
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

class CreditShit extends MusicBeatSubstate
{
    //alots of Yandare Dev Moment Sorry
    //if else if else if else if else
    //And?
    var bg:FlxSprite;
   
    var paper:FlxSprite;
    var paper2:FlxSprite;
    var paper3:FlxSprite;
    var paper4:FlxSprite;
    var paper5:FlxSprite;
    var paper6:FlxSprite;
    var paper7:FlxSprite;
    var twittershit:FlxSprite;
    var youtubeshit:FlxSprite;
    var infopaper:FlxSprite;
    var videogroup:FlxTypedGroup<FlxSprite>;
    var curSelected:Int = 0;
    var txt:String = "";
    var text:FlxText;
    var jz:Bool = false;
    var kal:Bool = false;
    var taeyai:Bool = false;
    var atom:Bool = false;
    var blin:Bool = false;
    var pee:Bool = false;
    var mami:Bool = false;
    override function create()
        {
            FlxG.mouse.visible = true;
            bg = new FlxSprite().loadGraphic(Paths.image('credit/CreditBG', 'preload'));
            bg.setGraphicSize(FlxG.width);
            bg.antialiasing = true;
            bg.updateHitbox();
            bg.screenCenter();
            bg.scrollFactor.set();
            add(bg);

            txt = "Click To See Cool People.";
            text = new FlxText(350, 0, FlxG.width,txt,32);
            text.size = 36;
            text.borderStyle = OUTLINE;
			text.borderSize = 3;
			text.borderColor = FlxColor.BLACK;
            add(text);

            paper = new FlxSprite(0,0);
            paper.setGraphicSize(FlxG.width);
            paper.frames = Paths.getSparrowAtlas('credit/creditpick', 'preload');
            paper.animation.addByPrefix('jz', 'Card10', 24, true);
			paper.animation.play('jz');
            paper.antialiasing = true;
            paper.x = 65;
            paper.y = 120;
            paper.scale.set(0.5, 0.5);
            paper.updateHitbox();
            //click.screenCenter();
            paper.scrollFactor.set();
            add(paper);

            paper2 = new FlxSprite(0,0);
            paper2.setGraphicSize(FlxG.width);
            paper2.frames = Paths.getSparrowAtlas('credit/creditpick', 'preload');
            paper2.animation.addByPrefix('jz', 'Card20', 24, true);
			paper2.animation.play('jz');
            paper2.antialiasing = true;
            paper2.x = 380;
            paper2.y = 120;
            paper2.scale.set(0.5, 0.5);
            paper2.updateHitbox();
            //click.screenCenter();
            paper2.scrollFactor.set();
            add(paper2);

            paper3 = new FlxSprite(0,0);
            paper3.setGraphicSize(FlxG.width);
            paper3.frames = Paths.getSparrowAtlas('credit/creditpick', 'preload');
            paper3.animation.addByPrefix('jz', 'Card30', 24, true);
			paper3.animation.play('jz');
            paper3.antialiasing = true;
            paper3.x = 700;
            paper3.y = 120;
            paper3.scale.set(0.5, 0.5);
            paper3.updateHitbox();
            //click.screenCenter();
            paper3.scrollFactor.set();
            add(paper3);

            paper4 = new FlxSprite(0,0);
            paper4.setGraphicSize(FlxG.width);
            paper4.frames = Paths.getSparrowAtlas('credit/creditpick', 'preload');
            paper4.animation.addByPrefix('jz', 'Card40', 24, true);
			paper4.animation.play('jz');
            paper4.antialiasing = true;
            paper4.x = 380;
            paper4.y = 400;
            paper4.scale.set(0.5, 0.5);
            paper4.updateHitbox();
            //click.screenCenter();
            paper4.scrollFactor.set();
            add(paper4);

            paper5 = new FlxSprite(0,0);
            paper5.setGraphicSize(FlxG.width);
            paper5.frames = Paths.getSparrowAtlas('credit/creditpick', 'preload');
            paper5.animation.addByPrefix('jz', 'Card50', 24, true);
			paper5.animation.play('jz');
            paper5.antialiasing = true;
            paper5.x = 700;
            paper5.y = 400;
            paper5.scale.set(0.5, 0.5);
            paper5.updateHitbox();
            //click.screenCenter();
            paper5.scrollFactor.set();
            add(paper5);

            paper6 = new FlxSprite(0,0);
            paper6.setGraphicSize(FlxG.width);
            paper6.frames = Paths.getSparrowAtlas('credit/creditpick', 'preload');
            paper6.animation.addByPrefix('jz', 'Card60', 24, true);
			paper6.animation.play('jz');
            paper6.antialiasing = true;
            paper6.x = 1000;
            paper6.y = 120;
            paper6.scale.set(0.5, 0.5);
            paper6.updateHitbox();
            //click.screenCenter();
            paper6.scrollFactor.set();
            add(paper6);

            paper7 = new FlxSprite(0,0);
            paper7.setGraphicSize(FlxG.width);
            paper7.frames = Paths.getSparrowAtlas('credit/creditpick', 'preload');
            paper7.animation.addByPrefix('jz', 'Card7 0', 24, true);
			paper7.animation.play('jz');
            paper7.antialiasing = true;
            paper7.x = 65;
            paper7.y = 400;
            paper7.scale.set(0.5, 0.5);
            paper7.updateHitbox();
            //click.screenCenter();
            paper7.scrollFactor.set();
            add(paper7);

            infopaper = new FlxSprite(0,0);
            infopaper.setGraphicSize(FlxG.width);
            infopaper.frames = Paths.getSparrowAtlas('credit/creditinfo', 'preload');
            infopaper.animation.addByPrefix('jz', 'creditinfo jzboy', 24, true);
			infopaper.animation.addByPrefix('mami', 'creditinfo mami', 24, true);
            infopaper.animation.addByPrefix('moro', 'creditinfo moro', 24, true);
            infopaper.animation.addByPrefix('pee', 'creditinfo ptagorad', 24, true);
            infopaper.animation.addByPrefix('blin', 'creditinfo rareblin', 24, true);
            infopaper.animation.addByPrefix('taeyai', 'creditinfo taeyai', 24, true);
            infopaper.animation.addByPrefix('kal', 'creditinfo foot', 24, true);
            infopaper.animation.addByPrefix('atom', 'creditinfo atomixx', 24, true);
            infopaper.antialiasing = true;
            infopaper.x = 690;
            infopaper.y -= 1000;
            infopaper.scale.set(0.5, 0.5);
            infopaper.updateHitbox();
            //click.screenCenter();
            infopaper.scrollFactor.set();
            add(infopaper);

            twittershit = new FlxSprite(0,0);
            twittershit.y += 100; 
            twittershit.x = 10000;
            //twittershit.setGraphicSize(FlxG.width);
            twittershit.frames = Paths.getSparrowAtlas('credit/mediaButtons', 'preload');
            twittershit.animation.addByPrefix('twitter', 'twitter white0', 24, true);
            twittershit.animation.addByPrefix('select', 'twitter hover0', 24, true);
            twittershit.animation.play('twitter');
            
            
            youtubeshit = new FlxSprite(0,0);
            youtubeshit.x = 10000;
            youtubeshit.y += 400; 
            //youtubeshit.setGraphicSize(FlxG.width);
            youtubeshit.frames = Paths.getSparrowAtlas('credit/mediaButtons', 'preload');
            youtubeshit.animation.addByPrefix('youtube', 'youtube white0', 24, true);
            youtubeshit.animation.addByPrefix('select', 'youtube hover0', 24, true);
            youtubeshit.animation.play('youtube');
            
            add(twittershit);
            add(youtubeshit);

            trace(youtubeshit);
            trace(twittershit);
            trace(text);
        
        }
    override function update(elapsed:Float)
    {
        if (FlxG.sound.music != null)
            Conductor.songPosition = FlxG.sound.music.time;

        if (FlxG.keys.justPressed.ESCAPE)
        {
            if(jz)
                {
                    FlxTween.tween(infopaper, {y: -1000}, {ease: FlxEase.expoInOut});
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper2, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper3, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper4, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper5, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper6, {x: 1000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper7, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 10000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 10000}, {ease: FlxEase.expoInOut});
                        });
                    new FlxTimer().start(1, function(tmr:FlxTimer)
                     {
                        FlxTween.tween(paper, {y: 120}, {ease: FlxEase.expoInOut});
                     });
                     jz = false;
                }
            else if (kal)
                {
                    FlxTween.tween(infopaper, {y: -1000}, {ease: FlxEase.expoInOut});
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper3, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper4, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper5, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper6, {x: 1000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper7, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 10000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 10000}, {ease: FlxEase.expoInOut});
                        });
                    new FlxTimer().start(1, function(tmr:FlxTimer)
                     {
                        FlxTween.tween(paper2, {y: 120}, {ease: FlxEase.expoInOut});
                     });
                     kal = false;
                }
            else if (taeyai)
                {
                    FlxTween.tween(infopaper, {y: -1000}, {ease: FlxEase.expoInOut});
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper2, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper4, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper5, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper6, {x: 1000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper7, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 10000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 10000}, {ease: FlxEase.expoInOut});
                        });
                    new FlxTimer().start(1, function(tmr:FlxTimer)
                     {
                        FlxTween.tween(paper3, {y: 120}, {ease: FlxEase.expoInOut});
                     });
                     taeyai = false;
                }
             else if (atom)
                {
                    FlxTween.tween(infopaper, {y: -1000}, {ease: FlxEase.expoInOut});
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper2, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper3, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper5, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper6, {x: 1000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper7, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 10000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 10000}, {ease: FlxEase.expoInOut});
                        });
                    new FlxTimer().start(1, function(tmr:FlxTimer)
                     {
                        FlxTween.tween(paper4, {y: 400}, {ease: FlxEase.expoInOut});
                     });
                     atom = false;
                }
            else if (blin)
                {
                    FlxTween.tween(infopaper, {y: -1000}, {ease: FlxEase.expoInOut});
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper2, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper3, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper4, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper6, {x: 1000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper7, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 10000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 10000}, {ease: FlxEase.expoInOut});
                        });
                    new FlxTimer().start(1, function(tmr:FlxTimer)
                     {
                        FlxTween.tween(paper5, {y: 400}, {ease: FlxEase.expoInOut});
                     });
                     blin = false;
                }
            else if (pee)
                {
                    FlxTween.tween(infopaper, {y: -1000}, {ease: FlxEase.expoInOut});
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper2, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper3, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper4, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper5, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper7, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 10000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 10000}, {ease: FlxEase.expoInOut});
                        });
                    new FlxTimer().start(1, function(tmr:FlxTimer)
                     {
                        FlxTween.tween(paper6, {y: 120}, {ease: FlxEase.expoInOut});
                     });
                     pee = false;
                }
            else if (mami)
                {
                    FlxTween.tween(infopaper, {y: -1000}, {ease: FlxEase.expoInOut});
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper, {x: 65}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper2, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper3, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper4, {x: 380}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper5, {x: 700}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper6, {x: 1000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 10000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 10000}, {ease: FlxEase.expoInOut});
                        });
                    new FlxTimer().start(1, function(tmr:FlxTimer)
                     {
                        FlxTween.tween(paper7, {y: 400}, {ease: FlxEase.expoInOut});
                     });
                     mami = false;
                }
            else
                {
                    FlxG.mouse.visible = false;
                    FlxG.switchState(new MainMenuState());
                }
            
        }
        if (FlxG.mouse.overlaps(twittershit))
            {
                if (FlxG.mouse.justPressed)
                {
                    if(jz)
                        {
                            fancyOpenURL('https://twitter.com/JzBoyAnims');
                        }
                    else if(kal)
                        {
                            fancyOpenURL('https://twitter.com/Kal_050');
                        }
                    else  if(taeyai)
                        {
                            fancyOpenURL('https://twitter.com/Taeyai_');
                        }
                    else if(atom)
                        {
                            fancyOpenURL('https://twitter.com/imjustatomixx');
                        }
                    else if(blin)
                        {
                            fancyOpenURL('https://twitter.com/RareWubboxer');
                        }
                    else if(pee)
                        {
                            fancyOpenURL('https://www.youtube.com/watch?v=dQw4w9WgXcQ');
                        }
                    else if(mami)
                        {
                            fancyOpenURL('https://twitter.com/mami_pipo');
                        }
                    twittershit.animation.play('select');
                    new FlxTimer().start(0.03, function(tmr:FlxTimer)
                        {
                            twittershit.animation.play('twitter');
                        });
                }
            }
        if (FlxG.mouse.overlaps(youtubeshit))
            {
                if (FlxG.mouse.justPressed)
                    {
                        if(jz)
                            {
                                fancyOpenURL('https://www.youtube.com/c/JzBoy');
                            }
                        else if(kal)
                            {
                                fancyOpenURL('https://www.youtube.com/channel/UCXNXFvPaPOcGKN2Uize57LA');
                            }
                        else  if(taeyai)
                            {
                                fancyOpenURL('https://www.youtube.com/c/TaeYai/featured');
                            }
                        else if(atom)
                            {
                                fancyOpenURL('https://www.youtube.com/channel/UCNHnf2JgOLaGyrBeIBJWSYg');
                            }
                        else if(blin)
                            {
                                fancyOpenURL('https://www.youtube.com/channel/UCnTN-0q7Wv1zqvBXQ_g4gZA');
                            }
                        else if(pee)
                            {
                                fancyOpenURL('https://www.youtube.com/channel/UCPjEXvh-57IBh-KVnzr1gMg');
                            }
                        else if(mami)
                            {
                                fancyOpenURL('https://www.youtube.com/c/MamiPipO');
                            }
                    youtubeshit.animation.play('select');
                    new FlxTimer().start(0.03, function(tmr:FlxTimer)
                        {
                            youtubeshit.animation.play('youtube');
                        });
                    }
            }
        
        if (FlxG.mouse.overlaps(paper))
        {
            if (FlxG.mouse.justPressed)
            {
                infopaper.animation.play('jz');
                FlxTween.tween(paper, {y: -1000}, {ease: FlxEase.expoInOut});
                jz = true;
                new FlxTimer().start(0.5, function(tmr:FlxTimer)
                    {
                        FlxTween.tween(text, {y: -600}, {ease: FlxEase.expoInOut});
                        FlxTween.tween(paper2, {x: -9000}, {ease: FlxEase.expoInOut});
                        FlxTween.tween(paper3, {x: -9000}, {ease: FlxEase.expoInOut});
                        FlxTween.tween(paper4, {x: -9000}, {ease: FlxEase.expoInOut});
                        FlxTween.tween(paper5, {x: -9000}, {ease: FlxEase.expoInOut});
                        FlxTween.tween(paper6, {x: -9000}, {ease: FlxEase.expoInOut});
                        FlxTween.tween(paper7, {x: -9000}, {ease: FlxEase.expoInOut});
                        FlxTween.tween(twittershit, {x: 0}, {ease: FlxEase.expoInOut});
                        FlxTween.tween(youtubeshit, {x: 0}, {ease: FlxEase.expoInOut});
                    });
                 new FlxTimer().start(1, function(tmr:FlxTimer)
                     {
                        FlxTween.tween(infopaper, {y: 100}, {ease: FlxEase.expoInOut});
                     });
            }
        }
        if (FlxG.mouse.overlaps(paper2))
            {
                if (FlxG.mouse.justPressed)
                {
                    infopaper.animation.play('kal');
                    FlxTween.tween(paper2, {y: -1000}, {ease: FlxEase.expoInOut});
                    kal = true;
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: -600}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper3, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper4, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper5, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper6, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper7, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 0}, {ease: FlxEase.expoInOut});
                        });
                     new FlxTimer().start(1, function(tmr:FlxTimer)
                         {
                            FlxTween.tween(infopaper, {y: 100}, {ease: FlxEase.expoInOut});
                         });
                }
            }
         if (FlxG.mouse.overlaps(paper3))
        {
            if (FlxG.mouse.justPressed)
            {
                if (FlxG.mouse.justPressed)
                    {
                        infopaper.animation.play('taeyai');
                        FlxTween.tween(paper3, {y: -1000}, {ease: FlxEase.expoInOut});
                        taeyai = true;
                        new FlxTimer().start(0.5, function(tmr:FlxTimer)
                            {
                                FlxTween.tween(text, {y: -600}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper2, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper4, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper5, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper6, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper7, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(twittershit, {x: 0}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(youtubeshit, {x: 0}, {ease: FlxEase.expoInOut});
                            });
                         new FlxTimer().start(1, function(tmr:FlxTimer)
                             {
                                FlxTween.tween(infopaper, {y: 100}, {ease: FlxEase.expoInOut});
                             });
                    }
            }
        }
         if (FlxG.mouse.overlaps(paper4))
        {
            if (FlxG.mouse.justPressed)
            {
                if (FlxG.mouse.justPressed)
                    {
                        infopaper.animation.play('atom');
                        FlxTween.tween(paper4, {y: -1000}, {ease: FlxEase.expoInOut});
                        atom = true;
                        new FlxTimer().start(0.5, function(tmr:FlxTimer)
                            {
                                FlxTween.tween(text, {y: -600}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper2, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper3, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper5, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper6, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper7, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(twittershit, {x: 0}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(youtubeshit, {x: 0}, {ease: FlxEase.expoInOut});
                            });
                         new FlxTimer().start(1, function(tmr:FlxTimer)
                             {
                                FlxTween.tween(infopaper, {y: 100}, {ease: FlxEase.expoInOut});
                             });
                    }
            }
        }
         if (FlxG.mouse.overlaps(paper5))
        {
            if (FlxG.mouse.justPressed)
                {
                    infopaper.animation.play('blin');
                    FlxTween.tween(paper5, {y: -1000}, {ease: FlxEase.expoInOut});
                    blin = true;
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: -600}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper2, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper3, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper4, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper6, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper7, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 0}, {ease: FlxEase.expoInOut});
                        });
                     new FlxTimer().start(1, function(tmr:FlxTimer)
                         {
                            FlxTween.tween(infopaper, {y: 100}, {ease: FlxEase.expoInOut});
                         });
                }
        }
         if (FlxG.mouse.overlaps(paper6))
        {
            if (FlxG.mouse.justPressed)
                {
                    infopaper.animation.play('pee');
                    FlxTween.tween(paper6, {y: -1000}, {ease: FlxEase.expoInOut});
                    pee = true;
                    new FlxTimer().start(0.5, function(tmr:FlxTimer)
                        {
                            FlxTween.tween(text, {y: -600}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper2, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper3, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper4, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper5, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(paper7, {x: -9000}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(twittershit, {x: 0}, {ease: FlxEase.expoInOut});
                            FlxTween.tween(youtubeshit, {x: 0}, {ease: FlxEase.expoInOut});
                        });
                     new FlxTimer().start(1, function(tmr:FlxTimer)
                         {
                            FlxTween.tween(infopaper, {y: 100}, {ease: FlxEase.expoInOut});
                         });
                }
        }
         if (FlxG.mouse.overlaps(paper7))
        {
            if (FlxG.mouse.justPressed)
            {
                if (FlxG.mouse.justPressed)
                    {
                        infopaper.animation.play('mami');
                        FlxTween.tween(paper7, {y: -1000}, {ease: FlxEase.expoInOut});
                        mami = true;
                        new FlxTimer().start(0.5, function(tmr:FlxTimer)
                            {
                                FlxTween.tween(text, {y: -600}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper2, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper3, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper4, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper5, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(paper6, {x: -9000}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(twittershit, {x: 0}, {ease: FlxEase.expoInOut});
                                FlxTween.tween(youtubeshit, {x: 0}, {ease: FlxEase.expoInOut});
                            });
                         new FlxTimer().start(1, function(tmr:FlxTimer)
                             {
                                FlxTween.tween(infopaper, {y: 100}, {ease: FlxEase.expoInOut});
                             });
                    }
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