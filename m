Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1589F70B726
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 May 2023 09:56:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F4E24179F;
	Mon, 22 May 2023 07:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F4E24179F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n3U4aR-ZXWua; Mon, 22 May 2023 07:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8C4C4177B;
	Mon, 22 May 2023 07:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8C4C4177B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A97991BF3A4
 for <devel@linuxdriverproject.org>; Mon, 22 May 2023 07:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EEF360C0E
 for <devel@linuxdriverproject.org>; Mon, 22 May 2023 07:56:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EEF360C0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0v9aG2N_8ty1 for <devel@linuxdriverproject.org>;
 Mon, 22 May 2023 07:56:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16B6460881
Received: from mail.quaich.pl (mail.quaich.pl [51.38.112.58])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16B6460881
 for <devel@driverdev.osuosl.org>; Mon, 22 May 2023 07:56:39 +0000 (UTC)
Received: by mail.quaich.pl (Postfix, from userid 1002)
 id A343AA36B4; Mon, 22 May 2023 07:55:43 +0000 (UTC)
Received: by quaich.pl for <devel@driverdev.osuosl.org>;
 Mon, 22 May 2023 07:55:39 GMT
Message-ID: <20230522064520-0.1.8a.geun.0.rocqgxhfki@quaich.pl>
Date: Mon, 22 May 2023 07:55:39 GMT
From: =?UTF-8?Q?"Tomasz_Wiewi=C3=B3r"?= <tomasz.wiewior@quaich.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Negocjacje-wska=C5=BAnik_skuteczno=C5=9Bci?=
X-Mailer: mail.quaich.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=quaich.pl; s=mail; 
 t=1684742151; bh=wfvwbFJA200jrsHeP2otbNIBGUSi9OMiPBdlGaZSRdc=;
 h=Date:From:To:Subject:From;
 b=U7O60mYam+YgRl7P5YmpasA08/sUSvgmEU4PAVXq5CFd+dQL4x30bxWA+vWFYIcM6
 5fVWqNPigwTMf+OhES9flPEI7Y4t0WHya67+GAVFP2TrhLFJw5MRLtsgukUQBsn5hh
 WExHBSCXP0oDDm2MI5mIzXslcB5aOpK5sbsve52g5pvW+D67Eat0bVJBfrXIRf0ZUP
 Y3e78LX3CgxB9zzuuN7G9GHDo23KRCdNMpSUIZGiXNoKx44gCYBh2HGw9WoyQuqPVD
 OsD7D7aMhZlAyS4svwduf4qlngvhEz1XA0thI+klIF0L665yM4BwGChWNICCzDjzVf
 b0cIjf8M4olGg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=quaich.pl header.i=@quaich.pl
 header.a=rsa-sha256 header.s=mail header.b=U7O60mYa
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U3phbm93bmkgUGHFhHN0d28sCgpqYWtvIHNwZWNqYWxpxZtjaSB3IGR6aWVkemluaWUgYmFkYW5p
YSBwb3RyemViIGkgcHJvamVrdG93YW5pYSBwcm9ncmFtw7N3IHN6a29sZW5pb3d5Y2gsIHdpZW15
LCBqYWsgd2HFvG5lIGplc3QgemFwZXduaWVuaWUgb2Rwb3dpZWRuaWNoIG5hcnrEmWR6aSBpIHdp
ZWR6eSwgYWJ5IHNrdXRlY3puaWUgendpxJlrc3p5xIcgZWZla3R5d25vxZvEhyB6ZXNwb8WCdSwg
c3pjemVnw7NsbmllIHcgZHXFvHljaCBvcmdhbml6YWNqYWNoLgoKWmFta25pxJl0ZSBzemtvbGVu
aWEgc8SFIG5hamxlcHN6eW0gcm96d2nEhXphbmllbSBkbGEgdHljaCwga3TDs3J6eSBjaGPEhSBz
a3VwacSHIHNpxJkgbmEga29ua3JldG55Y2ggcG90cnplYmFjaCBpIHphZ2FkbmllbmlhY2guIAoK
TmFzemEgbWV0b2R5a2Egb3BpZXJhIHNpxJkgbmEgaWRlbnR5ZmlrYWNqaSBvYnN6YXLDs3csIGt0
w7NyZSB3eW1hZ2FqxIUgcG9wcmF3eSwgYSBuYXN0xJlwbmllIGRvc3RhcmN6YW5pdSBzcGVyc29u
YWxpem93YW55Y2ggcm96d2nEhXphxYQsIGt0w7NyZSBwb21hZ2FqxIUgb3NpxIVnbsSFxIcgY2Vs
ZSBiaXpuZXNvd2UuCgpaIHBvd29kemVuaWVtIHByb3dhZHppbGnFm215IHByb2pla3R5IHN6a29s
ZW5pb3dlIGRsYSByZW5vbW93YW55Y2ggbWFyZWssIHRha2ljaCBqYWs6IFBaVSwgQmFuayBQZWth
byBTLkEuLCBQV0MsIFJvbnNvbiBEZXZlbG9wbWVudCwgR2VkZW9uIFJpY2h0ZXIgaSB3aWVsdSBp
bm55Y2guCgpNb8W8ZW15IG5pZXpvYm93acSFenVqxIVjbyBwb3Jvem1hd2lhxIcgbyBtb8W8bGl3
b8WbY2lhY2ggem9yZ2FuaXpvd2FuaWEgc3prb2xlbmlhIGRsYSBQYcWEc3R3YSBmaXJteT8KCgpQ
b3pkcmF3aWFtClRvbWFzeiBXaWV3acOzcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
