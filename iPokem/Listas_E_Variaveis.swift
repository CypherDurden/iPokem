//
//  Listas_E_Variaveis.swift
//  iPokem
//
//  Created by Vitor Lopes on 31/07/25.
//

/*
 struct PokemonSprites: Decodable {
     var frontDefault: String
     var backDefault: String
 }
  
 struct PokemonApi: Decodable {
     var sprites: PokemonSprites
     var id: Int
     var name: String
     var weight: Int
     var height: Int
     var order: Int
     
     
 }
 */

    let pokEasterEggSprite = PokemonSprites(
        frontDefault: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi5UiK8dMsYUsXOsvPs42lAnK-aJ4FjCSaDgUeVwIclVBkxCKBUDspXW0D0fWmuxHXpsCjLhAoayKiOQ1UqxBOm2p1GYATyZXYy_orYnfHfRSXPYedn1Dax_eE5di2LoWf91WKkjAQUc0M/s1600/JE4.jpg",
        backDefault: "https://assets.audiomack.com/horrorstories/b04f7a63cbb6eeb921ebd508137aaef1263bf79cda3a5ccc32fcee3e46850835.jpeg"
    )
    
    let pokEasterEgg = PokemonApi(
        sprites: pokEasterEggSprite,
        id: 0,
        name: "??",
        weight: 99999,
        height: 99999,
        order: 99997
    )

