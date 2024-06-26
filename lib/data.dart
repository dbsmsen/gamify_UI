class GameImage{
  String url;
  String title;
  GameImage(this.url, this.title);
}

class Game{
  String title;
  GameImage coverImage;
  late List<GameImage> images;
  String description;
  String studio;
  Game(this.title, this.coverImage, this.description, this.studio);

}

List <Game> featuredGames =[
  Game("UNCHARTED 6",
    GameImage("https://interfaceingame.com/wp-content/uploads/uncharted-4/uncharted-4-loading.png",
        ""),
    "",
    "Naughty Dog",
  ),
  Game("HITMAN: DEMOLITION",
    GameImage("https://www.giantfreakinrobot.com/wp-content/uploads/2021/09/1026607-hitman-absolution-hd-wallpoh-1200.jpeg",
        ""),
    "",
    "IO Interactive A/S ",
  ),
  Game("THE LAST OF US",
    GameImage("https://images5.alphacoders.com/338/thumb-1920-338417.jpg",
        ""),
    "",
    "Naughty Dog",
  ),
  Game("ASSASSINS'S CREED",
    GameImage("https://wallpapercg.com/media/ts_orig/16969.webp",
        ""),
    "",
    "Ubisoft Montreal",
  ),
  Game("FAR CRY 7: RETURNS",
    GameImage("https://c4.wallpaperflare.com/wallpaper/1004/102/344/far-cry-far-cry-5-video-game-wallpaper-preview.jpg",
        ""),
    "",
    "Ubisoft Montreal",
  ),
];

List<Game> games = [
  Game("God of War",
    GameImage("https://i.pinimg.com/564x/26/14/da/2614da7391f72d5d86ae1722cd8e09f0.jpg",
        ""),
    "",
    "",
  ),
  Game("GTA VI",
      GameImage("https://img.freepik.com/premium-photo/gta-6-game-background-with-unique-character-logo_641525-618.jpg?w=740",
      ""),
      "",
      "Rockstar Games",
      ),
  Game("Mortal Combat",
      GameImage("https://w0.peakpx.com/wallpaper/622/411/HD-wallpaper-mortal-kombat-11-poster-2019-games-mortal-kombat-logo.jpg",
          ""),
      "",
      "NetherRealm Studios",
      ),
  Game("Resident Evil 4",
    GameImage("https://cdn2.steamgriddb.com/grid/fa8469112345cdf93cd402092eb73d5d.png",
        ""),
    "",
    "",
  ),
  Game("Elden Ring",
    GameImage("https://wallpapers.com/images/high/elder-scrolls-online-video-game-assassin-lmbr5a61gprt9e5b.webp",
        ""),
    "",
    "",
  ),
  Game("Dota 2",
    GameImage("https://upload.wikimedia.org/wikipedia/en/3/31/Dota_2_Steam_artwork.jpg",
        ""),
    "",
    "",
  ),
  Game("XDefiant",
    GameImage("https://media.senscritique.com/media/000021306961/300/xdefiant.jpg",
        ""),
    "",
    "",
  ),
  Game("Hades",
    GameImage("https://upload.wikimedia.org/wikipedia/en/c/cc/Hades_cover_art.jpg",
        ""),
    "",
    "",
  ),
  Game("Payday 2",
    GameImage("https://cdn-bgp.bluestacks.com/BGP/us/gametiles_com.PopReach.PAYDAY.jpg",
        ""),
    "",
    "",
  ),
  Game("Diablo IV",
    GameImage("https://clouddosage.com/wp-content/uploads/2023/06/diabloiv.jpg",
        ""),
    "",
    "",
  ),
];

List<Game> gameBanner = [
  Game("Cyberpunk 2077",
    GameImage("https://images-4.gog-statics.com/946b24cf609adb4724eb0e6fe672fbc3db29f8ac5246c67aef128e8cd1dc320d.jpg",
        ""),
    "",
    "",
  )
];

List <Game> games2 = [
  Game("Forza Horizon",
    GameImage("https://preview.redd.it/nsefldaedtw71.png?auto=webp&s=d6873afa6df725267ac6fdc05bc566117b98cbc5",
        ""),
    "",
    "Turn 10 Studios ",
  ),
  Game("Red Dead Redemption II",
    GameImage("https://w0.peakpx.com/wallpaper/125/177/HD-wallpaper-red-dead-2-games-redemption-rockstar-thumbnail.jpg",
        ""),
    "",
    "",
  ),
  Game("Call of Duty: MWIII",
    GameImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMyQZTlNSNT48Jlh_bNECAvOJA1vhP4J5mKF11oyY2Ie8XK3S9JkUIqX-S6MIxHidjce0&usqp=CAU",
        ""),
    "",
    "",
  ),
  Game("Street Fighter",
    GameImage("https://image.api.playstation.com/vulcan/ap/rnd/202211/1408/l3bg7nmfPpPzam5jOVlaUFww.jpg?w=440",
        ""),
    "",
    "Rockstar Games",
  ),
  Game("WWE 2k25",
      GameImage("https://pbs.twimg.com/media/FwgCDSFXwAAhTkQ.jpg",
      ""),
  "",
  "Bandai Namco Entertainment",
  ),
  Game("Final Fantasy XIV",
    GameImage("https://m.media-amazon.com/images/I/81lk5oElBwL.jpg",
        ""),
    "",
    "",
  ),
  Game("Tekken 7",
    GameImage("https://thumbnails.pcgamingwiki.com/d/d4/Tekken_7_cover.jpg/300px-Tekken_7_cover.jpg",
        ""),
    "",
    "Bandai Namco Entertainment",
  ),
  Game("Spider-Man",
    GameImage("https://media.karousell.com/media/photos/products/2023/2/18/marvels_spiderman_miles_morale_1676735924_b1fb7834_progressive",
        ""),
    "",
    "CyberConnect2",
  ),
  Game("Dragon Ball Z",
    GameImage("https://w0.peakpx.com/wallpaper/351/368/HD-wallpaper-the-dragon-ball-z-kakarot-day-one-update-is-huge-launch-released-dbz-kakarot.jpg",
        ""),
    "",
    "CyberConnect2",
  ),
  Game("Fallout New Vegas",
    GameImage("https://dlcfun.com/_next/image?url=https%3A%2F%2Fstorage.dlcfun.com%2Fdlcfun-public%2Fimages%2Fcategories%2F558c5d059731223b3ba83eb1090d993e.png&w=640&q=75",
        ""),
    "",
    "",
  ),
];
