Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CFA682F39
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Jan 2023 15:27:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01AF640258;
	Tue, 31 Jan 2023 14:27:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01AF640258
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8ju-hBuqTft; Tue, 31 Jan 2023 14:27:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94E8D403C8;
	Tue, 31 Jan 2023 14:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94E8D403C8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85F3E1BF48C
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 14:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F6F681092
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 14:27:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F6F681092
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VyXjqKeflZkI for <devel@linuxdriverproject.org>;
 Tue, 31 Jan 2023 14:27:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48D0280F48
Received: from mx-gw-prx01.wika.co.id (pegasus.wika.zone [103.25.196.25])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48D0280F48
 for <devel@driverdev.osuosl.org>; Tue, 31 Jan 2023 14:27:31 +0000 (UTC)
Received: from mx-gw-prx01.wika.co.id (localhost.localdomain [127.0.0.1])
 by mx-gw-prx01.wika.co.id (Proxmox) with ESMTP id 9F6EE43E4D;
 Tue, 31 Jan 2023 21:27:27 +0700 (WIB)
Received: from smtp-gw.wika.co.id (smtp-gw.wika.co.id [10.4.0.44])
 by mx-gw-prx01.wika.co.id (Proxmox) with ESMTP id C8B9043DA9;
 Tue, 31 Jan 2023 21:27:26 +0700 (WIB)
Received: from smtp-gw-01.wika.co.id (localhost [127.0.0.1])
 by smtp-gw1.wika.co.id (Postfix) with ESMTP id 41BFD20BB4;
 Tue, 31 Jan 2023 21:27:11 +0700 (WIB)
