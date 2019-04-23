//
//  Ionicons.swift
//  JustIconFont
//
//  Created by YZF on 2019/4/23.
//

import Foundation

extension Ionicons: IconFontType, CaseIterable {
    
    public var filePath: String? {
        return Bundle(for: EmptyClass.self).path(forResource: "Ionicons", ofType: "ttf")
    }
    
    public var name: String {
        return "Ionicons"
    }
    
    public var unicode: String {
        return self.rawValue
    }
}


/// Ionicons v4.5.5
///
/// https://ionicons.com/
public enum Ionicons: String {
    case iosAdd = "\u{eb3f}"
    case iosAddCircle = "\u{eb40}"
    case iosAddCircleOutline = "\u{eb41}"
    case iosAirplane = "\u{eb3e}"
    case iosAlarm = "\u{eb47}"
    case iosAlbums = "\u{eb46}"
    case iosAlert = "\u{eb44}"
    case iosAmericanFootball = "\u{eb4d}"
    case iosAnalytics = "\u{eb51}"
    case iosAperture = "\u{eb43}"
    case iosApps = "\u{eb42}"
    case iosAppstore = "\u{eb48}"
    case iosArchive = "\u{eb4f}"
    case iosArrowBack = "\u{eb4b}"
    case iosArrowDown = "\u{eb45}"
    case iosArrowDropdown = "\u{eb58}"
    case iosArrowDropdownCircle = "\u{eb4a}"
    case iosArrowDropleft = "\u{eb49}"
    case iosArrowDropleftCircle = "\u{eb53}"
    case iosArrowDropright = "\u{eb4c}"
    case iosArrowDroprightCircle = "\u{eb4e}"
    case iosArrowDropup = "\u{eb54}"
    case iosArrowDropupCircle = "\u{eb50}"
    case iosArrowForward = "\u{eb5f}"
    case iosArrowRoundBack = "\u{eb5c}"
    case iosArrowRoundDown = "\u{eb55}"
    case iosArrowRoundForward = "\u{eb5b}"
    case iosArrowRoundUp = "\u{eb56}"
    case iosArrowUp = "\u{eb52}"
    case iosAt = "\u{eb59}"
    case iosAttach = "\u{eb63}"
    case iosBackspace = "\u{eb5d}"
    case iosBarcode = "\u{eb6a}"
    case iosBaseball = "\u{eb75}"
    case iosBasket = "\u{eb66}"
    case iosBasketball = "\u{eb5e}"
    case iosBatteryCharging = "\u{eb57}"
    case iosBatteryDead = "\u{eb60}"
    case iosBatteryFull = "\u{eb64}"
    case iosBeaker = "\u{eb5a}"
    case iosBed = "\u{eb69}"
    case iosBeer = "\u{eb61}"
    case iosBicycle = "\u{eb62}"
    case iosBluetooth = "\u{eb68}"
    case iosBoat = "\u{eb65}"
    case iosBody = "\u{eb7a}"
    case iosBonfire = "\u{eb82}"
    case iosBook = "\u{eb6f}"
    case iosBookmark = "\u{eb6b}"
    case iosBookmarks = "\u{eb6e}"
    case iosBowtie = "\u{eb6d}"
    case iosBriefcase = "\u{eb98}"
    case iosBrowsers = "\u{eb84}"
    case iosBrush = "\u{eb67}"
    case iosBug = "\u{eb7f}"
    case iosBuild = "\u{eb73}"
    case iosBulb = "\u{eb71}"
    case iosBus = "\u{eb6c}"
    case iosBusiness = "\u{eb79}"
    case iosCafe = "\u{eb72}"
    case iosCalculator = "\u{eb70}"
    case iosCalendar = "\u{eb7b}"
    case iosCall = "\u{eb7d}"
    case iosCamera = "\u{eb77}"
    case iosCar = "\u{eb9c}"
    case iosCard = "\u{eb74}"
    case iosCart = "\u{eb76}"
    case iosCash = "\u{ebfb}"
    case iosCellular = "\u{eb78}"
    case iosChatboxes = "\u{eb80}"
    case iosChatbubbles = "\u{eb90}"
    case iosCheckbox = "\u{eb81}"
    case iosCheckboxOutline = "\u{eb8e}"
    case iosCheckmark = "\u{eb7c}"
    case iosCheckmarkCircle = "\u{eb89}"
    case iosCheckmarkCircleOutline = "\u{eb7e}"
    case iosClipboard = "\u{eb93}"
    case iosClock = "\u{eb8a}"
    case iosClose = "\u{eba2}"
    case iosCloseCircle = "\u{ebfd}"
    case iosCloseCircleOutline = "\u{eb86}"
    case iosCloud = "\u{eb9b}"
    case iosCloudCircle = "\u{eb83}"
    case iosCloudDone = "\u{eb9f}"
    case iosCloudDownload = "\u{eb88}"
    case iosCloudOutline = "\u{eb8c}"
    case iosCloudUpload = "\u{eb8d}"
    case iosCloudy = "\u{eb91}"
    case iosCloudyNight = "\u{eb95}"
    case iosCode = "\u{ebdb}"
    case iosCodeDownload = "\u{eb8b}"
    case iosCodeWorking = "\u{eb97}"
    case iosCog = "\u{ebad}"
    case iosColorFill = "\u{eb85}"
    case iosColorFilter = "\u{eb9d}"
    case iosColorPalette = "\u{eb94}"
    case iosColorWand = "\u{eb87}"
    case iosCompass = "\u{ebe8}"
    case iosConstruct = "\u{ebaa}"
    case iosContact = "\u{eba1}"
    case iosContacts = "\u{ebfc}"
    case iosContract = "\u{eb96}"
    case iosContrast = "\u{eb92}"
    case iosCopy = "\u{ebba}"
    case iosCreate = "\u{eba3}"
    case iosCrop = "\u{eb8f}"
    case iosCube = "\u{ebe7}"
    case iosCut = "\u{eba5}"
    case iosDesktop = "\u{ebae}"
    case iosDisc = "\u{eb9e}"
    case iosDocument = "\u{eba4}"
    case iosDoneAll = "\u{eb99}"
    case iosDownload = "\u{ebdc}"
    case iosEasel = "\u{eb9a}"
    case iosEgg = "\u{eba0}"
    case iosExit = "\u{ebc9}"
    case iosExpand = "\u{ebb7}"
    case iosEye = "\u{ec13}"
    case iosEyeOff = "\u{eba9}"
    case iosFastforward = "\u{eba7}"
    case iosFemale = "\u{eba6}"
    case iosFiling = "\u{ebec}"
    case iosFilm = "\u{ebbb}"
    case iosFingerPrint = "\u{ebb3}"
    case iosFitness = "\u{ebac}"
    case iosFlag = "\u{ec12}"
    case iosFlame = "\u{eba8}"
    case iosFlash = "\u{ebbd}"
    case iosFlashOff = "\u{ebdd}"
    case iosFlashlight = "\u{ebb2}"
    case iosFlask = "\u{ec03}"
    case iosFlower = "\u{ebcb}"
    case iosFolder = "\u{ebe3}"
    case iosFolderOpen = "\u{ebb9}"
    case iosFootball = "\u{ec1d}"
    case iosFunnel = "\u{ebb0}"
    case iosGift = "\u{ec07}"
    case iosGitBranch = "\u{ebb5}"
    case iosGitCommit = "\u{ebab}"
    case iosGitCompare = "\u{ec6f}"
    case iosGitMerge = "\u{ebaf}"
    case iosGitNetwork = "\u{ebc1}"
    case iosGitPullRequest = "\u{ec17}"
    case iosGlasses = "\u{ebb4}"
    case iosGlobe = "\u{ebb1}"
    case iosGrid = "\u{ec76}"
    case iosHammer = "\u{ebca}"
    case iosHand = "\u{ebc3}"
    case iosHappy = "\u{ec75}"
    case iosHeadset = "\u{ec2b}"
    case iosHeart = "\u{ebbc}"
    case iosHeartDislike = "\u{ebb8}"
    case iosHeartEmpty = "\u{ec0f}"
    case iosHeartHalf = "\u{ebc5}"
    case iosHelp = "\u{ec20}"
    case iosHelpBuoy = "\u{ec78}"
    case iosHelpCircle = "\u{ebb6}"
    case iosHelpCircleOutline = "\u{ebbf}"
    case iosHome = "\u{ebcc}"
    case iosHourglass = "\u{ebc7}"
    case iosIceCream = "\u{ec10}"
    case iosImage = "\u{ebf3}"
    case iosImages = "\u{ebc2}"
    case iosInfinite = "\u{ec7f}"
    case iosInformation = "\u{ec18}"
    case iosInformationCircle = "\u{ebbe}"
    case iosInformationCircleOutline = "\u{ebd4}"
    case iosJet = "\u{ebd3}"
    case iosJournal = "\u{ebcd}"
    case iosKey = "\u{ec90}"
    case iosKeypad = "\u{ebc4}"
    case iosLaptop = "\u{ebc6}"
    case iosLeaf = "\u{ec26}"
    case iosLink = "\u{ebd2}"
    case iosList = "\u{ec27}"
    case iosListBox = "\u{ebc0}"
    case iosLocate = "\u{ebf4}"
    case iosLock = "\u{ebd1}"
    case iosLogIn = "\u{ec3e}"
    case iosLogOut = "\u{ebd5}"
    case iosMagnet = "\u{ebc8}"
    case iosMail = "\u{ebcf}"
    case iosMailOpen = "\u{ec2c}"
    case iosMailUnread = "\u{ebd9}"
    case iosMale = "\u{ec91}"
    case iosMan = "\u{ebe5}"
    case iosMap = "\u{ebe0}"
    case iosMedal = "\u{ebe1}"
    case iosMedical = "\u{ebce}"
    case iosMedkit = "\u{ec74}"
    case iosMegaphone = "\u{ec6e}"
    case iosMenu = "\u{ebd7}"
    case iosMic = "\u{ec40}"
    case iosMicOff = "\u{ebda}"
    case iosMicrophone = "\u{ebde}"
    case iosMoon = "\u{ebd0}"
    case iosMore = "\u{ec77}"
    case iosMove = "\u{ebdf}"
    case iosMusicalNote = "\u{ebd6}"
    case iosMusicalNotes = "\u{ec7a}"
    case iosNavigate = "\u{ec1e}"
    case iosNotifications = "\u{ebed}"
    case iosNotificationsOff = "\u{ebe4}"
    case iosNotificationsOutline = "\u{ec1c}"
    case iosNuclear = "\u{ec2f}"
    case iosNutrition = "\u{ebfa}"
    case iosOpen = "\u{ebd8}"
    case iosOptions = "\u{ec37}"
    case iosOutlet = "\u{ebf9}"
    case iosPaper = "\u{ebeb}"
    case iosPaperPlane = "\u{ebe9}"
    case iosPartlySunny = "\u{ec3c}"
    case iosPause = "\u{ebf5}"
    case iosPaw = "\u{ebee}"
    case iosPeople = "\u{ec50}"
    case iosPerson = "\u{ebf6}"
    case iosPersonAdd = "\u{ec4f}"
    case iosPhoneLandscape = "\u{ebe2}"
    case iosPhonePortrait = "\u{ec05}"
    case iosPhotos = "\u{ebf2}"
    case iosPie = "\u{ec04}"
    case iosPin = "\u{ec79}"
    case iosPint = "\u{ec4b}"
    case iosPizza = "\u{ebe6}"
    case iosPlanet = "\u{ec51}"
    case iosPlay = "\u{ebf7}"
    case iosPlayCircle = "\u{ebea}"
    case iosPodium = "\u{ec65}"
    case iosPower = "\u{ebef}"
    case iosPricetag = "\u{ec86}"
    case iosPricetags = "\u{ebf0}"
    case iosPrint = "\u{ec02}"
    case iosPulse = "\u{ec5a}"
    case iosQrScanner = "\u{ec09}"
    case iosQuote = "\u{ec1f}"
    case iosRadio = "\u{ec73}"
    case iosRadioButtonOff = "\u{ec5e}"
    case iosRadioButtonOn = "\u{ec00}"
    case iosRainy = "\u{ebf8}"
    case iosRecording = "\u{ec5f}"
    case iosRedo = "\u{ec22}"
    case iosRefresh = "\u{ec6b}"
    case iosRefreshCircle = "\u{ec01}"
    case iosRemove = "\u{ec6a}"
    case iosRemoveCircle = "\u{ebfe}"
    case iosRemoveCircleOutline = "\u{ec30}"
    case iosReorder = "\u{ec31}"
    case iosRepeat = "\u{ec23}"
    case iosResize = "\u{ec80}"
    case iosRestaurant = "\u{ec14}"
    case iosReturnLeft = "\u{ec56}"
    case iosReturnRight = "\u{ec39}"
    case iosReverseCamera = "\u{ec92}"
    case iosRewind = "\u{ec11}"
    case iosRibbon = "\u{ec5c}"
    case iosRocket = "\u{ec8f}"
    case iosRose = "\u{ec0b}"
    case iosSad = "\u{ec06}"
    case iosSave = "\u{ec7c}"
    case iosSchool = "\u{ec3b}"
    case iosSearch = "\u{ec49}"
    case iosSend = "\u{ec81}"
    case iosSettings = "\u{ec15}"
    case iosShare = "\u{ec8b}"
    case iosShareAlt = "\u{ec41}"
    case iosShirt = "\u{ec0a}"
    case iosShuffle = "\u{ec4a}"
    case iosSkipBackward = "\u{ec0d}"
    case iosSkipForward = "\u{ec7b}"
    case iosSnow = "\u{ec19}"
    case iosSpeedometer = "\u{ec08}"
    case iosSquare = "\u{ec0c}"
    case iosSquareOutline = "\u{ec7e}"
    case iosStar = "\u{ec2e}"
    case iosStarHalf = "\u{ec7d}"
    case iosStarOutline = "\u{ec61}"
    case iosStats = "\u{ec45}"
    case iosStopwatch = "\u{ec82}"
    case iosSubway = "\u{ec96}"
    case iosSunny = "\u{ec44}"
    case iosSwap = "\u{ec0e}"
    case iosSwitch = "\u{ec83}"
    case iosSync = "\u{ec1b}"
    case iosTabletLandscape = "\u{ec16}"
    case iosTabletPortrait = "\u{ec84}"
    case iosTennisball = "\u{ec3d}"
    case iosText = "\u{ec1a}"
    case iosThermometer = "\u{ec85}"
    case iosThumbsDown = "\u{ec47}"
    case iosThumbsUp = "\u{ec70}"
    case iosThunderstorm = "\u{ec4e}"
    case iosTime = "\u{ec99}"
    case iosTimer = "\u{ebf1}"
    case iosToday = "\u{ec43}"
    case iosTrain = "\u{ec21}"
    case iosTransgender = "\u{ec89}"
    case iosTrash = "\u{ec4c}"
    case iosTrendingDown = "\u{ec34}"
    case iosTrendingUp = "\u{ec87}"
    case iosTrophy = "\u{ec28}"
    case iosTv = "\u{ec88}"
    case iosUmbrella = "\u{ec2a}"
    case iosUndo = "\u{ec32}"
    case iosUnlock = "\u{ec8d}"
    case iosVideocam = "\u{ec29}"
    case iosVolumeHigh = "\u{ec33}"
    case iosVolumeLow = "\u{ec8a}"
    case iosVolumeMute = "\u{ec2d}"
    case iosVolumeOff = "\u{ec3a}"
    case iosWalk = "\u{ec97}"
    case iosWallet = "\u{ec4d}"
    case iosWarning = "\u{ec35}"
    case iosWatch = "\u{ec66}"
    case iosWater = "\u{ec8e}"
    case iosWifi = "\u{ec24}"
    case iosWine = "\u{ec3f}"
    case iosWoman = "\u{ec8c}"
    case logoAndroid = "\u{ec25}"
    case logoAngular = "\u{ec46}"
    case logoApple = "\u{ec9a}"
    case logoBitbucket = "\u{ec68}"
    case logoBitcoin = "\u{ec36}"
    case logoBuffer = "\u{ec42}"
    case logoChrome = "\u{ec6d}"
    case logoClosedCaptioning = "\u{ec98}"
    case logoCodepen = "\u{ec53}"
    case logoCss3 = "\u{ec60}"
    case logoDesignernews = "\u{ec69}"
    case logoDribbble = "\u{ec5b}"
    case logoDropbox = "\u{ec9b}"
    case logoEuro = "\u{ec63}"
    case logoFacebook = "\u{ebff}"
    case logoFlickr = "\u{ec9c}"
    case logoFoursquare = "\u{ec71}"
    case logoFreebsdDevil = "\u{ec5d}"
    case logoGameControllerA = "\u{ec9d}"
    case logoGameControllerB = "\u{ec54}"
    case logoGithub = "\u{ec38}"
    case logoGoogle = "\u{ec9e}"
    case logoGoogleplus = "\u{ec6c}"
    case logoHackernews = "\u{ec58}"
    case logoHtml5 = "\u{ec9f}"
    case logoInstagram = "\u{ec72}"
    case logoIonic = "\u{ec59}"
    case logoIonitron = "\u{ec94}"
    case logoJavascript = "\u{ec52}"
    case logoLinkedin = "\u{ec48}"
    case logoMarkdown = "\u{eca0}"
    case logoModelS = "\u{ec62}"
    case logoNoSmoking = "\u{ec67}"
    case logoNodejs = "\u{ec57}"
    case logoNpm = "\u{ec93}"
    case logoOctocat = "\u{ec64}"
    case logoPinterest = "\u{ec95}"
    case logoPlaystation = "\u{ec55}"
    case logoPolymer = "\u{eca1}"
    case logoPython = "\u{eca6}"
    case logoReddit = "\u{eca7}"
    case logoRss = "\u{eca3}"
    case logoSass = "\u{ecab}"
    case logoSkype = "\u{eca2}"
    case logoSlack = "\u{eca5}"
    case logoSnapchat = "\u{ece3}"
    case logoSteam = "\u{ecaa}"
    case logoTumblr = "\u{eca4}"
    case logoTux = "\u{ecec}"
    case logoTwitch = "\u{ecc4}"
    case logoTwitter = "\u{ecac}"
    case logoUsd = "\u{ecc1}"
    case logoVimeo = "\u{ecaf}"
    case logoVk = "\u{ecad}"
    case logoWhatsapp = "\u{ecd3}"
    case logoWindows = "\u{ecb4}"
    case logoWordpress = "\u{ecb9}"
    case logoXbox = "\u{ecd1}"
    case logoXing = "\u{eca8}"
    case logoYahoo = "\u{eca9}"
    case logoYen = "\u{ecd8}"
    case logoYoutube = "\u{ecb6}"
    case mdAdd = "\u{ecb1}"
    case mdAddCircle = "\u{ecbf}"
    case mdAddCircleOutline = "\u{ecb0}"
    case mdAirplane = "\u{ecae}"
    case mdAlarm = "\u{eccc}"
    case mdAlbums = "\u{ecb5}"
    case mdAlert = "\u{ecb8}"
    case mdAmericanFootball = "\u{ecc2}"
    case mdAnalytics = "\u{ecbe}"
    case mdAperture = "\u{ecb3}"
    case mdApps = "\u{ecc3}"
    case mdAppstore = "\u{ecb2}"
    case mdArchive = "\u{ecd0}"
    case mdArrowBack = "\u{ece4}"
    case mdArrowDown = "\u{ecbc}"
    case mdArrowDropdown = "\u{ecf4}"
    case mdArrowDropdownCircle = "\u{ecc6}"
    case mdArrowDropleft = "\u{ecb7}"
    case mdArrowDropleftCircle = "\u{ecba}"
    case mdArrowDropright = "\u{ecbb}"
    case mdArrowDroprightCircle = "\u{ece0}"
    case mdArrowDropup = "\u{ecd2}"
    case mdArrowDropupCircle = "\u{ecd6}"
    case mdArrowForward = "\u{ecbd}"
    case mdArrowRoundBack = "\u{ecdb}"
    case mdArrowRoundDown = "\u{ed09}"
    case mdArrowRoundForward = "\u{ecc8}"
    case mdArrowRoundUp = "\u{ecd7}"
    case mdArrowUp = "\u{ecf0}"
    case mdAt = "\u{eccb}"
    case mdAttach = "\u{ecdf}"
    case mdBackspace = "\u{eceb}"
    case mdBarcode = "\u{ecc0}"
    case mdBaseball = "\u{ecc5}"
    case mdBasket = "\u{ed10}"
    case mdBasketball = "\u{ecc9}"
    case mdBatteryCharging = "\u{ecd4}"
    case mdBatteryDead = "\u{ece5}"
    case mdBatteryFull = "\u{ecc7}"
    case mdBeaker = "\u{ece7}"
    case mdBed = "\u{ecf9}"
    case mdBeer = "\u{ed1b}"
    case mdBicycle = "\u{ecdc}"
    case mdBluetooth = "\u{ecfa}"
    case mdBoat = "\u{eccd}"
    case mdBody = "\u{eccf}"
    case mdBonfire = "\u{ecf6}"
    case mdBook = "\u{ed21}"
    case mdBookmark = "\u{ecdd}"
    case mdBookmarks = "\u{ecf1}"
    case mdBowtie = "\u{ecd9}"
    case mdBriefcase = "\u{ece9}"
    case mdBrowsers = "\u{ecf2}"
    case mdBrush = "\u{ed1d}"
    case mdBug = "\u{ecce}"
    case mdBuild = "\u{ed01}"
    case mdBulb = "\u{ecca}"
    case mdBus = "\u{ecde}"
    case mdBusiness = "\u{ed87}"
    case mdCafe = "\u{ecfe}"
    case mdCalculator = "\u{ecea}"
    case mdCalendar = "\u{ecfb}"
    case mdCall = "\u{ece6}"
    case mdCamera = "\u{ecf3}"
    case mdCar = "\u{ed1c}"
    case mdCard = "\u{ecd5}"
    case mdCart = "\u{ed0a}"
    case mdCash = "\u{ed88}"
    case mdCellular = "\u{ed2f}"
    case mdChatboxes = "\u{ecf8}"
    case mdChatbubbles = "\u{ed6c}"
    case mdCheckbox = "\u{ed24}"
    case mdCheckboxOutline = "\u{ed26}"
    case mdCheckmark = "\u{ed22}"
    case mdCheckmarkCircle = "\u{ecda}"
    case mdCheckmarkCircleOutline = "\u{ed89}"
    case mdClipboard = "\u{edab}"
    case mdClock = "\u{ed30}"
    case mdClose = "\u{ecee}"
    case mdCloseCircle = "\u{eda3}"
    case mdCloseCircleOutline = "\u{ece1}"
    case mdCloud = "\u{ecef}"
    case mdCloudCircle = "\u{eced}"
    case mdCloudDone = "\u{edbe}"
    case mdCloudDownload = "\u{ed2d}"
    case mdCloudOutline = "\u{ece8}"
    case mdCloudUpload = "\u{eda4}"
    case mdCloudy = "\u{eddb}"
    case mdCloudyNight = "\u{ed05}"
    case mdCode = "\u{edae}"
    case mdCodeDownload = "\u{ed0b}"
    case mdCodeWorking = "\u{ece2}"
    case mdCog = "\u{ed41}"
    case mdColorFill = "\u{ed11}"
    case mdColorFilter = "\u{edb5}"
    case mdColorPalette = "\u{ed0e}"
    case mdColorWand = "\u{ed12}"
    case mdCompass = "\u{eddc}"
    case mdConstruct = "\u{ed14}"
    case mdContact = "\u{ecf7}"
    case mdContacts = "\u{edbf}"
    case mdContract = "\u{ed08}"
    case mdContrast = "\u{ecf5}"
    case mdCopy = "\u{edad}"
    case mdCreate = "\u{ed0c}"
    case mdCrop = "\u{ed04}"
    case mdCube = "\u{ecff}"
    case mdCut = "\u{ed13}"
    case mdDesktop = "\u{ecfc}"
    case mdDisc = "\u{edb6}"
    case mdDocument = "\u{ed19}"
    case mdDoneAll = "\u{ed33}"
    case mdDownload = "\u{ed37}"
    case mdEasel = "\u{ed2c}"
    case mdEgg = "\u{ed15}"
    case mdExit = "\u{eddd}"
    case mdExpand = "\u{ed43}"
    case mdEye = "\u{edb4}"
    case mdEyeOff = "\u{ed00}"
    case mdFastforward = "\u{ed2e}"
    case mdFemale = "\u{ecfd}"
    case mdFiling = "\u{edde}"
    case mdFilm = "\u{ed6a}"
    case mdFingerPrint = "\u{ed29}"
    case mdFitness = "\u{edda}"
    case mdFlag = "\u{ed28}"
    case mdFlame = "\u{ed49}"
    case mdFlash = "\u{ed06}"
    case mdFlashOff = "\u{ed02}"
    case mdFlashlight = "\u{ed55}"
    case mdFlask = "\u{ed36}"
    case mdFlower = "\u{ed47}"
    case mdFolder = "\u{ed42}"
    case mdFolderOpen = "\u{ed4e}"
    case mdFootball = "\u{ed0d}"
    case mdFunnel = "\u{ed51}"
    case mdGift = "\u{ed17}"
    case mdGitBranch = "\u{ed72}"
    case mdGitCommit = "\u{ed39}"
    case mdGitCompare = "\u{ede2}"
    case mdGitMerge = "\u{ed78}"
    case mdGitNetwork = "\u{ed31}"
    case mdGitPullRequest = "\u{ed59}"
    case mdGlasses = "\u{ed07}"
    case mdGlobe = "\u{ed75}"
    case mdGrid = "\u{ed03}"
    case mdHammer = "\u{ed18}"
    case mdHand = "\u{ed7b}"
    case mdHappy = "\u{ed2b}"
    case mdHeadset = "\u{ed40}"
    case mdHeart = "\u{ed7c}"
    case mdHeartDislike = "\u{ed7d}"
    case mdHeartEmpty = "\u{ed0f}"
    case mdHeartHalf = "\u{ed58}"
    case mdHelp = "\u{ed8b}"
    case mdHelpBuoy = "\u{ed5d}"
    case mdHelpCircle = "\u{ed16}"
    case mdHelpCircleOutline = "\u{ed1f}"
    case mdHome = "\u{edcc}"
    case mdHourglass = "\u{ed8d}"
    case mdIceCream = "\u{ed3a}"
    case mdImage = "\u{ed5b}"
    case mdImages = "\u{ed54}"
    case mdInfinite = "\u{ed80}"
    case mdInformation = "\u{ed4d}"
    case mdInformationCircle = "\u{ede3}"
    case mdInformationCircleOutline = "\u{ed23}"
    case mdJet = "\u{ed44}"
    case mdJournal = "\u{ed2a}"
    case mdKey = "\u{ed5f}"
    case mdKeypad = "\u{ed3c}"
    case mdLaptop = "\u{eddf}"
    case mdLeaf = "\u{ed20}"
    case mdLink = "\u{ed48}"
    case mdList = "\u{edc5}"
    case mdListBox = "\u{ed38}"
    case mdLocate = "\u{ed83}"
    case mdLock = "\u{ede0}"
    case mdLogIn = "\u{ed46}"
    case mdLogOut = "\u{ed53}"
    case mdMagnet = "\u{ed1e}"
    case mdMail = "\u{ed93}"
    case mdMailOpen = "\u{ed68}"
    case mdMailUnread = "\u{ed1a}"
    case mdMale = "\u{ed73}"
    case mdMan = "\u{ed27}"
    case mdMap = "\u{ede1}"
    case mdMedal = "\u{ed94}"
    case mdMedical = "\u{ed35}"
    case mdMedkit = "\u{ed91}"
    case mdMegaphone = "\u{ed3d}"
    case mdMenu = "\u{ede4}"
    case mdMic = "\u{ed6f}"
    case mdMicOff = "\u{ed32}"
    case mdMicrophone = "\u{ed3b}"
    case mdMoon = "\u{ed34}"
    case mdMore = "\u{edf5}"
    case mdMove = "\u{eda9}"
    case mdMusicalNote = "\u{ed50}"
    case mdMusicalNotes = "\u{ed81}"
    case mdNavigate = "\u{ed25}"
    case mdNotifications = "\u{ed4b}"
    case mdNotificationsOff = "\u{eda2}"
    case mdNotificationsOutline = "\u{edc1}"
    case mdNuclear = "\u{ed4a}"
    case mdNutrition = "\u{ede5}"
    case mdOpen = "\u{ed57}"
    case mdOptions = "\u{ed3f}"
    case mdOutlet = "\u{edc4}"
    case mdPaper = "\u{edb0}"
    case mdPaperPlane = "\u{ed6b}"
    case mdPartlySunny = "\u{edeb}"
    case mdPause = "\u{ed7a}"
    case mdPaw = "\u{edd7}"
    case mdPeople = "\u{edca}"
    case mdPerson = "\u{ed3e}"
    case mdPersonAdd = "\u{edd9}"
    case mdPhoneLandscape = "\u{ed4c}"
    case mdPhonePortrait = "\u{ed45}"
    case mdPhotos = "\u{edb3}"
    case mdPie = "\u{ed9f}"
    case mdPin = "\u{edd1}"
    case mdPint = "\u{edb1}"
    case mdPizza = "\u{ed56}"
    case mdPlanet = "\u{ede6}"
    case mdPlay = "\u{ed5c}"
    case mdPlayCircle = "\u{ed64}"
    case mdPodium = "\u{ed69}"
    case mdPower = "\u{ed71}"
    case mdPricetag = "\u{ed7f}"
    case mdPricetags = "\u{ed52}"
    case mdPrint = "\u{ed67}"
    case mdPulse = "\u{edbb}"
    case mdQrScanner = "\u{ed62}"
    case mdQuote = "\u{ed7e}"
    case mdRadio = "\u{ed9a}"
    case mdRadioButtonOff = "\u{ed61}"
    case mdRadioButtonOn = "\u{ed70}"
    case mdRainy = "\u{ed63}"
    case mdRecording = "\u{ed76}"
    case mdRedo = "\u{ed82}"
    case mdRefresh = "\u{edea}"
    case mdRefreshCircle = "\u{ed90}"
    case mdRemove = "\u{ede7}"
    case mdRemoveCircle = "\u{edaa}"
    case mdRemoveCircleOutline = "\u{ed8a}"
    case mdReorder = "\u{eda0}"
    case mdRepeat = "\u{ed4f}"
    case mdResize = "\u{ed8e}"
    case mdRestaurant = "\u{ed8c}"
    case mdReturnLeft = "\u{ed6d}"
    case mdReturnRight = "\u{ed84}"
    case mdReverseCamera = "\u{edaf}"
    case mdRewind = "\u{ed9c}"
    case mdRibbon = "\u{edf1}"
    case mdRocket = "\u{ed98}"
    case mdRose = "\u{ed5e}"
    case mdSad = "\u{ed92}"
    case mdSave = "\u{ed99}"
    case mdSchool = "\u{ed5a}"
    case mdSearch = "\u{ed8f}"
    case mdSend = "\u{eda6}"
    case mdSettings = "\u{ed85}"
    case mdShare = "\u{ed97}"
    case mdShareAlt = "\u{ed96}"
    case mdShirt = "\u{edc3}"
    case mdShuffle = "\u{ed66}"
    case mdSkipBackward = "\u{eda7}"
    case mdSkipForward = "\u{eda5}"
    case mdSnow = "\u{ed74}"
    case mdSpeedometer = "\u{ede9}"
    case mdSquare = "\u{edf4}"
    case mdSquareOutline = "\u{edc2}"
    case mdStar = "\u{ed60}"
    case mdStarHalf = "\u{edcb}"
    case mdStarOutline = "\u{edac}"
    case mdStats = "\u{ede8}"
    case mdStopwatch = "\u{eda8}"
    case mdSubway = "\u{ed9e}"
    case mdSunny = "\u{edd6}"
    case mdSwap = "\u{edce}"
    case mdSwitch = "\u{edd5}"
    case mdSync = "\u{edcf}"
    case mdTabletLandscape = "\u{edd2}"
    case mdTabletPortrait = "\u{edf2}"
    case mdTennisball = "\u{edd3}"
    case mdText = "\u{ed77}"
    case mdThermometer = "\u{edc9}"
    case mdThumbsDown = "\u{edb2}"
    case mdThumbsUp = "\u{ed65}"
    case mdThunderstorm = "\u{eded}"
    case mdTime = "\u{edc7}"
    case mdTimer = "\u{edec}"
    case mdToday = "\u{ed9d}"
    case mdTrain = "\u{ed6e}"
    case mdTransgender = "\u{edee}"
    case mdTrash = "\u{edb7}"
    case mdTrendingDown = "\u{ed79}"
    case mdTrendingUp = "\u{edf0}"
    case mdTrophy = "\u{edf3}"
    case mdTv = "\u{ed95}"
    case mdUmbrella = "\u{edc6}"
    case mdUndo = "\u{edd4}"
    case mdUnlock = "\u{ed9b}"
    case mdVideocam = "\u{edbc}"
    case mdVolumeHigh = "\u{edb9}"
    case mdVolumeLow = "\u{edb8}"
    case mdVolumeMute = "\u{edd0}"
    case mdVolumeOff = "\u{edbd}"
    case mdWalk = "\u{edc8}"
    case mdWallet = "\u{ed86}"
    case mdWarning = "\u{edef}"
    case mdWatch = "\u{edba}"
    case mdWater = "\u{edcd}"
    case mdWifi = "\u{edc0}"
    case mdWine = "\u{edd8}"
    case mdWoman = "\u{eda1}"

}
