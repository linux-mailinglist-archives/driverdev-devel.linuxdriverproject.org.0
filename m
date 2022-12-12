Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0221649B8A
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Dec 2022 10:59:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5761B4016F;
	Mon, 12 Dec 2022 09:59:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5761B4016F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yrV9y8Sl5F9e; Mon, 12 Dec 2022 09:59:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 092EF400EF;
	Mon, 12 Dec 2022 09:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 092EF400EF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EABBB1BF20B
 for <devel@linuxdriverproject.org>; Mon, 12 Dec 2022 09:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D25CE4016F
 for <devel@linuxdriverproject.org>; Mon, 12 Dec 2022 09:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D25CE4016F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qvsjaWTRTkeQ for <devel@linuxdriverproject.org>;
 Mon, 12 Dec 2022 09:59:40 +0000 (UTC)
X-Greylist: delayed 00:12:03 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88B6B400EF
Received: from sp14.canonet.ne.jp (sp14.canonet.ne.jp [210.134.168.91])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88B6B400EF
 for <devel@driverdev.osuosl.org>; Mon, 12 Dec 2022 09:59:40 +0000 (UTC)
Received: from csp14.canonet.ne.jp (unknown [172.21.160.134])
 by sp14.canonet.ne.jp (Postfix) with ESMTP id 3DC0E1E09A3;
 Mon, 12 Dec 2022 18:47:35 +0900 (JST)
Received: from echeck14.canonet.ne.jp ([172.21.160.124]) by csp4 with ESMTP
 id 4fPKprLvkVjWJ4fPKpmuNz; Mon, 12 Dec 2022 18:47:35 +0900
X-CNT-CMCheck-Reason: "undefined", "v=2.4 cv=WsmVjfTv c=1 sm=1 tr=0
 ts=6396f8b7 cx=g_jp:t_eml p=7Sxi0QMO7t8A:10 p=KEtzfpT9BBLiWZE7bbMA:9
 p=SOgVINUt1DMA:10 p=CuhS7ufEc6Fov-6dDykT:22 p=l6gFzSxlb5f3xrsl_-d5:22
 a=puqJfqqrwnhV2n3dwg+kWg==:117 a=EAmtCkNOZRVagD4f0U/kIQ==:17
 a=PlGk70OYzacA:10 a=Dyoqhi_TatcA:10 a=Cfj4BQAnxiAA:10 a=sHyYjHe8cH0A:10
 a=x7bEGLp0ZPQA:10 a=pGLkceISAAAA:8 a=Ft8UYL4EG9YA:10 a=wgxcfbkjHcwA:10
 a=LMeYhyiRXuWaZucJAQ-w:22"
X-CNT-CMCheck-Score: 100.00
Received: from echeck14.canonet.ne.jp (localhost [127.0.0.1])
 by esets.canonet.ne.jp (Postfix) with ESMTP id BAAA51C023A;
 Mon, 12 Dec 2022 18:47:34 +0900 (JST)
X-Virus-Scanner: This message was checked by ESET Mail Security
 for Linux/BSD. For more information on ESET Mail Security,
 please, visit our website: http://www.eset.com/.
Received: from smtp14.canonet.ne.jp (unknown [172.21.160.104])
 by echeck14.canonet.ne.jp (Postfix) with ESMTP id B8A0C1C021D;
 Mon, 12 Dec 2022 18:47:34 +0900 (JST)
Received: from User (unknown [38.131.32.78])
 by smtp14.canonet.ne.jp (Postfix) with ESMTPA id 29AE215F973;
 Mon, 12 Dec 2022 18:45:57 +0900 (JST)
From: "Emmanuel"<yakkyoku@sapporo-kohsetsu.or.jp>
Subject: How Are You Today?
Date: Mon, 12 Dec 2022 09:47:26 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-EsetResult: clean, %VIRUSNAME%
X-ESET-AS: R=SPAM; S=100; OP=CALC; TIME=1670838454; VERSION=7942; MC=2914122736;
 TRN=15; CRV=0; IPC=38.131.32.78; SP=4; SIPS=1; PI=5; F=0
X-I-ESET-AS: RN=442,624:0;RNP=edaboyaesq02@gmail.com
X-ESET-Antispam: SPAM
Message-Id: <20221212094734.BAAA51C023A@echeck14.canonet.ne.jp>
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