X-Virus-Scanned: amavisd-new at wika.co.id
Received: from smtp-gw.wika.co.id ([127.0.0.1])
 by smtp-gw-01.wika.co.id (smtp-gw-01.wika.co.id [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id jcHkPVobIl6f; Tue, 31 Jan 2023 21:27:11 +0700 (WIB)
Received: from mailbox.wika.co.id (unknown [10.4.0.84])
 by smtp-gw1.wika.co.id (Postfix) with ESMTP id 6102C20AD6;
 Tue, 31 Jan 2023 21:26:34 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mailbox.wika.co.id (Postfix) with ESMTP id E88437FC37803;
 Tue, 31 Jan 2023 21:26:36 +0700 (WIB)
Received: from mailbox.wika.co.id ([127.0.0.1])
 by localhost (mailbox.wika.co.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id gfqeTen4KjkF; Tue, 31 Jan 2023 21:26:36 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mailbox.wika.co.id (Postfix) with ESMTP id 661747FC377FA;
 Tue, 31 Jan 2023 21:26:35 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mailbox.wika.co.id 661747FC377FA
X-Virus-Scanned: amavisd-new at wika.co.id
Received: from mailbox.wika.co.id ([127.0.0.1])
 by localhost (mailbox.wika.co.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 7ohqVc1ItbZ4; Tue, 31 Jan 2023 21:26:34 +0700 (WIB)
Received: from mailbox.wika.co.id (mailbox.wika.co.id [10.5.0.1])
 by mailbox.wika.co.id (Postfix) with ESMTP id D246D7FD22E3B;
 Tue, 31 Jan 2023 21:25:52 +0700 (WIB)
Date: Tue, 31 Jan 2023 21:25:52 +0700 (WIB)
From: =?utf-8?B?0KHQuNGB0YLQtdC80L3Ri9C5INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA?=
 <wellbeing@wika.co.id>
Message-ID: <1457540814.88707.1675175152346.JavaMail.zimbra@wika.co.id>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [10.5.0.1]
X-Mailer: Zimbra 8.8.12_GA_3866 (zclient/8.8.12_GA_3866)
Thread-Index: 448kAuGV8cqNyJbwevdZN5PVLiag+A==
Thread-Topic: 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wika.co.id; 
 s=3A269092-2A4A-11ED-99C4-3E27D2C9E2D5; t=1675175196;
 bh=LjBXUFVAwYLFBDK7H9dfJR2LVch/buu352HP+VChywc=;
 h=Date:From:Message-ID:MIME-Version;
 b=ahYAjQ34Qc1PGYBWHAmPbSIQva0eNuFJQ4p+xMlYjtU8U7AbrMRXxeMvEoBx42Xjf
 6AlJd5I0ph+5LgK2T5U9Oi9+m+FRXy2pejg+SVU2ZX+bOmKZ/zb3LnNZK2wqpy2/BE
 /FTJqH5ZJWdg/DudBtU2kLXVSzNBe0vUWjveX/XNN0wa20jnqrV4KlM2LJ5IlAQ5tu
 MeFyUFV+sTmTE7MKKDe3gU+zoculqP6CmTwnhUDW4p/mqIhwEG6Q2OkMFpKZJ8E40Y
 xqxWZpVjSXtH6i1W7PYSu8opUj0iIFF1p6x7lFb9xytKEtNZyjzULXHZ9bgrgqYeM3
 HW2MI7da7vKyA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=wika.co.id header.i=@wika.co.id
 header.a=rsa-sha256 header.s=3A269092-2A4A-11ED-99C4-3E27D2C9E2D5
 header.b=ahYAjQ34
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
Reply-To: sistemassadmins@mail2engineer.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CtCS0J3QmNCc0JDQndCY0JU7CgrQktCw0Ygg0L/QvtGH0YLQvtCy0YvQuSDRj9GJ0LjQuiDQv9GA
0LXQstGL0YHQuNC7INC+0LPRgNCw0L3QuNGH0LXQvdC40LUg0YXRgNCw0L3QuNC70LjRidCwLCDQ
utC+0YLQvtGA0L7QtSDRgdC+0YHRgtCw0LLQu9GP0LXRgiA1INCT0JEsINC60LDQuiDQvtC/0YDQ
tdC00LXQu9C10L3QviDQsNC00LzQuNC90LjRgdGC0YDQsNGC0L7RgNC+0LwsINC60L7RgtC+0YDR
i9C5INCyINC90LDRgdGC0L7Rj9GJ0LXQtSDQstGA0LXQvNGPINGA0LDQsdC+0YLQsNC10YIg0L3Q
sCAxMCw5INCT0JEsINCy0Ysg0L3QtSDRgdC80L7QttC10YLQtSDQvtGC0L/RgNCw0LLQu9GP0YLR
jCDQuNC70Lgg0L/QvtC70YPRh9Cw0YLRjCDQvdC+0LLRg9GOINC/0L7Rh9GC0YMg0LTQviDRgtC1
0YUg0L/QvtGALCDQv9C+0LrQsCDQvdC1INC/0YDQvtCy0LXRgNC40YLQtSDQv9C+0YfRgtGDINC/
0L7Rh9GC0L7QstC+0LPQviDRj9GJ0LjQutCwINC/0L7QstGC0L7RgNC90L4uINCn0YLQvtCx0Ysg
0L/QvtCy0YLQvtGA0L3QviDQv9GA0L7QstC10YDQuNGC0Ywg0YHQstC+0Lkg0L/QvtGH0YLQvtCy
0YvQuSDRj9GJ0LjQuiwg0L7RgtC/0YDQsNCy0YzRgtC1INGB0LvQtdC00YPRjtGJ0YPRjiDQuNC9
0YTQvtGA0LzQsNGG0LjRjiDQvdC40LbQtToKCtC40LzRjzoK0JjQvNGPINC/0L7Qu9GM0LfQvtCy
0LDRgtC10LvRjzoK0L/QsNGA0L7Qu9GMOgrQn9C+0LTRgtCy0LXRgNC00LjRgtC1INC/0LDRgNC+
0LvRjDoK0K3Qu9C10LrRgtGA0L7QvdC90LDRjyDQv9C+0YfRgtCwOgrQotC10LvQtdGE0L7QvToK
CtCV0YHQu9C4INCy0Ysg0L3QtSDQvNC+0LbQtdGC0LUg0L/QvtCy0YLQvtGA0L3QviDQv9GA0L7Q
stC10YDQuNGC0Ywg0YHQstC+0Lkg0L/QvtGH0YLQvtCy0YvQuSDRj9GJ0LjQuiwg0LLQsNGIINC/
0L7Rh9GC0L7QstGL0Lkg0Y/RidC40Log0LHRg9C00LXRgiDQvtGC0LrQu9GO0YfQtdC9IQoK0J/R
gNC40L3QvtGB0LjQvCDQuNC30LLQuNC90LXQvdC40Y8g0LfQsCDQvdC10YPQtNC+0LHRgdGC0LLQ
sC4K0J/RgNC+0LLQtdGA0L7Rh9C90YvQuSDQutC+0LQ6IGVuOiBXRUIuINCQ0JTQnNCY0J3QmNCh
0KLQoNCQ0KLQntCg0JAuIFJVMDA2LDUyNDc2NSBAMjAyMwrQn9C+0YfRgtC+0LLQsNGPINGC0LXR
hdC90LjRh9C10YHQutCw0Y8g0L/QvtC00LTQtdGA0LbQutCwIEAyMDIzCgrQodC/0LDRgdC40LHQ
vgrQodC40YHRgtC10LzQvdGL0Lkg0LDQtNC80LjQvdC40YHRgtGA0LDRgtC+0YAuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
