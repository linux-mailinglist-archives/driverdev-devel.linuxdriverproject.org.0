Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB1F9094FE
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2024 02:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FD514176F;
	Sat, 15 Jun 2024 00:16:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n6YQURk-aA1r; Sat, 15 Jun 2024 00:16:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B07A341751
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B07A341751;
	Sat, 15 Jun 2024 00:16:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D2E21BF319
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 00:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 979DF6111C
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 00:16:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voyftYsWW9d8 for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2024 00:16:51 +0000 (UTC)
X-Greylist: delayed 359 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 15 Jun 2024 00:16:50 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C3C19607A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3C19607A3
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.129.47.150;
 helo=hosted-4-client-dedicated-live-server4.cartrackweb.com;
 envelope-from=sales@cartrackweb.com; receiver=<UNKNOWN> 
Received: from hosted-4-client-dedicated-live-server4.cartrackweb.com
 (hosted-4-client-dedicated-live-server4.cartrackweb.com [103.129.47.150])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3C19607A3
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 00:16:50 +0000 (UTC)
From: =?ISO-8859-1?B?U2FsZXMgSW5j?=<sales@cartrackweb.com>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?R1BTIFRyYWNraW5nIHggZGV2ZWw=?=
Date: 14 Jun 2024 21:11:38 -0300
Message-ID: <20240614211136.6B5EE47745452439@cartrackweb.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1717221988.cartrackweb; d=cartrackweb.com; 
 b=NkrNhqJLsz0CNBHPOjZHEMuFPW3YzOF1Qw9P2AlzYjlYjPuqjGsTDv+KodZ4hHM9ppmhEgSlxtvm
 OyEgDVdfxww+BMnjKKlBqSTpxmwr/QbRQp2OeSfb5cnfSDO2XyVZiztx/QA6qs6loZJopYfnlnWa
 DwO+L2Ion1HqTyBIfjY=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1717221988.cartrackweb; d=cartrackweb.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=sales@cartrackweb.com; 
 bh=8WNWeD5k4uevRJkpNNo8JHiWnJw=;
 b=AD+elyFUsV23hx+geJsWXseHKzDZXeaVRrmz8kAYZfqfyeW4PMq3iXh2WtqehUePK2GgN7FWgVMd
 gMaVuei0Gsm3vy6n62g1VfFi9FU0mnSOBBescsWdLAHRSoyLmlMkNsIZcgABU5WuwyKDz+MzYM9p
 WmUJtukrj6PuVv9ZXUc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=cartrackweb.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=cartrackweb.com header.i=sales@cartrackweb.com
 header.a=rsa-sha1 header.s=1717221988.cartrackweb header.b=AD+elyFU
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: =?ISO-8859-1?B?U2FsZXMgSW5j?= <salesgps@cartrackgps.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

<html xmlns:v=3D"urn:schemas-microsoft-com:vml"
xmlns:o=3D"urn:schemas-microsoft-com:office:office"
xmlns:w=3D"urn:schemas-microsoft-com:office:word"
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml"
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dwindows-125=
2">
<meta name=3DProgId content=3DWord.Document>
<meta name=3DGenerator content=3D"Microsoft Word 12">
<meta name=3DOriginator content=3D"Microsoft Word 12">
<link rel=3DFile-List href=3D"Campa=F1a%20US_archivos/filelist.xml">
<!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>SALVA</o:Author>
  <o:LastAuthor>SALVA</o:LastAuthor>
  <o:Revision>2</o:Revision>
  <o:TotalTime>1</o:TotalTime>
  <o:Created>2024-01-04T15:58:00Z</o:Created>
  <o:LastSaved>2024-01-04T15:59:00Z</o:LastSaved>
  <o:Pages>1</o:Pages>
  <o:Words>372</o:Words>
  <o:Characters>2050</o:Characters>
  <o:Lines>17</o:Lines>
  <o:Paragraphs>4</o:Paragraphs>
  <o:CharactersWithSpaces>2418</o:CharactersWithSpaces>
  <o:Version>12.00</o:Version>
 </o:DocumentProperties>
