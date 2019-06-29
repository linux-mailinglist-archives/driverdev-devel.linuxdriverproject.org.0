Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6135AA24
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:28:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D4FB5204A6;
	Sat, 29 Jun 2019 10:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zO4f1E2Rx1vF; Sat, 29 Jun 2019 10:28:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4992020499;
	Sat, 29 Jun 2019 10:28:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C41471BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C158120495
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zEPiQNB062NZ for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:28:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by silver.osuosl.org (Postfix) with ESMTPS id A9E7C203AF
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561804068;
 bh=oj3lEsqwlc9HMeW13jPftORYX0fnnx2+Twl0l4AuHFg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=k37CiEiIHlkwg16x0k1F2sU04Pyc1H3qvzTUnNl7VyWNF9VpunMr0FJXWk4O332Bl
 CZzX22P8lodyJjI70cSPCiPsRrh5HIjnls1EoNVCmNoSdc+fG7FaWizYedzlYz9aAM
 D2gKjBKjKj8uIZKmsjfYtDAaMUx59+UV4OohJ4Mw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.111]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mj8qd-1iAhyj2EQX-00f7nI; Sat, 29
 Jun 2019 12:27:48 +0200
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
To: Dave Stevenson <dave.stevenson@raspberrypi.org>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <f4492041-2587-eedb-8ae5-ae610e90fde2@xs4all.nl>
 <24265b85-a12a-7a46-91d1-f20f5a133f8b@gmx.net>
 <CAAoAYcM6-xBEZfzpxchwh5z21HbFbu57a=7PZNoLB5J2vef7QA@mail.gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <3be8db2a-6960-b31f-3b3b-78b45733fe01@gmx.net>
