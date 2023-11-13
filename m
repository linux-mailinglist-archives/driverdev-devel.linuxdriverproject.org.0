Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D387EA2FF
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Nov 2023 19:38:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5333140123;
	Mon, 13 Nov 2023 18:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5333140123
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tPpUT0RUB2Ew; Mon, 13 Nov 2023 18:38:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFA2E40129;
	Mon, 13 Nov 2023 18:38:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFA2E40129
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 42C6D1BF360
 for <devel@linuxdriverproject.org>; Mon, 13 Nov 2023 18:38:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B8618236D
 for <devel@linuxdriverproject.org>; Mon, 13 Nov 2023 18:38:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B8618236D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cXgS3mLi9mkM for <devel@linuxdriverproject.org>;
 Mon, 13 Nov 2023 18:38:28 +0000 (UTC)
X-Greylist: delayed 4806 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 13 Nov 2023 18:38:28 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34E4B8236C
Received: from smtp.inaport4.co.id (mta-2.inaport4.co.id [103.219.76.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34E4B8236C
 for <devel@driverdev.osuosl.org>; Mon, 13 Nov 2023 18:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp.inaport4.co.id (Postfix) with ESMTP id C3A3A80A7319;
 Tue, 14 Nov 2023 01:11:50 +0800 (WITA)
Received: from smtp.inaport4.co.id ([127.0.0.1])
 by localhost (mta-2.inaport4.co.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id UiGM9cF0M5Su; Tue, 14 Nov 2023 01:11:50 +0800 (WITA)
Received: from localhost (localhost [127.0.0.1])
 by smtp.inaport4.co.id (Postfix) with ESMTP id 0515B8105631;
 Tue, 14 Nov 2023 01:11:50 +0800 (WITA)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.inaport4.co.id 0515B8105631
X-Amavis-Modified: Mail body modified (using disclaimer) - mta-2.inaport4.co.id
X-Virus-Scanned: amavisd-new at 
Received: from smtp.inaport4.co.id ([127.0.0.1])
 by localhost (mta-2.inaport4.co.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gYO80F6uA4Ua; Tue, 14 Nov 2023 01:11:49 +0800 (WITA)
Received: from mailstore.inaport4.co.id (mailstore.inaport4.co.id
 [172.10.1.75])
 by smtp.inaport4.co.id (Postfix) with ESMTP id B6E068105638;
 Tue, 14 Nov 2023 01:11:46 +0800 (WITA)
Date: Tue, 14 Nov 2023 01:11:46 +0800 (WITA)
From: =?utf-8?B?0KHQuNGB0YLQtdC80L3Ri9C5INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA?=
 <syafri@inaport4.co.id>
Message-ID: <1151629753.368400.1699895506707.JavaMail.zimbra@inaport4.co.id>
Subject: 
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.8_GA_3025 (zclient/8.8.8_GA_3025)
Thread-Index: y9OaESdYsq4TW/NA6Nq+3RaKjImMfQ==
Thread-Topic: 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inaport4.co.id; 
 s=67133E3A-D729-11EC-9A3E-209BEC03DFB2; t=1699895510;
 bh=Jx3dcL/IIt9T0ZSV86Zqvxv64a59Mzb0LP9gkXXwYFY=;
 h=Date:From:Message-ID:MIME-Version;
 b=AioxqgsX2EvscX/HoT1h/nYLEpr/K81zNhpV46Q9p3PAxUxFvZZ/xedjjL8YkVKEa
 MZjHIS1fH/kLhQhApHfvvC5ieYXA5wFlI3A6NWjWjpKwEmpo9EWRXwW34QkXK70teF
 sLbeuMASYS5+exAz2jW2Zh25o8c9yxR+0UjYSXGJhC8OMdGKRRB69qCAiHAyCoJZqt
 07JikVSrFB/kgf3G+eHvpIBNAdAG8K3/Bm80pAKNJPLq4gCGlp4fLklYWRKsrdIhXG
 +9hmuyN9WBkZ+8iyay8CnMUwYRcbl7MICLM7YxkK/bl+v+yIQJ089OQOh7H+95eqJT
 FhdUN3F/x2CAQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=inaport4.co.id header.i=@inaport4.co.id
 header.a=rsa-sha256 header.s=67133E3A-D729-11EC-9A3E-209BEC03DFB2
 header.b=AioxqgsX
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
CtCh0LjRgdGC0LXQvNC90YvQuSDQsNC00LzQuNC90LjRgdGC0YDQsNGC0L7RgC4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
