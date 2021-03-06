//
//  Octicons.swift
//  JustIconFont
//
//  Created by YZF on 2019/4/24.
//

import Foundation


extension Octicons: IconFontEnumType {
    
    public var name: String {
        return "Octicons"
    }
    
}

/// Octicons v8.4.2
///
/// GitHub's icons
///
/// https://octicons.github.com/
public enum Octicons: String {
    case alert = "\u{eb82}"
    case archive = "\u{eb7d}"
    case arrowBoth = "\u{eb80}"
    case arrowDown = "\u{eb84}"
    case arrowLeft = "\u{eb92}"
    case arrowRight = "\u{eb81}"
    case arrowSmallDown = "\u{eb7e}"
    case arrowSmallLeft = "\u{eb90}"
    case arrowSmallRight = "\u{ebca}"
    case arrowSmallUp = "\u{ec07}"
    case arrowUp = "\u{eb91}"
    case beaker = "\u{eb95}"
    case bell = "\u{eb86}"
    case bold = "\u{eb8e}"
    case book = "\u{eb94}"
    case bookmark = "\u{eb8d}"
    case briefcase = "\u{eb7f}"
    case broadcast = "\u{ec2b}"
    case browser = "\u{ebf4}"
    case bug = "\u{eb98}"
    case calendar = "\u{ebd4}"
    case check = "\u{eb9b}"
    case checklist = "\u{eba3}"
    case chevronDown = "\u{eba4}"
    case chevronLeft = "\u{eb87}"
    case chevronRight = "\u{eb9c}"
    case chevronUp = "\u{ebe4}"
    case circleSlash = "\u{ebae}"
    case circuitBoard = "\u{eb83}"
    case clippy = "\u{eb85}"
    case clock = "\u{ebf3}"
    case cloudDownload = "\u{eb96}"
    case cloudUpload = "\u{eb8a}"
    case code = "\u{eb8f}"
    case comment = "\u{eb88}"
    case commentDiscussion = "\u{eba2}"
    case creditCard = "\u{eb8b}"
    case dash = "\u{eb9d}"
    case dashboard = "\u{ebbb}"
    case database = "\u{eb93}"
    case desktopDownload = "\u{eba7}"
    case deviceCamera = "\u{eba5}"
    case deviceCameraVideo = "\u{eb89}"
    case deviceDesktop = "\u{eba1}"
    case deviceMobile = "\u{ec17}"
    case diff = "\u{ec25}"
    case diffAdded = "\u{eb8c}"
    case diffIgnored = "\u{eba6}"
    case diffModified = "\u{ebbc}"
    case diffRemoved = "\u{eba0}"
    case diffRenamed = "\u{ebb2}"
    case ellipsis = "\u{ebc7}"
    case eye = "\u{eb99}"
    case eyeClosed = "\u{ebad}"
    case file = "\u{ebcf}"
    case fileBinary = "\u{eb9e}"
    case fileCode = "\u{ebb0}"
    case fileDirectory = "\u{eb97}"
    case fileMedia = "\u{ebc6}"
    case filePdf = "\u{ebe0}"
    case fileSubmodule = "\u{eb9a}"
    case fileSymlinkDirectory = "\u{ebce}"
    case fileSymlinkFile = "\u{ebac}"
    case fileZip = "\u{eba8}"
    case flame = "\u{ebc1}"
    case fold = "\u{ebaa}"
    case foldDown = "\u{ebab}"
    case foldUp = "\u{eb9f}"
    case gear = "\u{ebb8}"
    case gift = "\u{ebb6}"
    case gist = "\u{ebb4}"
    case gistSecret = "\u{ebdb}"
    case gitBranch = "\u{ebaf}"
    case gitCommit = "\u{ebbe}"
    case gitCompare = "\u{ebb9}"
    case gitMerge = "\u{ec00}"
    case gitPullRequest = "\u{ebc0}"
    case githubAction = "\u{ebd7}"
    case globe = "\u{ebb7}"
    case grabber = "\u{ebbf}"
    case graph = "\u{ebd1}"
    case heart = "\u{ebb1}"
    case history = "\u{ebbd}"
    case home = "\u{ebd2}"
    case horizontalRule = "\u{ebc2}"
    case hubot = "\u{ebdc}"
    case inbox = "\u{ebda}"
    case info = "\u{ebc5}"
    case issueClosed = "\u{ebba}"
    case issueOpened = "\u{ebea}"
    case issueReopened = "\u{ebf7}"
    case italic = "\u{ebc3}"
    case jersey = "\u{ebe5}"
    case kebabHorizontal = "\u{ebf5}"
    case kebabVertical = "\u{ebdf}"
    case key = "\u{ec28}"
    case keyboard = "\u{ebd8}"
    case law = "\u{ebdd}"
    case lightBulb = "\u{ebec}"
    case link = "\u{ebde}"
    case linkExternal = "\u{ebd9}"
    case listOrdered = "\u{ec27}"
    case listUnordered = "\u{ebe2}"
    case location = "\u{ebe6}"
    case lock = "\u{ec29}"
    case logoGist = "\u{ebee}"
    case logoGithub = "\u{ec0c}"
    case mail = "\u{ebe7}"
    case mailRead = "\u{ec2c}"
    case markGithub = "\u{ec0a}"
    case markdown = "\u{eba9}"
    case megaphone = "\u{ebf6}"
    case mention = "\u{ebcb}"
    case milestone = "\u{ec30}"
    case mirror = "\u{ec20}"
    case mortarBoard = "\u{ec09}"
    case mute = "\u{ebef}"
    case noNewline = "\u{ebe8}"
    case note = "\u{ebb5}"
    case octoface = "\u{ebc4}"
    case organization = "\u{ec06}"
    case package = "\u{ebe3}"
    case paintcan = "\u{ebf0}"
    case pencil = "\u{ec1f}"
    case person = "\u{ec0d}"
    case pin = "\u{ec31}"
    case play = "\u{ec23}"
    case plug = "\u{ec1c}"
    case plus = "\u{ec22}"
    case plusSmall = "\u{ebd6}"
    case primitiveDot = "\u{ebb3}"
    case primitiveSquare = "\u{ebf2}"
    case project = "\u{ec26}"
    case pulse = "\u{ec0e}"
    case question = "\u{ebff}"
    case quote = "\u{ec2e}"
    case radioTower = "\u{ec1d}"
    case reply = "\u{ebf9}"
    case repo = "\u{ebfe}"
    case repoClone = "\u{ec2a}"
    case repoForcePush = "\u{ebc9}"
    case repoForked = "\u{ebfa}"
    case repoPull = "\u{ec2d}"
    case repoPush = "\u{ebc8}"
    case report = "\u{ec02}"
    case requestChanges = "\u{ebcd}"
    case rocket = "\u{ebf8}"
    case rss = "\u{ec03}"
    case ruby = "\u{ebd0}"
    case screenFull = "\u{ec05}"
    case screenNormal = "\u{ebeb}"
    case search = "\u{ec1e}"
    case server = "\u{ec0b}"
    case settings = "\u{ec2f}"
    case shield = "\u{ec15}"
    case signIn = "\u{ebfc}"
    case signOut = "\u{ebf1}"
    case smiley = "\u{ebd5}"
    case squirrel = "\u{ec01}"
    case star = "\u{ec04}"
    case stop = "\u{ebe1}"
    case sync = "\u{ec13}"
    case tag = "\u{ec12}"
    case tasklist = "\u{ec08}"
    case telescope = "\u{ebcc}"
    case terminal = "\u{ec14}"
    case textSize = "\u{ec33}"
    case threeBars = "\u{ec21}"
    case thumbsdown = "\u{ebfd}"
    case thumbsup = "\u{ec11}"
    case tools = "\u{ebe9}"
    case trashcan = "\u{ec1a}"
    case triangleDown = "\u{ec0f}"
    case triangleLeft = "\u{ebd3}"
    case triangleRight = "\u{ec19}"
    case triangleUp = "\u{ec10}"
    case unfold = "\u{ec18}"
    case unmute = "\u{ec1b}"
    case unverified = "\u{ec34}"
    case verified = "\u{ec24}"
    case versions = "\u{ebfb}"
    case watch = "\u{ec32}"
    case x = "\u{ebed}"
    case zap = "\u{ec16}"
}
