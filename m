Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DABA144D342
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 09:36:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F099181AAD;
	Thu, 11 Nov 2021 08:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yWMeWSJOrg-x; Thu, 11 Nov 2021 08:36:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6567A8191E;
	Thu, 11 Nov 2021 08:36:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A8F421BF282
 for <devel@linuxdriverproject.org>; Thu, 11 Nov 2021 08:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9793A40389
 for <devel@linuxdriverproject.org>; Thu, 11 Nov 2021 08:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=fsin.gov.ru
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ELq3ub2alXTk for <devel@linuxdriverproject.org>;
 Thu, 11 Nov 2021 08:36:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx.fsin.su (mail.fsin.su [95.173.158.58])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C06A940224
 for <devel@linuxdriverproject.org>; Thu, 11 Nov 2021 08:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mx.fsin.su (Postfix) with ESMTP id 5F1BC6C09C7406;
 Thu, 11 Nov 2021 09:11:24 +0300 (MSK)
Received: from mx.fsin.su ([127.0.0.1])
 by localhost (mx.fsin.su [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id MDMNIGucMBtw; Thu, 11 Nov 2021 09:11:24 +0300 (MSK)
Received: from localhost (localhost [127.0.0.1])
 by mx.fsin.su (Postfix) with ESMTP id 92BB96C093082C;
 Thu, 11 Nov 2021 07:12:33 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.fsin.su 92BB96C093082C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fsin.gov.ru;
 s=A761C892-9857-11EB-B742-EFF55F3AF7D2; t=1636603953;
 bh=qe03qPta472IKHcncUmeMMDKgsnfnO0TggSvkuZsT4g=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=fLnqSlKsDEES9NxvHHiAyljs19IUOeJuVHNx1WV4SoYrDlhdBqbLx0JdznSxQBd3w
 g0wCtcq4evNnHu9IPx8rNLbY02pj+SmUD7sZxr6KnPdfjvsmoodg6MrxScdJh6X5Sb
 XR698T8925Auu6HOli2qYQKLA01z/RImYzidO/W6aCv9+oW6GzliojlSFGHPiBOlwQ
 9q+bjhlmcsOn27sFJshMQMRHz7DRYnR9DunAmAvJZjjAsvictu2O6aEl+6klWbAr1a
 fEzFNFZOHx88rvMkPKjOVK4ZOBoAirEt4Og+gvYHlC4Ft2oPBkAbFfeiH12TNXviYT
 qWd4QGc+L2Czg==
X-Virus-Scanned: amavisd-new at fsin.su
Received: from mx.fsin.su ([127.0.0.1])
 by localhost (mx.fsin.su [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5wvZnd6a48lK; Thu, 11 Nov 2021 07:12:33 +0300 (MSK)
Received: from [192.168.0.103] (unknown [93.182.105.113])
 by mx.fsin.su (Postfix) with ESMTPSA id 1E8B56C080DC3A;
 Thu, 11 Nov 2021 05:34:22 +0300 (MSK)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: donation
To: Recipients <13@fsin.gov.ru>
From: Stefano <13@fsin.gov.ru>
Date: Thu, 11 Nov 2021 02:34:09 +0000
Message-Id: <20211111023424.1E8B56C080DC3A@mx.fsin.su>
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
Reply-To: stefanopessina35@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGFsbG8sCgpJY2ggYmluIFNURUZBTk8gUEVTU0lOQS4gSWNoIGJpbiBlaW4gaXRhbGllbmlzY2gt
bW9uZWdhc3Npc2NoZXIgTWlsbGlhcmTDpHIgdW5kIHN0ZWxsdmVydHJldGVuZGVyIFZvcnNpdHpl
bmRlciwgQ2hpZWYgRXhlY3V0aXZlIE9mZmljZXIgKENFTykgdW5kIGdyw7bDn3RlciBFaW56ZWxh
a3Rpb27DpHIgZGVyIFdhbGdyZWVucyBCb290cyBBbGxpYW5jZS4gQXVmZ3J1bmQgZGllc2VyIGFr
dHVlbGxlbiBTaXR1YXRpb24gKENvcm9uYS1WaXJ1cyksIGRpZSBzaWNoIGF1ZiBkZXIgZ2FuemVu
IFdlbHQgYXVzYnJlaXRldCwgc3BlbmRlbiBpY2ggc2VsYnN0IHVuZCBhbmRlcmUgMTkgaXRhbGll
bmlzY2hlIE1pbGxpYXJkw6RyZSBtZWhyIGFscyA0NSBNaWxsaW9uZW4gVVMtRG9sbGFyLCB1bSBk
YXMgQ29yb25hdmlydXMgaW4gSXRhbGllbiB6dSBiZWvDpG1wZmVuLiBJY2ggaGFiZSBhdWNoIHp1
Z2VzYWd0LCAxLjUwMC4wMDAsMDAg4oKsIGFuIEVpbnplbHBlcnNvbmVuLCBLaXJjaGVuIHVuZCBX
YWlzZW5ow6R1c2VyIHVzdy4genUgc3BlbmRlbi4gSWNoIGhhYmUgbWljaCBlbnRzY2hsb3NzZW4s
IElobmVuIDEuNTAwLjAwMCwwMCDigqwgenUgc3BlbmRlbiwgZGEgSWhyZSBFLU1haWwtQWRyZXNz
ZSB6dSBkZW4gZ2zDvGNrbGljaGVuIEdld2lubmVybiBnZWjDtnJ0IGRpZSBJbmZvLiBEdSBrYW5u
c3QgYXVjaCDDvGJlciBkZW4gdW50ZW5zdGVoZW5kZW4gTGluayBtZWhyIMO8YmVyIG1pY2ggbGVz
ZW4KCmh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1N0ZWZhbm9fUGVzc2luYQoKSGVyemxp
Y2hlciBHcnVzcwpTdGVsbHZlcnRyZXRlbmRlciBWb3JzaXR6ZW5kZXIgdW5kIEdlc2Now6RmdHNm
w7xocmVyLApXYWxncmVlbnMgQm9vdHMtQWxsaWFuei4KU3RlZmFubyBQZXNzaW5hCgpFLU1haWw6
IHN0ZWZhbm9wZXNzaW5hMzVAZ21haWwuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
