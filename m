Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 865A67EEE53
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Nov 2023 10:19:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C7FE83BDA;
	Fri, 17 Nov 2023 09:19:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C7FE83BDA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MzR-TgcMAgnl; Fri, 17 Nov 2023 09:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7330F83BC8;
	Fri, 17 Nov 2023 09:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7330F83BC8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CFC1F1BF580
 for <devel@linuxdriverproject.org>; Fri, 17 Nov 2023 09:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A888C41E8E
 for <devel@linuxdriverproject.org>; Fri, 17 Nov 2023 09:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A888C41E8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KQi-jUkFGAwz for <devel@linuxdriverproject.org>;
 Fri, 17 Nov 2023 09:19:16 +0000 (UTC)
X-Greylist: delayed 493 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 17 Nov 2023 09:19:15 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBB4942D15
Received: from mail.corebizinsight.com (mail.corebizinsight.com
 [217.61.112.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBB4942D15
 for <devel@driverdev.osuosl.org>; Fri, 17 Nov 2023 09:19:15 +0000 (UTC)
Received: by mail.corebizinsight.com (Postfix, from userid 1002)
 id 6BD8A83EE4; Fri, 17 Nov 2023 10:10:35 +0100 (CET)
Received: by mail.corebizinsight.com for <devel@driverdev.osuosl.org>;
 Fri, 17 Nov 2023 09:10:17 GMT
Message-ID: <20231117084500-0.1.22.9yn1.0.20eha6be5d@corebizinsight.com>
Date: Fri, 17 Nov 2023 09:10:17 GMT
From: "Jakub Kovarik" <jakub.kovarik@corebizinsight.com>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Pros=C3=ADm_kontaktujte?=
X-Mailer: mail.corebizinsight.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=corebizinsight.com; s=mail; t=1700212259;
 bh=CEmchsDu5Oe+RNHCZSBmKSgMOuy1xnO2dydqkEjt3Qs=;
 h=Date:From:To:Subject:From;
 b=ScYKnzlj/WpkUfG+4th42ewjJ1dQYdYlcidL3raN98DjI5NeF5mPbmJIfO5euCgt0
 RzUXWcEaY5jwEfPQL3WiUA3VCtl4PK8vQLO6DePr1kHFDJrb6sKMz4o5Q5Qj6G1eIS
 ofXH50a4WHJdLEatSTlcZ69C0/jVrDJPgu/jkuZuFvlrVzqw2fhGnr1Is/XAfFh50I
 KABnn2Rkb1Pb0BGG4diyaq0N+lPzL2Hkvkw0WKNcQBnlJoR+5j7twY0ExCymKy8VjL
 ACg00o+Aj5sumgwV527w+DqdXVzibp2sSXUG6+bJ/mFA1qmvnfuqbuH66lVAuNdh+H
 q23J4NIll9n8g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=corebizinsight.com
 header.i=@corebizinsight.com header.a=rsa-sha256 header.s=mail
 header.b=ScYKnzlj
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
