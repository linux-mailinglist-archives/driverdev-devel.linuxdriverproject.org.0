Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AE66DA98E
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Apr 2023 09:50:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E7E541E0F;
	Fri,  7 Apr 2023 07:50:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E7E541E0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKAOuvK6YXCk; Fri,  7 Apr 2023 07:50:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 234D341DD8;
	Fri,  7 Apr 2023 07:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 234D341DD8
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DD5F1BF3E1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  7 Apr 2023 07:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E68D41E0F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  7 Apr 2023 07:50:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E68D41E0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BZBtgOPHryAh
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  7 Apr 2023 07:50:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8190A41DD8
Received: from mail.dufert24.com (mail.dufert24.com [38.242.205.183])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8190A41DD8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  7 Apr 2023 07:50:32 +0000 (UTC)
Received: by mail.dufert24.com (Postfix, from userid 1001)
 id 21A274304B; Fri,  7 Apr 2023 09:46:05 +0200 (CEST)
Received: by mail.dufert24.com for <driverdev-devel@linuxdriverproject.org>;
 Fri,  7 Apr 2023 07:45:52 GMT
Message-ID: <20230407084500-0.1.32.96pt.0.78to98lwrp@dufert24.com>
Date: Fri,  7 Apr 2023 07:45:52 GMT
From: "Nikolaus Mazal" <nikolaus.mazal@dufert24.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Dropshipping_-_spolupr=C3=A1ce?=
X-Mailer: mail.dufert24.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=dufert24.com; s=mail; 
 t=1680853571; bh=ny+p4XIhL27PiFULKVw7iLEmU7ZwucMvITzNrmwTaWI=;
 h=Date:From:To:Subject:From;
 b=GePz1NUs/1WNbSU/Tvb+pSaLNASGUP3/JZ3VS4sze8ICmNid2aQMXNQvmVSbx0R6s
 TunN8YSZnuCZF8HfAH+ef5kWqly5XVqsMEbDy1iDeX2aDc8HHnhfPDwQJQEP493YUU
 S4flT5h3rWVxYQhxMsLuPELS25p3a7CPv9HshGXygOHMqDmrY3rF5ZJxN2jW3Mk2ql
 ctojNEIV9WYUm2KjZWPGMhE8a3oHGCnYAVSzQP1z0FnjXbNNyA8tXl+6P7lgzLtj5b
 G4CLWBbQNwd1RxgzaYQ9YuXmCCRVK7hUR5bEdRsxbwTvFLuTY/EkDUY4VH4/mj7jnV
 M6eg+Rxj6Kv5A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=dufert24.com header.i=@dufert24.com
 header.a=rsa-sha256 header.s=mail header.b=GePz1NUs
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

RG9icsOpIHLDoW5vLAoKWmFzdHVwdWppIHNwb2xlxI1ub3N0IHZ5csOhYsSbasOtY8OtIMW+YWx1
emllIGEgesOhdsSbc3ksIGt0ZXLDoSBqacW+IGzDqXRhIGtvbXBsZXhuxJsgcG9kcG9ydWplIG9k
dsSbdHbDrSBlLWNvbW1lcmNlIGEgcG9za3l0dWplIHbDvXJvYmPFr20sIGRvZGF2YXRlbMWvbSwg
ZGVzaWduw6lyxa9tIGEgcHJvZGVqY8WvbSBpbm92YXRpdm7DrSBwcm9kZWpuw60gbsOhc3Ryb2pl
IHYgc3lzdMOpbXUgZHJvcHNoaXBwaW5nLgoKSmnFviB0w6ltxJvFmSAyMCBsZXQgcG9za3l0dWpl
bWUgbmHFoWltIHrDoWthem7DrWvFr20gdnlzb2NlIGt2YWxpdG7DrSBwcm9kdWt0eSwgcmVhbGl6
dWplbWUgQjJCIHByb2Rlai4KCkTDrWt5IHNwb2x1cHLDoWNpIHMgbsOhbWkgbcOhdGUgxaFhbmNp
IHJvenbDrWpldCBzdsOpIHBvZG5pa8OhbsOtLCB6dnnFoW92YXQgdHLFvmJ5IGJleiBudXRub3N0
aSBtw610IHNrbGFkIGEgbmFrdXBvdmF0IHpib8W+w60gbmEgc2tsYWQuCgpDaGNldGUtbGkgc2Ug
c2V6bsOhbWl0IHMgbmHFocOtbSBzb3J0aW1lbnRlbSBhIG92xJvFmWl0IHNpIHJvem1hbml0b3N0
IGEga3ZhbGl0dSBuYcWhaWNoIHbDvXJvYmvFryAtIHp2dSB2w6FzIGtlIHNwb2x1cHLDoWNpLgoK
ClBvemRyYXZ5Ck5pa29sYXVzIE1hemFsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