//pokemonsApi.append(pokEasterEgg)
var pokemonsApi: [PokemonApi] = []
var procurados: [Procurado] = [
    Procurado(id:63, name:"abra", types: [.psychic], hunted: false),
    Procurado(id:142, name:"aerodactyl", types: [.rock, .flying], hunted: false),
    Procurado(id:65, name:"alakazam", types: [.psychic], hunted: false),
    Procurado(id:24, name:"arbok", types: [.poison], hunted: false),
    Procurado(id:59, name:"arcanine", types: [.fire], hunted: false),
    Procurado(id:144, name:"articuno", types: [.ice, .flying], hunted: false),
    Procurado(id:15, name:"beedrill", types: [.bug, .poison], hunted: false),
    Procurado(id:69, name:"bellsprout", types: [.grass, .poison], hunted: false),
    Procurado(id:9, name: "blastoise", types: [.water], hunted: false),
    Procurado(id:1, name: "bulbasaur", types: [.grass, .poison], hunted: false),
    Procurado(id:12, name:"butterfree", types: [.bug, .flying], hunted: false),
    Procurado(id:10, name:"caterpie", types: [.bug], hunted: false),
    Procurado(id:113, name:"chansey", types: [.normal], hunted: false),
    Procurado(id:6, name: "charizard", types: [.fire, .flying], hunted: false),
    Procurado(id:4, name: "charmander", types: [.fire], hunted: false),
    Procurado(id:5, name: "charmeleon", types: [.fire], hunted: false),
    Procurado(id:36, name:"clefable", types: [.fairy], hunted: false),
    Procurado(id:35, name:"clefairy", types: [.fairy], hunted: false),
    Procurado(id:91, name:"cloyster", types: [.water, .ice], hunted: false),
    Procurado(id:104, name:"cubone", types: [.ground], hunted: false),
    Procurado(id:87, name:"dewgong", types: [.water, .ice], hunted: false),
    Procurado(id:50, name:"diglett", types: [.ground], hunted: false),
    Procurado(id:132, name:"ditto", types: [.normal], hunted: false),
    Procurado(id:85, name:"dodrio", types: [.normal, .flying], hunted: false),
    Procurado(id:84, name:"doduo", types: [.normal, .flying], hunted: false),
    Procurado(id:148, name:"dragonair", types: [.dragon], hunted: false),
    Procurado(id:149, name:"dragonite", types: [.dragon, .flying], hunted: false),
    Procurado(id:147, name:"dratini", types: [.dragon], hunted: false),
    Procurado(id:96, name:"drowzee", types: [.psychic], hunted: false),
    Procurado(id:51, name:"dugtrio", types: [.ground], hunted: false),
    Procurado(id:133, name:"eevee", types: [.normal], hunted: false),
    Procurado(id:23, name:"ekans", types: [.poison], hunted: false),
    Procurado(id:125, name:"electabuzz", types: [.electric], hunted: false),
    Procurado(id:101, name:"electrode", types: [.electric], hunted: false),
    Procurado(id:102, name:"exeggcute", types: [.grass, .psychic], hunted: false),
    Procurado(id:103, name:"exeggutor", types: [.grass, .psychic], hunted: false),
    Procurado(id:83, name:"farfetchd", types: [.normal, .flying], hunted: false),
    Procurado(id:22, name:"fearow", types: [.normal, .flying], hunted: false),
    Procurado(id:136, name:"flareon", types: [.fire], hunted: false),
    Procurado(id:92, name:"gastly", types: [.ghost, .poison], hunted: false),
    Procurado(id:94, name:"gengar", types: [.ghost, .poison], hunted: false),
    Procurado(id:74, name:"geodude", types: [.rock, .ground], hunted: false),
    Procurado(id:44, name:"gloom", types: [.grass, .poison], hunted: false),
    Procurado(id:42, name:"golbat", types: [.poison, .flying], hunted: false),
    Procurado(id:118, name:"goldeen", types: [.water], hunted: false),
    Procurado(id:55, name:"golduck", types: [.water], hunted: false),
    Procurado(id:76, name:"golem", types: [.rock, .ground], hunted: false),
    Procurado(id:75, name:"graveler", types: [.rock, .ground], hunted: false),
    Procurado(id:88, name:"grimer", types: [.poison], hunted: false),
    Procurado(id:58, name:"growlithe", types: [.fire], hunted: false),
    Procurado(id:130, name:"gyarados", types: [.water, .flying], hunted: false),
    Procurado(id:93, name:"haunter", types: [.ghost, .poison], hunted: false),
    Procurado(id:107, name:"hitmonchan", types: [.fighting], hunted: false),
    Procurado(id:106, name:"hitmonlee", types: [.fighting], hunted: false),
    Procurado(id:116, name:"horsea", types: [.water], hunted: false),
    Procurado(id:97, name:"hypno", types: [.psychic], hunted: false),
    Procurado(id:2, name: "ivysaur", types: [.grass, .poison], hunted: false),
    Procurado(id:39, name:"jigglypuff", types: [.normal, .fairy], hunted: false),
    Procurado(id:135, name:"jolteon", types: [.electric], hunted: false),
    Procurado(id:124, name:"jynx", types: [.ice, .psychic], hunted: false),
    Procurado(id:140, name:"kabuto", types: [.rock, .water], hunted: false),
    Procurado(id:141, name:"kabutops", types: [.rock, .water], hunted: false),
    Procurado(id:64, name:"kadabra", types: [.psychic], hunted: false),
    Procurado(id:14, name:"kakuna", types: [.bug, .poison], hunted: false),
    Procurado(id:115, name:"kangaskhan", types: [.normal], hunted: false),
    Procurado(id:99, name:"kingler", types: [.water], hunted: false),
    Procurado(id:109, name:"koffing", types: [.poison], hunted: false),
    Procurado(id:98, name:"krabby", types: [.water], hunted: false),
    Procurado(id:131, name:"lapras", types: [.water, .ice], hunted: false),
    Procurado(id:108, name:"lickitung", types: [.normal], hunted: false),
    Procurado(id:68, name:"machamp", types: [.fighting], hunted: false),
    Procurado(id:67, name:"machoke", types: [.fighting], hunted: false),
    Procurado(id:66, name:"machop", types: [.fighting], hunted: false),
    Procurado(id:129, name:"magikarp", types: [.water], hunted: false),
    Procurado(id:126, name:"magmar", types: [.fire], hunted: false),
    Procurado(id:81, name:"magnemite", types: [.electric, .steel], hunted: false),
    Procurado(id:82, name:"magneton", types: [.electric, .steel], hunted: false),
    Procurado(id:56, name:"mankey", types: [.fighting], hunted: false),
    Procurado(id:105, name:"marowak", types: [.ground], hunted: false),
    Procurado(id:52, name:"meowth", types: [.normal], hunted: false),
    Procurado(id:11, name:"metapod", types: [.bug], hunted: false),
    Procurado(id:151, name:"mew", types: [.psychic], hunted: false),
    Procurado(id:150, name:"mewtwo", types: [.psychic], hunted: false),
    Procurado(id:146, name:"moltres", types: [.fire, .flying], hunted: false),
    Procurado(id:122, name:"mr-mime", types: [.psychic, .fairy], hunted: false),
    Procurado(id:89, name:"muk", types: [.poison], hunted: false),
    Procurado(id:34, name:"nidoking", types: [.poison, .ground], hunted: false),
    Procurado(id:31, name:"nidoqueen", types: [.poison, .ground], hunted: false),
    Procurado(id:29, name:"nidoran-f", types: [.poison], hunted: false),
    Procurado(id:32, name:"nidoran-m", types: [.poison], hunted: false),
    Procurado(id:30, name:"nidorina", types: [.poison], hunted: false),
    Procurado(id:33, name:"nidorino", types: [.poison], hunted: false),
    Procurado(id:38, name:"ninetales", types: [.fire], hunted: false),
    Procurado(id:43, name:"oddish", types: [.grass, .poison], hunted: false),
    Procurado(id:138, name:"omanyte", types: [.rock, .water], hunted: false),
    Procurado(id:139, name:"omastar", types: [.rock, .water], hunted: false),
    Procurado(id:95, name:"onix", types: [.rock, .ground], hunted: false),
    Procurado(id:46, name:"paras", types: [.bug, .grass], hunted: false),
    Procurado(id:47, name:"parasect", types: [.bug, .grass], hunted: false),
    Procurado(id:53, name:"persian", types: [.normal], hunted: false),
    Procurado(id:18, name:"pidgeot", types: [.normal, .flying], hunted: false),
    Procurado(id:17, name:"pidgeotto", types: [.normal, .flying], hunted: false),
    Procurado(id:16, name:"pidgey", types: [.normal, .flying], hunted: false),
    Procurado(id:25, name:"pikachu", types: [.electric], hunted: false),
    Procurado(id:127, name:"pinsir", types: [.bug], hunted: false),
    Procurado(id:60, name:"poliwag", types: [.water], hunted: false),
    Procurado(id:61, name:"poliwhirl", types: [.water], hunted: false),
    Procurado(id:62, name:"poliwrath", types: [.water, .fighting], hunted: false),
    Procurado(id:77, name:"ponyta", types: [.fire], hunted: false),
    Procurado(id:137, name:"porygon", types: [.normal], hunted: false),
    Procurado(id:57, name:"primeape", types: [.fighting], hunted: false),
    Procurado(id:54, name:"psyduck", types: [.water], hunted: false),
    Procurado(id:26, name:"raichu", types: [.electric], hunted: false),
    Procurado(id:78, name:"rapidash", types: [.fire], hunted: false),
    Procurado(id:20, name:"raticate", types: [.normal], hunted: false),
    Procurado(id:19, name:"rattata", types: [.normal], hunted: false),
    Procurado(id:112, name:"rhydon", types: [.ground, .rock], hunted: false),
    Procurado(id:111, name:"rhyhorn", types: [.ground, .rock], hunted: false),
    Procurado(id:27, name:"sandshrew", types: [.ground], hunted: false),
    Procurado(id:28, name:"sandslash", types: [.ground], hunted: false),
    Procurado(id:123, name:"scyther", types: [.bug, .flying], hunted: false),
    Procurado(id:117, name:"seadra", types: [.water], hunted: false),
    Procurado(id:119, name:"seaking", types: [.water], hunted: false),
    Procurado(id:86, name:"seel", types: [.water], hunted: false),
    Procurado(id:90, name:"shellder", types: [.water], hunted: false),
    Procurado(id:80, name:"slowbro", types: [.water, .psychic], hunted: false),
    Procurado(id:79, name:"slowpoke", types: [.water, .psychic], hunted: false),
    Procurado(id:143, name:"snorlax", types: [.normal], hunted: false),
    Procurado(id:21, name:"spearow", types: [.normal, .flying], hunted: false),
    Procurado(id:7, name: "squirtle", types: [.water], hunted: false),
    Procurado(id:121, name:"starmie", types: [.water, .psychic], hunted: false),
    Procurado(id:120, name:"staryu", types: [.water], hunted: false),
    Procurado(id:114, name:"tangela", types: [.grass], hunted: false),
    Procurado(id:128, name:"tauros", types: [.normal], hunted: false),
    Procurado(id:72, name:"tentacool", types: [.water, .poison], hunted: false),
    Procurado(id:73, name:"tentacruel", types: [.water, .poison], hunted: false),
    Procurado(id:134, name:"vaporeon", types: [.water], hunted: false),
    Procurado(id:49, name:"venomoth", types: [.bug, .poison], hunted: false),
    Procurado(id:48, name:"venonat", types: [.bug, .poison], hunted: false),
    Procurado(id:3, name: "venusaur", types: [.grass, .poison], hunted: false),
    Procurado(id:71, name:"victreebel", types: [.grass, .poison], hunted: false),
    Procurado(id:45, name:"vileplume", types: [.grass, .poison], hunted: false),
    Procurado(id:100, name:"voltorb", types: [.electric], hunted: false),
    Procurado(id:37, name:"vulpix", types: [.fire], hunted: false),
    Procurado(id:8, name: "wartortle", types: [.water], hunted: false),
    Procurado(id:13, name:"weedle", types: [.bug, .poison], hunted: false),
    Procurado(id:70, name:"weepinbell", types: [.grass, .poison], hunted: false),
    Procurado(id:110, name:"weezing", types: [.poison], hunted: false),
    Procurado(id:40, name:"wigglytuff", types: [.normal, .fairy], hunted: false),
    Procurado(id:145, name:"zapdos", types: [.electric, .flying], hunted: false),
    Procurado(id:41, name:"zubat", types: [.poison, .flying], hunted: false),
    Procurado(id:00, name:"??", types: [.death, .hell], hunted: false)
    ]

