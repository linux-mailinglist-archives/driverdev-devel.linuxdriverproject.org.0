Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8F8677AFF
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Jan 2023 13:33:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24F4440966;
	Mon, 23 Jan 2023 12:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24F4440966
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aNpbbjtZLEsM; Mon, 23 Jan 2023 12:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 886AB4064C;
	Mon, 23 Jan 2023 12:33:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 886AB4064C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB4CD1BF59B
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 12:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A04A441691
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 12:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A04A441691
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0YIW6ryLtpaq for <devel@linuxdriverproject.org>;
 Mon, 23 Jan 2023 12:33:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7118841674
Received: from mx-gw-prx01.wika.co.id (pegasus.wika.zone [103.25.196.25])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7118841674
 for <devel@driverdev.osuosl.org>; Mon, 23 Jan 2023 12:33:00 +0000 (UTC)
Received: from mx-gw-prx01.wika.co.id (localhost.localdomain [127.0.0.1])
 by mx-gw-prx01.wika.co.id (Proxmox) with ESMTP id A53DF440F3;
 Mon, 23 Jan 2023 19:32:59 +0700 (WIB)
Received: from smtp-gw.wika.co.id (smtp-gw.wika.co.id [10.4.0.44])
 by mx-gw-prx01.wika.co.id (Proxmox) with ESMTP id CD161440C9;
 Mon, 23 Jan 2023 19:32:58 +0700 (WIB)
Received: from smtp-gw-01.wika.co.id (localhost [127.0.0.1])
 by smtp-gw1.wika.co.id (Postfix) with ESMTP id CF6381F09E;
 Mon, 23 Jan 2023 19:32:45 +0700 (WIB)
X-Virus-Scanned: amavisd-new at wika.co.id
Received: from smtp-gw.wika.co.id ([127.0.0.1])
 by smtp-gw-01.wika.co.id (smtp-gw-01.wika.co.id [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id JXKZsTLYICRE; Mon, 23 Jan 2023 19:32:45 +0700 (WIB)
Received: from mailbox.wika.co.id (unknown [10.4.0.84])
 by smtp-gw1.wika.co.id (Postfix) with ESMTP id 597FF1EFCA;
 Mon, 23 Jan 2023 19:32:21 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mailbox.wika.co.id (Postfix) with ESMTP id BF4427FFC2715;
 Mon, 23 Jan 2023 18:47:06 +0700 (WIB)
Received: from mailbox.wika.co.id ([127.0.0.1])
 by localhost (mailbox.wika.co.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id q2rusRepK5HB; Mon, 23 Jan 2023 18:47:06 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mailbox.wika.co.id (Postfix) with ESMTP id A97D87FF5C931;
 Mon, 23 Jan 2023 18:47:05 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mailbox.wika.co.id A97D87FF5C931
X-Virus-Scanned: amavisd-new at wika.co.id
Received: from mailbox.wika.co.id ([127.0.0.1])
 by localhost (mailbox.wika.co.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id O0cvVtZOOv1Z; Mon, 23 Jan 2023 18:47:05 +0700 (WIB)
Received: from mailbox.wika.co.id (mailbox.wika.co.id [10.5.0.1])
 by mailbox.wika.co.id (Postfix) with ESMTP id EE3427FF5C926;
 Mon, 23 Jan 2023 18:46:31 +0700 (WIB)
Date: Mon, 23 Jan 2023 18:46:31 +0700 (WIB)
From: =?utf-8?B?0KHQuNGB0YLQtdC80L3Ri9C5INCw0LTQvNC40L3QuNGB0YLRgNCw0YLQvtGA?=
 <wellbeing@wika.co.id>
Message-ID: <272884882.1782386.1674474391867.JavaMail.zimbra@wika.co.id>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [10.5.0.1]
X-Mailer: Zimbra 8.8.12_GA_3866 (zclient/8.8.12_GA_3866)
Thread-Index: rIJzxTcEujIEcaCXJWZPwl5vVdwOlw==
Thread-Topic: 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wika.co.id; 
 s=3A269092-2A4A-11ED-99C4-3E27D2C9E2D5; t=1674474425;
 bh=Jx3dcL/IIt9T0ZSV86Zqvxv64a59Mzb0LP9gkXXwYFY=;
 h=Date:From:Message-ID:MIME-Version;
 b=moexPYL5U/HaJGOUMxuPHEU7uCU0uSGTLh5e55XxZydveVKFN70sGTbNisNchxt1p
 QHt+svQZo1DWJRUqrrLFXw+Q5GU40kYT22b41ZWZMsc7utTJc+6k6dD4Nq5iHMaFqS
 peqrn+ES1vPVAGkOqDwMS6dkHtLfICr3wy26oktjpeENKRQVezJnGtXkrSg0yVe/U7
 GsG4mVIZgzuaxWoP9n502BQa/qS2H4Pjrh81ytqB1CYvAwciMj1OFpu0XEiQxY49qR
 Y37XgeEgCEzQkxxnKJN00lJz3Vdp0FlQW1v4/5slEzM7RxjyEZkSspqvIa+Olp+XgM
 YjFO9aiEmTKUw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=wika.co.id header.i=@wika.co.id
 header.a=rsa-sha256 header.s=3A269092-2A4A-11ED-99C4-3E27D2C9E2D5
 header.b=moexPYL5
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
CtCh0LjRgdGC0LXQvNC90YvQuSDQsNC00LzQuNC90LjRgdGC0YDQsNGC0L7RgC4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
