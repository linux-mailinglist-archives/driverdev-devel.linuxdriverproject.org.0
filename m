Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 361336ADE7E
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Mar 2023 13:16:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5A564171C;
	Tue,  7 Mar 2023 12:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5A564171C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9LRKHNt4qAVn; Tue,  7 Mar 2023 12:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4870241715;
	Tue,  7 Mar 2023 12:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4870241715
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DEA921BF303
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 12:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B902D4023B
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 12:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B902D4023B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XoBamQKTcTBI for <devel@linuxdriverproject.org>;
 Tue,  7 Mar 2023 12:16:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF0BB4013F
Received: from mail.belitungtimurkab.go.id (unknown [103.205.56.27])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF0BB4013F
 for <devel@driverdev.osuosl.org>; Tue,  7 Mar 2023 12:16:12 +0000 (UTC)
Received: from mail.belitungtimurkab.go.id (localhost.localdomain [127.0.0.1])
 by mail.belitungtimurkab.go.id (Postfix) with ESMTPS id 17E238A5720; 
 Tue,  7 Mar 2023 14:55:00 +0700 (WIB)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.belitungtimurkab.go.id (Postfix) with ESMTP id 2CA308A5541;
 Tue,  7 Mar 2023 14:39:05 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.belitungtimurkab.go.id 2CA308A5541
Received: from mail.belitungtimurkab.go.id ([127.0.0.1])
 by localhost (mail.belitungtimurkab.go.id [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id 4BFLXwTtgJup; Tue,  7 Mar 2023 14:39:04 +0700 (WIB)
Received: from mail.belitungtimurkab.go.id (mail.belitungtimurkab.go.id
 [103.205.56.27])
 by mail.belitungtimurkab.go.id (Postfix) with ESMTP id 8C5F08A6938;
 Tue,  7 Mar 2023 14:38:59 +0700 (WIB)
Date: Tue, 7 Mar 2023 14:38:59 +0700 (WIB)
From: =?utf-8?B?INCh0LjRgdGC0LXQvNC90YvQuSDQsNC00LzQuNC90LjRgdGC0YDQsNGC0L7RgA==?=
 <dinkes@belitungtimurkab.go.id>
Message-ID: <502657341.29258.1678174739296.JavaMail.zimbra@belitungtimurkab.go.id>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [103.205.56.27]
X-Mailer: Zimbra 8.7.11_GA_3789 (zclient/8.7.11_GA_3789)
Thread-Index: m2AiaPVzDubof6jq6cVzdMDRM/+NbQ==
Thread-Topic: 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=belitungtimurkab.go.id; s=mail; t=1678174745;
 bh=1yQ6sMopnzyP9MqfXA851yTH5iXi+5F1MZ7Sp6JOGqk=;
 h=Date:From:Message-ID:MIME-Version;
 b=lvMmm/tRjjgz8mpJk4u4xv1qDvjXKFNaru5VFuweaOFHOPCAhDg2Ux/x6vttbLvGu
 CgXMBwZyBby51TIBDKW6ldeWiKDzBOHaJh/Nom0VmM7dnj24GJgNWiDvasTE7GgxB9
 1It5TfY9aQW0vXXLXkzeCow10g6ey+Zebt5DwIdL8lKanH1wbOu5zAQl5lU/xDlhAn
 e97PaUo7J0UESNWzbFKaN9j1LBPf8GIw+B4KO637hZ4uwOzEW3vgRwt2YnkeNtCcCZ
 ObmLfFBc6ZvpGh5hn2PNFGDME6hq/d/HWVQlx5pitZrKpHijSFquzN1BQMx4rKmYCe
 YpQDTRYxGc4QQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=belitungtimurkab.go.id
 header.i=@belitungtimurkab.go.id header.a=rsa-sha256 header.s=mail
 header.b=lvMmm/tR
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
otCg0JDQotCe0KDQkC4gUlUwMDYsNTI0NzY1IEAyMDIzINCf0L7Rh9GC0L7QstCw0Y8g0YLQtdGF
0L3QuNGH0LXRgdC60LDRjyDQv9C+0LTQtNC10YDQttC60LAgQDIwMjMKCtCh0L/QsNGB0LjQsdC+
CtCh0LjRgdGC0LXQvNC90YvQuSDQsNC00LzQuNC90LjRgdGC0YDQsNGC0L7RgC4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
