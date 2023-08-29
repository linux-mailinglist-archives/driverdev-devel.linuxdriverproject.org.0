Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D153B78BFE1
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Aug 2023 10:06:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C813A60803;
	Tue, 29 Aug 2023 08:06:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C813A60803
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fLgtShvhELdW; Tue, 29 Aug 2023 08:06:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C059B60776;
	Tue, 29 Aug 2023 08:06:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C059B60776
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FD3E1BF29D
 for <devel@linuxdriverproject.org>; Tue, 29 Aug 2023 08:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0846A40935
 for <devel@linuxdriverproject.org>; Tue, 29 Aug 2023 08:06:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0846A40935
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ivqQixChXtcZ for <devel@linuxdriverproject.org>;
 Tue, 29 Aug 2023 08:06:39 +0000 (UTC)
X-Greylist: delayed 331 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 29 Aug 2023 08:06:39 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D7D440928
Received: from mail.corebizinsight.com (mail.corebizinsight.com
 [217.61.112.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D7D440928
 for <devel@linuxdriverproject.org>; Tue, 29 Aug 2023 08:06:39 +0000 (UTC)
Received: by mail.corebizinsight.com (Postfix, from userid 1002)
 id 02BBF82DD1; Tue, 29 Aug 2023 10:00:48 +0200 (CEST)
Received: by mail.corebizinsight.com for <devel@linuxdriverproject.org>;
 Tue, 29 Aug 2023 08:00:30 GMT
Message-ID: <20230829084500-0.1.g.17k0.0.gjle45bviy@corebizinsight.com>
Date: Tue, 29 Aug 2023 08:00:30 GMT
From: "Jakub Kovarik" <jakub.kovarik@corebizinsight.com>
To: <devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Pros=C3=ADm_kontaktujte?=
X-Mailer: mail.corebizinsight.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=corebizinsight.com; s=mail; t=1693296065;
 bh=CEmchsDu5Oe+RNHCZSBmKSgMOuy1xnO2dydqkEjt3Qs=;
 h=Date:From:To:Subject:From;
 b=Wa1stYT4XlCVJQBLQR4EK7WWSpXdtrjNq+HiDQHfC1yqMZC81lbw6xiq6YI7Z4pvk
 sxxF+MKQYcCDCNWaK6lFagkNFhGnP8tOVG3qWA4zFj+bh2DRwSNFX659Patbs+cvmA
 6xgkwFIrqAGYCOl+4tVIuYIQim55v0UZgK86sASBOT03j+uTrIP3+n6C8wXPskac04
 RL8Tdd15k6Rw5N6pMK79GZRYG9g3b+c8flrcSHSVS14BlZF1tOYcOQL09plqzGz0g/
 3mozL8V7Sq/8F4ibszYFZcuyUn2DIGF4HWWd8ip839Ll2cVisx3S16gk5vIYeekRwN
 PotfSZ0lmkzbg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=corebizinsight.com
 header.i=@corebizinsight.com header.a=rsa-sha256 header.s=mail
 header.b=Wa1stYT4
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

RG9icsOpIHLDoW5vLAoKSmUgbW/Fvm7DqSBzIHbDoW1pIG5hdsOhemF0IHNwb2x1cHLDoWNpPwoK
UsOhZCBzaSBwcm9tbHV2w61tIHMgb3NvYm91IHphYsO9dmFqw61jw60gc2UgcHJvZGVqbsOtIMSN
aW5ub3N0w60uCgpQb23DoWjDoW1lIGVmZWt0aXZuxJsgesOtc2vDoXZhdCBub3bDqSB6w6FrYXpu
w61reS4KCk5ldmFoZWp0ZSBtZSBrb250YWt0b3ZhdC4KClYgcMWZw61wYWTEmyB6w6FqbXUgVsOh
cyBidWRlIGtvbnRha3RvdmF0IG7DocWhIGFuZ2xpY2t5IG1sdXbDrWPDrSB6w6FzdHVwY2UuCgoK
UG96ZHJhdnkKSmFrdWIgS292YXJpawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
