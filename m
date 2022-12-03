Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9331D64131A
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Dec 2022 03:06:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4E4B405E2;
	Sat,  3 Dec 2022 02:06:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4E4B405E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCwu-mXiiO5F; Sat,  3 Dec 2022 02:06:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF9D6400CB;
	Sat,  3 Dec 2022 02:06:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF9D6400CB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2B151BF5A9
 for <devel@linuxdriverproject.org>; Sat,  3 Dec 2022 02:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD90E405E2
 for <devel@linuxdriverproject.org>; Sat,  3 Dec 2022 02:06:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD90E405E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B1OG0srK6yNH for <devel@linuxdriverproject.org>;
 Sat,  3 Dec 2022 02:06:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA4CA400CB
Received: from sp13.canonet.ne.jp (sp13.canonet.ne.jp [210.134.168.90])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA4CA400CB
 for <devel@driverdev.osuosl.org>; Sat,  3 Dec 2022 02:06:25 +0000 (UTC)
Received: from csp13.canonet.ne.jp (unknown [172.21.160.133])
 by sp13.canonet.ne.jp (Postfix) with ESMTP id B9FB61E4E25;
 Sat,  3 Dec 2022 11:06:22 +0900 (JST)
Received: from echeck13.canonet.ne.jp ([172.21.160.123]) by csp3 with ESMTP
 id 1Hv4pNDGwxJr51Hv4pr1rq; Sat, 03 Dec 2022 11:06:22 +0900
X-CNT-CMCheck-Reason: "undefined", "v=2.4 cv=S49nfKgP c=1 sm=1 tr=0
 ts=638aaf1e cx=g_jp:t_eml p=EzStKvAcQYAA:10 p=KEtzfpT9BBLiWZE7bbMA:9
 p=LsHigxxpsWIA:10 p=H3EnS-GB28A1C__6rA3f:22 a=c8wCX2VJ6RehaN9m5YqYzw==:117
 a=s6hAbbO80yXzxujJw8p3Cw==:17 a=PlGk70OYzacA:10 a=Dyoqhi_TatcA:10
 a=Cfj4BQAnxiAA:10 a=sHyYjHe8cH0A:10 a=x7bEGLp0ZPQA:10 a=69EAbJreAAAA:8
 a=Ft8UYL4EG9YA:10 a=yWUJG-RMxKsA:10 a=s0RNbacDgOIA:10"
X-CNT-CMCheck-Score: 100.00
Received: from echeck13.canonet.ne.jp (localhost [127.0.0.1])
 by esets.canonet.ne.jp (Postfix) with ESMTP id 79ECB1C024D;
 Sat,  3 Dec 2022 11:06:22 +0900 (JST)
X-Virus-Scanner: This message was checked by ESET Mail Security
 for Linux/BSD. For more information on ESET Mail Security,
 please, visit our website: http://www.eset.com/.
Received: from smtp13.canonet.ne.jp (unknown [172.21.160.103])
 by echeck13.canonet.ne.jp (Postfix) with ESMTP id 773A21C0249;
 Sat,  3 Dec 2022 11:06:22 +0900 (JST)
Received: from User (ukrexim-d125.tenet.odessa.ua [195.138.65.34])
 by smtp13.canonet.ne.jp (Postfix) with ESMTPA id 255B815F968;
 Sat,  3 Dec 2022 11:04:43 +0900 (JST)
From: "Emmanuel"<fukuda@kita-mura.co.jp>
Subject: How Are You Today?
Date: Sat, 3 Dec 2022 02:05:53 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-EsetResult: clean, %VIRUSNAME%
X-ESET-AS: R=SPAM; S=100; OP=CALC; TIME=1670033182; VERSION=7941; MC=1413073078;
 TRN=14; CRV=0; IPC=195.138.65.34; SP=4; SIPS=1; PI=5; F=0
X-I-ESET-AS: RN=584:0,442,624:1;
 RNP=edaboyaesq@hotmail.com,edaboyaesq@gmail.com
X-ESET-Antispam: SPAM
Message-Id: <20221203020622.79ECB1C024D@echeck13.canonet.ne.jp>
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
Reply-To: edaboyaesq@gmail.com
Content-Type: text/plain; charset="cp1251"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sCgpBIGxldHRlciB3YXMgc2VudCB0byB5b3UgcHJldmlvdXNseSBzdGF0aW5nIHlvdSB0
byBzdGFuZCBhIGNsYWltIHRvIGFuIGVzdGF0ZSBiZWxvbmdpbmcgdG8gbXkgY2xpZW50LCByZXBs
eSBpZiBpbnRlcmVzdGVkIHRvIG15IHByaXZhdGUgZW1haWwgYWRkcmVzcyBmb3IgZGV0YWlscyAg
ICBlZGFib3lhZXNxQGhvdG1haWwuY29tCgpSZWdhcmRzLAoKRW1tYW51ZWwgRGFib3lhLiBFc3EK
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKCkhhbGxvLAoKSWhuZW4gd3VyZGUgenV2
b3IgZWluIFNjaHJlaWJlbiB6dWdlc2FuZHQsIGluIGRlbSBlcmts5HJ0IHd1cmRlLCBkYXNzIFNp
ZSBlaW5lbiBOYWNobGFzcyBiZWFuc3BydWNoZW4sIGRlciBtZWluZW0gTWFuZGFudGVuIGdlaPZy
dC4gV2VubiBTaWUgaW50ZXJlc3NpZXJ0IHNpbmQsIGFudHdvcnRlbiBTaWUgYXVmIG1laW5lIHBy
aXZhdGUgRS1NYWlsLUFkcmVzc2UgZvxyIERldGFpbHMgICAgIGVkYWJheWFlc3FAaG90bWFpbC5j
b20KIApHcvzfZSwKCkVtbWFudWVsIERhYm95YS4gRXNxCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
