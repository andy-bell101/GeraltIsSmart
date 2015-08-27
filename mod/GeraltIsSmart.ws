// Script adds basic recipes of all bombs, potions, and oils and the basic creatures (i.e. not the unique monsters) to the player's bestiary

class GeraltIsSmart
{
private var bestiaryDone : bool;
private var alchemyDone : bool;
private var recipeList : array<CName>;
private var bestiaryList : array<string>;

public function Initialize()
{
	recipeList.PushBack('Recipe for Beast Oil 1');
	recipeList.PushBack('Recipe for Cursed Oil 1');
	recipeList.PushBack('Recipe for Hanged Man Venom 1');
	recipeList.PushBack('Recipe for Hybrid Oil 1');
	recipeList.PushBack('Recipe for Insectoid Oil 1');
	recipeList.PushBack('Recipe for Magicals Oil 1');
	recipeList.PushBack('Recipe for Necrophage Oil 1');
	recipeList.PushBack('Recipe for Specter Oil 1');
	recipeList.PushBack('Recipe for Vampire Oil 1');
	recipeList.PushBack('Recipe for Draconids Oil 1');
	recipeList.PushBack('Recipe for Ogre Oil 1');
	recipeList.PushBack('Recipe for Relic Oil 1');
	recipeList.PushBack('Recipe for Dancing Star 1');
	recipeList.PushBack('Recipe for Devils Puffball 1');
	recipeList.PushBack('Recipe for Dwimeritium Bomb 1');
	recipeList.PushBack('Recipe for Dragons Dream 1');
	recipeList.PushBack('Recipe for Grapeshot 1');
	recipeList.PushBack('Recipe for Samum 1');
	recipeList.PushBack('Recipe for Silver Dust 1');
	recipeList.PushBack('Recipe for White Frost 1');
	recipeList.PushBack('Recipe for Blizzard 1');
	recipeList.PushBack('Recipe for Cat 1');
	recipeList.PushBack('Recipe for Full Moon 1');
	recipeList.PushBack('Recipe for Golden Oriole 1');
	recipeList.PushBack('Recipe for Killer Whale 1');
	recipeList.PushBack('Recipe for Maribor Forest 1');
	recipeList.PushBack('Recipe for Petris Philtre 1');
	recipeList.PushBack('Recipe for Swallow 1');
	recipeList.PushBack('Recipe for Tawny Owl 1');
	recipeList.PushBack('Recipe for Thunderbolt 1');
	recipeList.PushBack('Recipe for White Honey 1');
	recipeList.PushBack('Recipe for White Raffards Decoction 1');
	recipeList.PushBack('Recipe for Black Blood 1');
	
	//bestiaryList.PushBack()
}



function addRecipesAndBestiary()
{
	var i : int;
	
	for ( i = 0; i < recipeList.Size()-1; i+=1)
	{
		GetWitcherPlayer().AddAlchemyRecipe(recipeList[i], true);
	}
	
	addBestiary();
}

private function addBestiary()
	{
		var i, j, r : int;
		var manager : CWitcherJournalManager;
		var resource : array<CJournalResource>;
		var entryBase : CJournalBase;
		var childGroups : array<CJournalBase>;
		var childEntries : array<CJournalBase>;
		var descriptionGroup : CJournalCreatureDescriptionGroup;
		var descriptionEntry : CJournalCreatureDescriptionEntry;
	
		manager = theGame.GetJournalManager();

		resource.PushBack( (CJournalResource)LoadResource( "BestiaryWolf" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryDog" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryBear" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryWerewolf" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryLycanthrope" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryWerebear" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryMiscreant" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryCockatrice" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryBasilisk" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryWyvern" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryForktail" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryHarpy" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryErynia" ) );
		resource.PushBack( (CJournalResource)LoadResource( "BestiarySiren" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiarySuccubus" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryGriffin" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryEndriagaWorker" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryEndriagaTruten" ) );
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryEndriaga" ) );
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryCrabSpider" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryArmoredArachas" ) );
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryPoisonousArachas" ) );
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryGolem" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryElemental" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryIceGolem" ) );
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryFireElemental" ) );
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryWhMinion" ) );
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryGhoul" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryAlghoul" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryGreaterRotFiend" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryDrowner" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryGraveHag" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryWaterHag" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryFogling" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryBies" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryCzart" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryLeshy" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiarySilvan" ) );
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryMoonwright" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryNoonwright" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryPesta" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryWraith" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryHim" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryNekker" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryIceTroll" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryCaveTroll" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryCyclop" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryIceGiant" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryEkkima" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryHigherVampire" ) ); 
		resource.PushBack( (CJournalResource)LoadResource( "BestiaryKatakan" ) ); 
		
		for (r=0; r < resource.Size(); r += 1 )
		{
			if ( !resource[ r ] )
			{
				
				continue;
			}
			entryBase = resource[r].GetEntry();
			if ( entryBase )
			{
				manager.ActivateEntry( entryBase, JS_Active );
				manager.SetEntryHasAdvancedInfo( entryBase, true );
				
				manager.GetAllChildren( entryBase, childGroups );
				for ( i = 0; i < childGroups.Size(); i += 1 )
				{	
					descriptionGroup = ( CJournalCreatureDescriptionGroup )childGroups[ i ];
					if ( descriptionGroup )
					{
						manager.GetAllChildren( descriptionGroup, childEntries );
						for ( j = 0; j < childEntries.Size(); j += 1 )
						{
							descriptionEntry = ( CJournalCreatureDescriptionEntry )childEntries[ j ];
							if ( descriptionEntry )
							{
								manager.ActivateEntry( descriptionEntry, JS_Active );
							}
						}
						break;
					}
				}
			}
		}	
	}
}