</xml><![endif]-->
<link rel=3DthemeData href=3D"Campa=F1a%20US_archivos/themedata.thmx">
<link rel=3DcolorSchemeMapping href=3D"Campa=F1a%20US_archivos/colorschemem=
apping.xml">
<!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:Zoom>120</w:Zoom>
  <w:SpellingState>Clean</w:SpellingState>
  <w:GrammarState>Clean</w:GrammarState>
  <w:TrackMoves>false</w:TrackMoves>
  <w:TrackFormatting/>
  <w:HyphenationZone>21</w:HyphenationZone>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>ES-UY</w:LidThemeOther>
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:DontVertAlignCellWithSp/>
   <w:DontBreakConstrainedForcedTables/>
   <w:DontVertAlignInTxbx/>
   <w:Word11KerningPairs/>
   <w:CachedColBalance/>
  </w:Compatibility>
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>
  <m:mathPr>
   <m:mathFont m:val=3D"Cambria Math"/>
   <m:brkBin m:val=3D"before"/>
   <m:brkBinSub m:val=3D"--"/>
   <m:smallFrac m:val=3D"off"/>
   <m:dispDef/>
   <m:lMargin m:val=3D"0"/>
   <m:rMargin m:val=3D"0"/>
   <m:defJc m:val=3D"centerGroup"/>
   <m:wrapIndent m:val=3D"1440"/>
   <m:intLim m:val=3D"subSup"/>
   <m:naryLim m:val=3D"undOvr"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"true"
  DefSemiHidden=3D"true" DefQFormat=3D"false" DefPriority=3D"99"
  LatentStyleCount=3D"267">
  <w:LsdException Locked=3D"false" Priority=3D"0" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Normal"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"heading 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 7"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 8"/>
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 9"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 7"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 8"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 9"/>
  <w:LsdException Locked=3D"false" Priority=3D"35" QFormat=3D"true" Name=3D=
"caption"/>
  <w:LsdException Locked=3D"false" Priority=3D"10" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Title"/>
  <w:LsdException Locked=3D"false" Priority=3D"1" Name=3D"Default Paragraph=
 Font"/>
  <w:LsdException Locked=3D"false" Priority=3D"11" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtitle"/>
  <w:LsdException Locked=3D"false" Priority=3D"22" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Strong"/>
  <w:LsdException Locked=3D"false" Priority=3D"20" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Emphasis"/>
  <w:LsdException Locked=3D"false" Priority=3D"59" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Table Grid"/>
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Placeho=
lder Text"/>
  <w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"No Spacing"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Shading"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light List"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Grid"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Dark List"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful List"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 1"/>
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Revisio=
n"/>
  <w:LsdException Locked=3D"false" Priority=3D"34" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"List Paragraph"/>
  <w:LsdException Locked=3D"false" Priority=3D"29" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Quote"/>
  <w:LsdException Locked=3D"false" Priority=3D"30" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Quote"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 1"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 2"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 3"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 4"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 5"/>
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 6"/>
  <w:LsdException Locked=3D"false" Priority=3D"19" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Emphasis"/>
  <w:LsdException Locked=3D"false" Priority=3D"21" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Emphasis"/>
  <w:LsdException Locked=3D"false" Priority=3D"31" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Reference"/>
  <w:LsdException Locked=3D"false" Priority=3D"32" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Reference"/>
  <w:LsdException Locked=3D"false" Priority=3D"33" SemiHidden=3D"false"
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Book Title"/>
  <w:LsdException Locked=3D"false" Priority=3D"37" Name=3D"Bibliography"/>
  <w:LsdException Locked=3D"false" Priority=3D"39" QFormat=3D"true" Name=3D=
"TOC Heading"/>
 </w:LatentStyles>
</xml><![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-520081665 -1073717157 41 0 66047 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-font-family:"Times New Roman";
	mso-fareast-theme-font:minor-fareast;}
p
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	mso-fareast-font-family:"Times New Roman";
	mso-fareast-theme-font:minor-fareast;}
span.SpellE
	{mso-style-name:"";
	mso-spl-e:yes;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-size:10.0pt;
	mso-ansi-font-size:10.0pt;
	mso-bidi-font-size:10.0pt;}