Date: Sat, 29 Jun 2019 12:27:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAAoAYcM6-xBEZfzpxchwh5z21HbFbu57a=7PZNoLB5J2vef7QA@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:tdZvR7djPZcMZsZiH/C0lwP5pmG3QD72btjtp68x/Mn05o6Lxkr
 PV09oeH3/aNorWGsaQS/jmu72Fb8p2eX+FVR0gz/L0RQ2cN3xk9rE6cADdT+hVCeFQEhPt3
 FDKqljmC4cPUeL0b9JOGHH9OFG1eHjEh+FqjqBzkbRKBnxqncVLDzkDUs/7sG3754oo+hJn
 oB0IHloM/YrIK6VsF/0uw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:PbD8h4eg1NM=:LibZowrsleCCevBF3eSeT7
 fbw1yjpxCxyTw5NefTa3oJBwCBxwj+xhm1b0B5vK0iY95xdY016j6lxgD1xl+7EsZl5CVss3Q
 GGAY/x6qJwQwarmexLcszUBZaSNhhRBPob2s+taDzfov9OKAFokOdepuem7BjIF5vwzUXIxBq
 6QUzy5Qke7+Da3W1NYKmoidxmjzZZrc26HWbeY8n3RLx0CZdzONQCofUCO/ABE/rpGkHQuh7W
 r3tnLTZopwwis981n9wA0ypzicLM4+xdK/jt0QW+a0vCSJCgq/3MNkAAOxzvd/4bm3pGmz/Dk
 E/Ie1rMH5hEvg/dbKwvk5Bzmb3vG6JxY6wwt0e3D2evA5vXNYHkGoIe7OIMIzJO+OuZsC0DZH
 rgz/r+r+PSde7pqI+SebKGeQKRJb5n9HDrFAbvIk2y1ZxAqi39hBZ2vaqDUAVy/XPq2lfGoeI
 pVUK9KkLCdg+Y7Z6VTv9EkIF6u6vyQxZoOKVdxszfg+l29fUMAfmQnKej85dEgnptHUkaPUQy
 NkJjF1PA65jOw1fyXELtTtWHf/xxmYREXMXRqfDJV8VZOk8toB1/3Gur3TdY+Iyh18/srY5HT
 bvQtl+z9AMX7PAcFLHkJs0h80qls5JzlkYUkyzYOtPOWKGZN62KUMlOV5Lq6rV3U0KROK9NAz
 fDfBxsBHMus0Rm3pKE7ez98cPxEPIc5w5Dmye8ZBzJszG4cdMbJJcOi17vTN64VdlxBSCzkS0
 U8clGuwRU58x14H6T7FgHWTmgjTnkfs0Ck2KOAwgFa992DDIPxDYdlO3sIPEyzRnpBUfNBobS
 ECchz4k1URDmIKrXcRRqwwnuwoNS3kNl2CVpAHSyitXweOVsJyDAcW+xtDE030Gsc6Ox9z7Zg
 XgNX9n40FWJKdOun0ZqPPIhun0CfrPRc33VPFhaf+3Nou7fDKUig5b2o0INBP0o842hhvnN36
 YVntu1fd3fCVq9poZJU6RuR/Z9M7HyHNB6Hbsblkfhi4Cv+HbuqQHDhEykPQH3NRs2RV+lZPG
 /ZeRY27JjYv+zIDe8aTxTv9VV7MpIWMAW54ep+V/ktB5cgR3jZ85iY2C0e2QPdbrzsGJmgtlM
 1KGhogxMLUMfW4=
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Eric Anholt <eric@anholt.net>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, LMML <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgRGF2ZSwKCkFtIDI4LjA2LjE5IHVtIDE5OjI5IHNjaHJpZWIgRGF2ZSBTdGV2ZW5zb246Cj4g
SGkgU3RlZmFuCj4KPiBDb3VsZCB5b3UgdHJ5IHJ1bm5pbmcKPiB2NGwyLWN0bCAtdiB3aWR0aD02
NDAsaGVpZ2h0PTQ4MCxwaXhlbGZvcm1hdD1ZVTEyCj4gYmVmb3JlIHJ1bm5pbmcgdjRsMi1jb21w
bGlhbmNlPyBUaGUgZGVmYXVsdCBmb3JtYXQgaXMgSlBFRywgYW5kIEkganVzdAo+IHdvbmRlciBp
ZiB0aGVyZSBpcyBhbiBpc3N1ZSBsdXJraW5nIGluIHRoZSBjb21wcmVzc2lvbiBzaWRlLgoKeWVz
LCB0aGlzIGlzIG11Y2ggYmV0dGVyOgoKU3RyZWFtaW5nIGlvY3RsczoKwqDCoMKgIHRlc3QgcmVh
ZC93cml0ZTogT0sKwqDCoMKgIHRlc3QgYmxvY2tpbmcgd2FpdDogT0sKwqDCoMKgIHRlc3QgTU1B
UCAobm8gcG9sbCk6IE9LCsKgwqDCoCB0ZXN0IE1NQVAgKHNlbGVjdCk6IE9LCsKgwqDCoCB0ZXN0
IE1NQVAgKGVwb2xsKTogT0sKwqDCoMKgIHRlc3QgVVNFUlBUUiAobm8gcG9sbCk6IE9LCsKgwqDC
oCB0ZXN0IFVTRVJQVFIgKHNlbGVjdCk6IE9LCsKgwqDCoCB0ZXN0IERNQUJVRiAobm8gcG9sbCk6
IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBETUFCVUYgKHNlbGVjdCk6IE9LIChOb3Qg
U3VwcG9ydGVkKQoKVG90YWwgZm9yIGJtMjgzNSBtbWFsIGRldmljZSAvZGV2L3ZpZGVvMDogNTMs
IFN1Y2NlZWRlZDogNTMsIEZhaWxlZDogMCwKV2FybmluZ3M6IDAKCj4gSSdsbCBnZXQgYSBQaTMg
bWFpbmxpbmUgYnVpbGQgZ29pbmcgd2hlbiBJIGdldCBhIGNoYW5jZS4KPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
