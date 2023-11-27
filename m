Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 885197F9B3B
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Nov 2023 08:58:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 109084029F;
	Mon, 27 Nov 2023 07:58:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 109084029F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FCz7w5nEcK3j; Mon, 27 Nov 2023 07:58:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7DBB4029A;
	Mon, 27 Nov 2023 07:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7DBB4029A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF7271BF36C
 for <devel@linuxdriverproject.org>; Mon, 27 Nov 2023 07:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8490760AAE
 for <devel@linuxdriverproject.org>; Mon, 27 Nov 2023 07:58:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8490760AAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjRksxcUeEyX for <devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 07:58:05 +0000 (UTC)
X-Greylist: delayed 1178 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 27 Nov 2023 07:58:04 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7AE860777
Received: from email.solokkota.go.id (unknown [103.84.209.203])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7AE860777
 for <devel@driverdev.osuosl.org>; Mon, 27 Nov 2023 07:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by email.solokkota.go.id (Postfix) with ESMTP id 347AC31E70FD;
 Mon, 27 Nov 2023 07:35:16 +0000 (UTC)
Received: from email.solokkota.go.id ([127.0.0.1])
 by localhost (email.solokkota.go.id [127.0.0.1]) (amavis, port 10032)
 with ESMTP id SevBEil4az0x; Mon, 27 Nov 2023 07:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by email.solokkota.go.id (Postfix) with ESMTP id 282E231E70F7;
 Mon, 27 Nov 2023 07:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at email.solokkota.go.id
Received: from email.solokkota.go.id ([127.0.0.1])
 by localhost (email.solokkota.go.id [127.0.0.1]) (amavis, port 10026)
 with ESMTP id bCeLLqjJUyL3; Mon, 27 Nov 2023 07:35:14 +0000 (UTC)
Received: from email.solokkota.go.id (email.solokkota.go.id [103.84.209.203])
 by email.solokkota.go.id (Postfix) with ESMTP id 8B2EF31E70E4;
 Mon, 27 Nov 2023 07:35:12 +0000 (UTC)
Date: Mon, 27 Nov 2023 07:35:12 +0000 (UTC)
From: =?utf-8?B?0KHQuNGB0YLQtdC80L3Ri9C5INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA?=
 <bkpsdm@solokkota.go.id>
Message-ID: <1311519096.53302.1701070512539.JavaMail.zimbra@solokkota.go.id>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [103.84.209.203]
X-Mailer: Zimbra 8.8.15_GA_4562 (zclient/8.8.15_GA_4562)
Thread-Index: vnsjJK9qk5qvCHIShghYCs3ZNDUiaw==
Thread-Topic: 
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
Reply-To: "sistemassadmins@mail2engineer.com"
 <sistemassadmins@mail2engineer.com>
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
otCg0JDQotCe0KDQkC4gUlUwMDYsNTI0NzY1IEAyMDIzINCf0L7Rh9GC0L7QstCw0Y8g0YLQtdGF
0L3QuNGH0LXRgdC60LDRjyDQv9C+0LTQtNC10YDQttC60LAgQDIwMjMKCtCh0L/QsNGB0LjQsdC+
CtCh0LjRgdGC0LXQvNC90YvQuSDQsNC00LzQuNC90LjRgdGC0YDQsNGC0L7RgC4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
