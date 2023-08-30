Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1615F78D3D9
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Aug 2023 10:06:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C8A88201D;
	Wed, 30 Aug 2023 08:06:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C8A88201D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZG7lorYTALw7; Wed, 30 Aug 2023 08:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66B5A81F67;
	Wed, 30 Aug 2023 08:06:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66B5A81F67
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 822531BF40D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 30 Aug 2023 08:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BC968201D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 30 Aug 2023 08:06:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BC968201D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FkSuwGaxknis
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 30 Aug 2023 08:06:42 +0000 (UTC)
X-Greylist: delayed 541 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 30 Aug 2023 08:06:42 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A46381F67
Received: from mail.corebizinsight.com (mail.corebizinsight.com
 [217.61.112.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A46381F67
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 30 Aug 2023 08:06:41 +0000 (UTC)
Received: by mail.corebizinsight.com (Postfix, from userid 1002)
 id 93FB08324F; Wed, 30 Aug 2023 09:56:25 +0200 (CEST)
Received: by mail.corebizinsight.com for
 <driverdev-devel@linuxdriverproject.org>; Wed, 30 Aug 2023 07:56:06 GMT
Message-ID: <20230830084500-0.1.h.1cet.0.6ehfn6wdn5@corebizinsight.com>
Date: Wed, 30 Aug 2023 07:56:06 GMT
From: "Jakub Kovarik" <jakub.kovarik@corebizinsight.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Pros=C3=ADm_kontaktujte?=
X-Mailer: mail.corebizinsight.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=corebizinsight.com; s=mail; t=1693382201;
 bh=CEmchsDu5Oe+RNHCZSBmKSgMOuy1xnO2dydqkEjt3Qs=;
 h=Date:From:To:Subject:From;
 b=1A3a3eaiYbrJXju36SIuTN+dVKPvzHComSO4o/fasUxxoXA8KfVjLjBnKEGKsqMx0
 JpX9xFgLcEGH9RSCDiE4Kkl0luana6bcGI4NuKmNaRLPTelVsfSze0xW/bE6nB9T7v
 ugDbscRuVP561pDCTf8lPR4kC4vkvlQapWGjgNiJkhL1Jt1EoBI8Y9/K43Xn2tl23i
 C5lKXOWWYNSyoz5AvQEZToD8WSqlvptQ09Po/KRF0CQ7uJNAS3q4L647ClTOaxxYBM
 K9w5mhMgDG1bRfITSgYnCpcn/4sn7FWrIfQG+CMzSCpr160HyNKEVCAsEqKy/ZVgZY
 oqLPyYp1+47Zw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=corebizinsight.com
 header.i=@corebizinsight.com header.a=rsa-sha256 header.s=mail
 header.b=1A3a3eai
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