@page Section1
	{size:595.3pt 841.9pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;
	mso-header-margin:35.4pt;
	mso-footer-margin:35.4pt;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Tabla normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-qformat:yes;
	mso-style-parent:"";
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
	mso-para-margin:0cm;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Times New Roman","serif";}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"2050"/>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body bgcolor=3D"#EEEEEC" lang=3DES-UY style=3D'tab-interval:35.4pt'>

<div class=3DSection1>

<div>

<div>

<p class=3DMsoNormal><span class=3DSpellE><span style=3D'font-size:10.0pt;f=
ont-family:
"Tahoma","sans-serif";mso-fareast-font-family:"Times New Roman";background:
#EEEEEC'>Hello</span></span><span style=3D'font-size:10.0pt;font-family:"Ta=
homa","sans-serif";
mso-fareast-font-family:"Times New Roman";background:#EEEEEC'>,</span><span
style=3D'mso-fareast-font-family:"Times New Roman"'> <o:p></o:p></span></p>

<p><span class=3DSpellE><span style=3D'font-size:10.0pt;font-family:"Tahoma=
","sans-serif";
background:#EEEEEC'>This</span></span><span style=3D'font-size:10.0pt;font-=
family:
"Tahoma","sans-serif";background:#EEEEEC'> <span class=3DSpellE>is</span> P=
aul <span
class=3DSpellE>Novak</span> <span class=3DSpellE>from</span> CarTrack GPS&n=
bsp;<span
class=3DSpellE>vehicle</span> tracking <span class=3DSpellE>supplier</span>=
.</span></p>

<p><span class=3DSpellE><span style=3D'font-size:10.0pt;font-family:"Tahoma=
","sans-serif";
background:#EEEEEC'>We</span></span><span style=3D'font-size:10.0pt;font-fa=
mily:
"Tahoma","sans-serif";background:#EEEEEC'> <span class=3DSpellE>design</spa=
n> <span
class=3DSpellE>innovative</span> GPS <span class=3DSpellE>technologies</spa=
n> and
are <span class=3DSpellE>looking</span> <span class=3DSpellE>for</span> <sp=
an
class=3DSpellE>distributors</span> in <span class=3DSpellE>your</span> coun=
try.<br>
<br>
<span class=3DSpellE>The</span> <span class=3DSpellE>business</span> <span
class=3DSpellE>consists</span> in <span class=3DSpellE><u>offering</u></spa=
n><u> <span
class=3DSpellE>location</span> <span class=3DSpellE>services</span> <span
class=3DSpellE>to</span> <span class=3DSpellE>end</span> <span class=3DSpel=
lE>customers</span></u>
<span class=3DSpellE>through</span> a web <span class=3DSpellE>site</span>.=
 <span
class=3DSpellE>This</span> <span class=3DSpellE>is</span> <span class=3DSpe=
llE>accomplished</span>
<span class=3DSpellE>through</span> a Web <span class=3DSpellE>platform</sp=
an> <span
class=3DSpellE>that</span> <span class=3DSpellE>we</span> <span class=3DSpe=
llE>provide</span>
as a <span class=3DSpellE>turnkey</span> server <span class=3DSpellE>instal=
led</span>
at <span class=3DSpellE>your</span> <span class=3DSpellE>end</span>. </span=
></p>

<p><span class=3DSpellE><span style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";
background:#EEEEEC'>This</span></span><span style=3D'font-size:10.0pt;font-=
family:
"Arial","sans-serif";background:#EEEEEC'> <span class=3DSpellE>service</spa=
n> <span
class=3DSpellE>will</span> <span class=3DSpellE>allow</span> <span class=3D=
SpellE>customers</span>
<span class=3DSpellE>to</span> <span class=3DSpellE>track</span> <span
class=3DSpellE>their</span> <span class=3DSpellE>fleets</span> <span class=
=3DSpellE>from</span>
<span class=3DSpellE>any</span> web browser - <span class=3DSpellE>even</sp=
an> <span
class=3DSpellE>from</span> <span class=3DSpellE>Tablets</span> and <span
class=3DSpellE>Smartphones</span> - <span class=3DSpellE>with</span> a <span
class=3DSpellE>username</span> and <span class=3DSpellE>password</span>.<br>
<br>
<span class=3DSpellE>We</span> <span class=3DSpellE>have</span> Professiona=
l Kits <span
class=3DSpellE>available</span> <span class=3DSpellE>which</span> <span
class=3DSpellE>include</span> full Software <span class=3DSpellE>licenses</=
span>,
so once <span class=3DSpellE>you</span> <span class=3DSpellE>get</span> <sp=
an
class=3DSpellE>the</span> KIT and <span class=3DSpellE>start</span> <span
class=3DSpellE>testing</span> <span class=3DSpellE>you</span> <span class=
=3DSpellE>will</span>
<span class=3DSpellE>not</span> <span class=3DSpellE>need</span> <span
class=3DSpellE>to</span> <span class=3DSpellE>invest</span> <span class=3DS=
pellE>again</span>
in <span class=3DSpellE>the</span> Software <span class=3DSpellE>or</span> =
<span
class=3DSpellE>have</span> <span class=3DSpellE>to</span> <span class=3DSpe=
llE>pay</span>
<span class=3DSpellE>any</span> <span class=3DSpellE>monthly</span> <span
class=3DSpellE>fee</span>.<br>
<br>
<span class=3DSpellE>We</span> <span class=3DSpellE>support</span> <span
class=3DSpellE>our</span> <span class=3DSpellE>dealers</span>' <span class=
=3DSpellE>business</span>
<span class=3DSpellE>to</span> <span class=3DSpellE>allow</span> <span
class=3DSpellE>it</span> <span class=3DSpellE>to</span> <span class=3DSpell=
E>grow</span>
as <span class=3DSpellE>much</span> as <span class=3DSpellE>possible</span>=
 as <span
class=3DSpellE>our</span> <span class=3DSpellE>benefit</span> <span class=
=3DSpellE>is</span>
<span class=3DSpellE>to</span> <span class=3DSpellE>sell</span> <span class=
=3DSpellE>the</span>
<span class=3DSpellE>units</span>.<br>
&nbsp;<br>
<span class=3DSpellE>Our</span> <span class=3DSpellE>company</span> <span
class=3DSpellE>is</span> more <span class=3DSpellE>than</span> a&nbsp;regul=
ar GPS <span
class=3DSpellE>supplier</span> <span class=3DSpellE>because</span>:<br>
- <span class=3DSpellE>we</span> <span class=3DSpellE>aim</span> <span
class=3DSpellE>for</span> a mutual <span class=3DSpellE>benefit</span> <span
class=3DSpellE>dedicated</span> <span class=3DSpellE>business</span> <span
class=3DSpellE>relationship</span>.<br>
- <span class=3DSpellE>we</span> do <span class=3DSpellE>not</span> <span
class=3DSpellE>sell</span> individual <span class=3DSpellE>samples</span> <=
span
class=3DSpellE>to</span> <span class=3DSpellE>end</span> <span class=3DSpel=
lE>customers</span>.<br>
- <span class=3DSpellE>we</span> do <span class=3DSpellE>not</span> <span
class=3DSpellE>work</span> <span class=3DSpellE>with</span> <span class=3DS=
pellE>end</span>
<span class=3DSpellE>customers</span> <span class=3DSpellE>or</span> in <sp=
an
class=3DSpellE>distributor's</span> <span class=3DSpellE>areas</span>.<br>
&nbsp;<br>
<span class=3DSpellE>The</span> <span class=3DSpellE>service</span> has no =
<span
class=3DSpellE>monthly</span> <span class=3DSpellE>or</span> <span class=3D=
SpellE>annual</span>
<span class=3DSpellE>fee</span>. <span class=3DSpellE>The</span> Web Server=
 <span
class=3DSpellE>will</span> <span class=3DSpellE>not</span> <span class=3DSp=
ellE>have</span>
a <span class=3DSpellE>limit</span> of <span class=3DSpellE>users</span> <s=
pan
class=3DSpellE>or</span> <span class=3DSpellE>vehicles</span>. <span class=
=3DSpellE>The</span>
<span class=3DSpellE>warranty</span> <span class=3DSpellE>is</span> 2 <span
class=3DSpellE>years</span> <span class=3DSpellE>on</span> <span class=3DSp=
ellE>the</span>
hardware.&nbsp;Web Software <span class=3DSpellE>has</span> a <span class=
=3DSpellE>lifetime</span>
<span class=3DSpellE>warranty</span>.<br>
<br>
<span class=3DSpellE>For</span> <span class=3DSpellE>installation</span> of=
 <span
class=3DSpellE>the</span> <span class=3DSpellE>devices</span> <span class=
=3DSpellE>you</span>
<span class=3DSpellE>will</span> <span class=3DSpellE>need</span> <span
class=3DSpellE>an</span> <span class=3DSpellE>experienced</span> car <span
class=3DSpellE>alarm</span> <span class=3DSpellE>installer</span>.<br>
<br>
<span class=3DSpellE>Our</span> <span class=3DSpellE>product</span> <span
class=3DSpellE>is</span> <span class=3DSpellE>excellent</span> <span class=
=3DSpellE>for</span>
<span class=3DSpellE>fleet</span> tracking and <span class=3DSpellE>recover=
y</span>
of <span class=3DSpellE>stolen</span> <span class=3DSpellE>vehicles</span>.=
 <span
class=3DSpellE>Insurance</span> <span class=3DSpellE>companies</span>, <span
class=3DSpellE>trucking</span> <span class=3DSpellE>companies</span>, car <=
span
class=3DSpellE>dealers</span> and car <span class=3DSpellE>assemblers</span=
> <span
class=3DSpellE>have</span> <span class=3DSpellE>been</span> <span class=3DS=
pellE>our</span>
<span class=3DSpellE>clients</span> <span class=3DSpellE>over</span> 20 <sp=
an
class=3DSpellE>years</span>.<br>
<br>
<span class=3DSpellE>This</span> <span class=3DSpellE>is</span> a <span
class=3DSpellE>very</span> <span class=3DSpellE>profitable</span> <span
class=3DSpellE>long-term</span> <span class=3DSpellE>business</span> and <s=
pan
class=3DSpellE>we</span> <span class=3DSpellE>want</span> <span class=3DSpe=
llE>to</span>
<span class=3DSpellE>support</span> <span class=3DSpellE>both</span> <span
class=3DSpellE>commercially</span> and <span class=3DSpellE>technically</sp=
an> so <span
class=3DSpellE>you</span> can <span class=3DSpellE>carry</span> <span class=
=3DSpellE>it</span>
<span class=3DSpellE>out</span> <span class=3DSpellE>successfully</span>. <=
span
class=3DSpellE>Since</span> 1996 <span class=3DSpellE>we</span> <span class=
=3DSpellE>work</span>
<span class=3DSpellE>with</span> <span class=3DSpellE>over</span> 100 <span
class=3DSpellE>countries</span>, <span class=3DSpellE>helping</span> <span
class=3DSpellE>them</span> <span class=3DSpellE>from</span> <span class=3DS=
pellE>scratch</span>
<span class=3DSpellE>to</span> <span class=3DSpellE>fully</span> <span
class=3DSpellE>work</span> <span class=3DSpellE>with</span> <span class=3DS=
pellE>the</span>
<span class=3DSpellE>system</span> <span class=3DSpellE>successfully</span>=
.<br>
<b><br>
PRO KIT:&nbsp;THE COMPLETE PACKAGE</b></span><span style=3D'font-size:10.0p=
t;
font-family:"Arial","sans-serif";background:white'><br>
</span><span style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";
background:#EEEEEC'>&nbsp; <span class=3DSpellE>Everything</span> <span
class=3DSpellE>you</span> <span class=3DSpellE>need</span> <span class=3DSp=
ellE>to</span>
<span class=3DSpellE>start</span> <span class=3DSpellE>the</span> <span
class=3DSpellE>business</span>:<br>
&nbsp; -&gt;&nbsp; </span><span style=3D'font-size:10.0pt;font-family:"Taho=
ma","sans-serif";
background:#EEEEEC'>8 GPS tracking <span class=3DSpellE>units</span><br>
&nbsp; -&gt;&nbsp; <span class=3DSpellE>Official</span> <span class=3DSpell=
E>Dealership</span>
<span class=3DSpellE>agreement</span><br>
&nbsp; -&gt;&nbsp; <span class=3DSpellE>Door-to-door</span> <span class=3DS=
pellE>shipment</span>
<span class=3DSpellE>by</span> DHL<br>
&nbsp; -&gt;&nbsp; Web Server <span class=3DSpellE>remotely</span> <span
class=3DSpellE>installed</span> at <span class=3DSpellE>your</span> <span
class=3DSpellE>end</span><br>
&nbsp; plus <span class=3DSpellE>unlimited</span> <span class=3DSpellE>life=
time</span>
<span class=3DSpellE>upgrades</span> and <span class=3DSpellE>dedicated</sp=
an> <span
class=3DSpellE>tech</span> <span class=3DSpellE>support</span><br>
&nbsp; <br>
<span class=3DSpellE>With</span> <span class=3DSpellE>the</span> PRO KIT <s=
pan
class=3DSpellE>you</span> <span class=3DSpellE>will</span> <span class=3DSp=
ellE>be</span>
<span class=3DSpellE>able</span> <span class=3DSpellE>to</span> <span class=
=3DSpellE>start</span>
a new <span class=3DSpellE>fleet</span> tracking <span class=3DSpellE>busin=
ess</span>&nbsp;and
<span class=3DSpellE>diversify</span> <span class=3DSpellE>your</span> <span
class=3DSpellE>investment</span>.</span><span style=3D'font-size:10.0pt;fon=
t-family:
"Tahoma","sans-serif"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Tahoma","=
sans-serif";
mso-fareast-font-family:"Times New Roman";background:#EEEEEC'>In case <span
class=3DSpellE>you=92re</span> <span class=3DSpellE>interested</span>, <span
class=3DSpellE>we</span> can <span class=3DSpellE>send</span> <span class=
=3DSpellE>you</span>
<span class=3DSpellE>the</span> <span class=3DSpellE>proposal</span> and <s=
pan
class=3DSpellE>start</span> <span class=3DSpellE>working</span> <span class=
=3DSpellE>together</span>.</span><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";mso-fareast-fon=
t-family:
"Times New Roman"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Tahoma","=
sans-serif";
mso-fareast-font-family:"Times New Roman";background:#EEEEEC'><o:p>&nbsp;</=
o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span class=3DSpellE><span style=3D'font-size:10.0pt;f=
ont-family:
"Tahoma","sans-serif";mso-fareast-font-family:"Times New Roman";background:
#EEEEEC'>Best</span></span><span style=3D'font-size:10.0pt;font-family:"Tah=
oma","sans-serif";
mso-fareast-font-family:"Times New Roman";background:#EEEEEC'> <span
class=3DSpellE>regards</span>,<br>
<span class=3DSpellE>Eng</span>. Paul <span class=3DSpellE>Novak</span><br>
CarTrack GPS<br style=3D'mso-special-character:line-break'>
<![if !supportLineBreakNewLine]><br style=3D'mso-special-character:line-bre=
ak'>
<![endif]></span><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans=
-serif";
mso-fareast-font-family:"Times New Roman"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span class=3DSpellE><span style=3D'font-size:10.0pt;f=
ont-family:
"Tahoma","sans-serif";mso-fareast-font-family:"Times New Roman";background:
#EEEEEC'>If</span></span><span style=3D'font-size:10.0pt;font-family:"Tahom=
a","sans-serif";
mso-fareast-font-family:"Times New Roman";background:#EEEEEC'> <span
class=3DSpellE>this</span> <span class=3DSpellE>information</span> <span
class=3DSpellE>is</span> <span class=3DSpellE>not</span> <span class=3DSpel=
lE>for</span>
<span class=3DSpellE>you</span> <span class=3DSpellE>please</span> <span
class=3DSpellE>reply</span> <span class=3DSpellE>with</span> <span class=3D=
SpellE>the</span>
<span class=3DSpellE>word</span> REMOVE in <span class=3DSpellE>the</span> =
<span
class=3DSpellE>subject</span> and <span class=3DSpellE>please</span> <span
class=3DSpellE>accept</span> <span class=3DSpellE>our</span> <span class=3D=
SpellE>deep</span>
<span class=3DSpellE>apologizes</span> <span class=3DSpellE>for</span> <span
class=3DSpellE>any</span> <span class=3DSpellE>inconveniences</span>.</span=
><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";mso-fareast-fon=
t-family:
"Times New Roman"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";
mso-fareast-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

</div>

</div>

</div>

</body>

</html>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
