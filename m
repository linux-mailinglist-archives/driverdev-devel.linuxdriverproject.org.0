Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E44F649EFE
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Dec 2022 13:42:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5EF82405E6;
	Mon, 12 Dec 2022 12:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EF82405E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id brUIndDaOXfX; Mon, 12 Dec 2022 12:42:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 451F0405EF;
	Mon, 12 Dec 2022 12:42:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 451F0405EF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 948D61BF39A
 for <devel@linuxdriverproject.org>; Mon, 12 Dec 2022 12:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6623D410CB
 for <devel@linuxdriverproject.org>; Mon, 12 Dec 2022 12:42:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6623D410CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CC0jtNp5nO2g for <devel@linuxdriverproject.org>;
 Mon, 12 Dec 2022 12:42:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E8B4410D1
Received: from sp12.canonet.ne.jp (sp12.canonet.ne.jp [210.134.168.89])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E8B4410D1
 for <devel@driverdev.osuosl.org>; Mon, 12 Dec 2022 12:42:24 +0000 (UTC)
Received: from csp12.canonet.ne.jp (unknown [172.21.160.132])
 by sp12.canonet.ne.jp (Postfix) with ESMTP id 682711E0EFA;
 Mon, 12 Dec 2022 21:42:23 +0900 (JST)
Received: from echeck12.canonet.ne.jp ([172.21.160.122]) by csp2 with ESMTP
 id 4i8VpuYPLyh2r4i8VpVjYD; Mon, 12 Dec 2022 21:42:23 +0900
X-CNT-CMCheck-Reason: "undefined", "v=2.4 cv=HvXIp2fS c=1 sm=1 tr=0
 ts=639721af cx=g_jp:t_eml p=7Sxi0QMO7t8A:10 p=KEtzfpT9BBLiWZE7bbMA:9
 p=SOgVINUt1DMA:10 p=CuhS7ufEc6Fov-6dDykT:22 p=l6gFzSxlb5f3xrsl_-d5:22
 a=5J8QHEf9WaWkijFsPIoXCQ==:117 a=/Fl49QCxyQ7sEYSNAJHDMg==:17
 a=PlGk70OYzacA:10 a=Dyoqhi_TatcA:10 a=Cfj4BQAnxiAA:10 a=sHyYjHe8cH0A:10
 a=x7bEGLp0ZPQA:10 a=pGLkceISAAAA:8 a=Ft8UYL4EG9YA:10 a=wgxcfbkjHcwA:10
 a=LMeYhyiRXuWaZucJAQ-w:22"
X-CNT-CMCheck-Score: 100.00
Received: from echeck12.canonet.ne.jp (localhost [127.0.0.1])
 by esets.canonet.ne.jp (Postfix) with ESMTP id 2A7E01C023D;
 Mon, 12 Dec 2022 21:42:23 +0900 (JST)
X-Virus-Scanner: This message was checked by ESET Mail Security
 for Linux/BSD. For more information on ESET Mail Security,
 please, visit our website: http://www.eset.com/.
Received: from smtp12.canonet.ne.jp (unknown [172.21.160.102])
 by echeck12.canonet.ne.jp (Postfix) with ESMTP id 27EF31C021D;
 Mon, 12 Dec 2022 21:42:23 +0900 (JST)
Received: from User (unknown [178.151.134.232])
 by smtp12.canonet.ne.jp (Postfix) with ESMTPA id C499415F995;
 Mon, 12 Dec 2022 21:40:38 +0900 (JST)
From: "Emmanuel"<ietomi@shonan-s.co.jp>
Subject: How Are You Today?
Date: Mon, 12 Dec 2022 12:42:12 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-EsetResult: clean, %VIRUSNAME%
X-ESET-AS: R=SPAM; S=100; OP=CALC; TIME=1670848943; VERSION=7942; MC=666044119;
 TRN=15; CRV=0; IPC=178.151.134.232; SP=4; SIPS=1; PI=5; F=0
X-I-ESET-AS: RN=442,624:0;RNP=edaboyaesq02@gmail.com
X-ESET-Antispam: SPAM
Message-Id: <20221212124223.2A7E01C023D@echeck12.canonet.ne.jp>
To: undisclosed-recipients:;
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
Reply-To: edaboyaesq02@gmail.com
Content-Type: text/plain; charset="cp1251"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sCgpBIGxldHRlciB3YXMgc2VudCB0byB5b3UgcHJldmlvdXNseSBzdGF0aW5nIHlvdSB0
byBzdGFuZCBhIGNsYWltIHRvIGFuIGVzdGF0ZSBiZWxvbmdpbmcgdG8gbXkgY2xpZW50LCByZXBs
eSBpZiBpbnRlcmVzdGVkIHRvIG15IHByaXZhdGUgZW1haWwgYWRkcmVzcyBmb3IgZGV0YWlscyAg
ICBlZGFib3lhZXNxMUBnbWFpbC5jb20KClJlZ2FyZHMsCgpFbW1hbnVlbCBEYWJveWEuIEVzcQoK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgoKSGFsbG8sCgpJaG5lbiB3dXJkZSB6dXZv
ciBlaW4gU2NocmVpYmVuIHp1Z2VzYW5kdCwgaW4gZGVtIGVya2zkcnQgd3VyZGUsIGRhc3MgU2ll
IGVpbmVuIE5hY2hsYXNzIGJlYW5zcHJ1Y2hlbiwgZGVyIG1laW5lbSBNYW5kYW50ZW4gZ2Vo9nJ0
LiBXZW5uIFNpZSBpbnRlcmVzc2llcnQgc2luZCwgYW50d29ydGVuIFNpZSBhdWYgbWVpbmUgcHJp
dmF0ZSBFLU1haWwtQWRyZXNzZSBm/HIgRGV0YWlscyAgICAgZWRhYm95YWVzcTFAZ21haWwuY29t
CiAKR3L832UsCgpFbW1hbnVlbCBEYWJveWEuIEVzcQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
