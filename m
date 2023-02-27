Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C2E6A4162
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Feb 2023 13:07:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05B6E404E0;
	Mon, 27 Feb 2023 12:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05B6E404E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G3IiWK-YlR1x; Mon, 27 Feb 2023 12:07:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA34D403E9;
	Mon, 27 Feb 2023 12:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA34D403E9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B5C9E1BF391
 for <devel@linuxdriverproject.org>; Mon, 27 Feb 2023 12:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8914D81433
 for <devel@linuxdriverproject.org>; Mon, 27 Feb 2023 12:07:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8914D81433
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vDmEZawpeuWg for <devel@linuxdriverproject.org>;
 Mon, 27 Feb 2023 12:07:16 +0000 (UTC)
X-Greylist: delayed 00:13:47 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F213881318
Received: from jayabaya.inti.net.id (jayabaya.inti.net.id [103.53.76.30])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F213881318
 for <devel@driverdev.osuosl.org>; Mon, 27 Feb 2023 12:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by jayabaya.inti.net.id (Postfix) with ESMTP id 2745520641FD3;
 Mon, 27 Feb 2023 18:51:28 +0700 (WIB)
Received: from jayabaya.inti.net.id ([127.0.0.1])
 by localhost (jayabaya.inti.net.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id CYebTH2_lMj4; Mon, 27 Feb 2023 18:51:24 +0700 (WIB)
Received: from jayabaya.inti.net.id (localhost [127.0.0.1])
 by jayabaya.inti.net.id (Postfix) with ESMTPS id 913D620633958;
 Mon, 27 Feb 2023 18:51:22 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 jayabaya.inti.net.id 913D620633958
Received: from jayabaya.inti.net.id (jayabaya.inti.net.id [103.53.76.30])
 by jayabaya.inti.net.id (Postfix) with ESMTP id 17EC120641FE4;
 Mon, 27 Feb 2023 18:51:20 +0700 (WIB)
Date: Mon, 27 Feb 2023 18:51:19 +0700 (WIB)
From: =?utf-8?B?0KHQuNGB0YLQtdC80L3Ri9C5INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA?=
 <ali@inti.net.id>
Message-ID: <1281555008.85247.1677498679976.JavaMail.zimbra@inti.net.id>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [103.53.76.30]
X-Mailer: Zimbra 8.7.11_GA_3808 (zclient/8.7.11_GA_3808)
Thread-Index: 7JvC02YNBs/v/NRr2PA2pADKaLlA/g==
Thread-Topic: 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inti.net.id; 
 s=25E9A704-571A-11E6-9418-628C66225056; t=1677498682;
 bh=CrM1CZv8v8352BqwtRx6w2ospgnxUoQ1Qfrn1jF8Fqw=;
 h=Date:From:Message-ID:MIME-Version;
 b=WkvkW9xGf1N+RII9dF2gXVOC7tMZ68ppGIYH159V77G6/x5O2Tn8iumTT3+MRhrfe
 uZ19AomKhqDXURT34N1aLjko5HCXFG4fZY0sXOMrBNFzYVKRY+ErPrt0RGftSfoR3v
 WNp+bl2+nIdVNzvY2sQmYzsunnGB/SHW6iaGtqdoL+FjE4imMMbsF7ifsfSdH5mSp8
 +1wcqtb5/NyrRKc57UJoeAN6/HOAQrU45KnGy4nRzXKB6RGnCzAecNGQJ9yFHTBMpE
 NBdQ5RFoatLcB7omNq6VEEalTYxVTJ7eTPmReMmB2/T1FIv583Z2EqefY875MtlZc2
 8eoYcxPfzKpWA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=inti.net.id header.i=@inti.net.id header.a=rsa-sha256
 header.s=25E9A704-571A-11E6-9418-628C66225056 header.b=WkvkW9xG
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

0JLQndCY0JzQkNCd0JjQlTsKCtCS0LDRiCDQv9C+0YfRgtC+0LLRi9C5INGP0YnQuNC6INC/0YDQ
tdCy0YvRgdC40Lsg0L7Qs9GA0LDQvdC40YfQtdC90LjQtSDRhdGA0LDQvdC40LvQuNGJ0LAsINC6
0L7RgtC+0YDQvtC1INGB0L7RgdGC0LDQstC70Y/QtdGCIDUg0JPQkSwg0LrQsNC6INC+0L/RgNC1
0LTQtdC70LXQvdC+INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA0L7QvCwg0LrQvtGC0L7RgNGL
0Lkg0LIg0L3QsNGB0YLQvtGP0YnQtdC1INCy0YDQtdC80Y8g0YDQsNCx0L7RgtCw0LXRgiDQvdCw
IDEwLDkg0JPQkSwg0LLRiyDQvdC1INGB0LzQvtC20LXRgtC1INC+0YLQv9GA0LDQstC70Y/RgtGM
INC40LvQuCDQv9C+0LvRg9GH0LDRgtGMINC90L7QstGD0Y4g0L/QvtGH0YLRgyDQtNC+INGC0LXR
hSDQv9C+0YAsINC/0L7QutCwINC90LUg0L/RgNC+0LLQtdGA0LjRgtC1INC/0L7Rh9GC0YMg0L/Q
vtGH0YLQvtCy0L7Qs9C+INGP0YnQuNC60LAg0L/QvtCy0YLQvtGA0L3Qvi4g0KfRgtC+0LHRiyDQ
v9C+0LLRgtC+0YDQvdC+INC/0YDQvtCy0LXRgNC40YLRjCDRgdCy0L7QuSDQv9C+0YfRgtC+0LLR
i9C5INGP0YnQuNC6LCDQvtGC0L/RgNCw0LLRjNGC0LUg0YHQu9C10LTRg9GO0YnRg9GOINC40L3R
hNC+0YDQvNCw0YbQuNGOINC90LjQttC1OgoK0LjQvNGPOgrQmNC80Y8g0L/QvtC70YzQt9C+0LLQ
sNGC0LXQu9GPOgrQv9Cw0YDQvtC70Yw6CtCf0L7QtNGC0LLQtdGA0LTQuNGC0LUg0L/QsNGA0L7Q
u9GMOgrQrdC70LXQutGC0YDQvtC90L3QsNGPINC/0L7Rh9GC0LA6CtCi0LXQu9C10YTQvtC9OgoK
0JXRgdC70Lgg0LLRiyDQvdC1INC80L7QttC10YLQtSDQv9C+0LLRgtC+0YDQvdC+INC/0YDQvtCy
0LXRgNC40YLRjCDRgdCy0L7QuSDQv9C+0YfRgtC+0LLRi9C5INGP0YnQuNC6LCDQstCw0Ygg0L/Q
vtGH0YLQvtCy0YvQuSDRj9GJ0LjQuiDQsdGD0LTQtdGCINC+0YLQutC70Y7Rh9C10L0hCgrQn9GA
0LjQvdC+0YHQuNC8INC40LfQstC40L3QtdC90LjRjyDQt9CwINC90LXRg9C00L7QsdGB0YLQstCw
LgrQn9GA0L7QstC10YDQvtGH0L3Ri9C5INC60L7QtDogZW46IFdFQi4g0JDQlNCc0JjQndCY0KHQ
otCg0JDQotCe0KDQkC4gUlUwMDYsNTI0NzY1IEAyMDIzCtCf0L7Rh9GC0L7QstCw0Y8g0YLQtdGF
0L3QuNGH0LXRgdC60LDRjyDQv9C+0LTQtNC10YDQttC60LAgQDIwMjMKCtCh0L/QsNGB0LjQsdC+
CtCh0LjRgdGC0LXQvNC90YvQuSDQsNC00LzQuNC90LjRgdGC0YDQsNGC0L7RgC4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
