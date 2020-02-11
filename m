Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37949158CC5
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 11:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 92B27860D2;
	Tue, 11 Feb 2020 10:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dPAcTe89oqZ9; Tue, 11 Feb 2020 10:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6F0F85D5C;
	Tue, 11 Feb 2020 10:35:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E1621BF831
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8BCE185585
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 89NBnnZ-3v-5 for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 10:35:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEECE85569
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 10:35:05 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48Gzg90fyZz6x;
 Tue, 11 Feb 2020 11:35:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581417301; bh=vQXfboMzSuI7E1x57jf2aEN96A5Gr8vG74E+9+CiSm0=;
 h=Date:From:Subject:To:Cc:From;
 b=MBRvBX8Fkrrv0txLhfyeRIEqzhVmhKd1/ouHdqiqlI1mv+AV3VLLcJA18//vhbGCo
 jjrxtF1GxurPrEGCYRDPnM9rodDiNG6k/S8Az9GyN2IOv5hnGjbQq2OCBapyFwcA5e
 b7q/JbPDRX7tU14jeOkWU8B1+V403V17S6EkiikTsjQ7gYKiLHnF+XIHZCF9UTBisr
 SxTx9dVns4T+wjSWIs6Gu+iBBYFJxvgaG2QWvoQ4/sQBmGMhXEEe961qu7E2rX5Ol1
 R5NkPE30Wy2vEmcjDnJOlpXQ2Gp4rI5epDkvf/QBj4Y6A9NF6RlsOs17XdCOSBji08
 2RXMvIVQCyCOg==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 11:34:59 +0100
Message-Id: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v2 0/6] staging: WF200 driver fixes
MIME-Version: 1.0
To: =?UTF-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QSBzZXQgb2YgZml4ZXMgZm9yIFdGMjAwIFdpRmkgbW9kdWxlIGRyaXZlci4gVGhyZWUgYXJlIGJ1
ZyBmaXhlcywKYWxsIHRoZSByZXN0OiBjbGVhbnVwcyBhbmQgb3B0aW1pemF0aW9ucy4KCnYyOgog
IHVzZSBkZXZyZXMgZm9yIGZpeGluZyBpbml0L2ludGVycnVwdCByYWNlLCBhcyBzdWdnZXN0ZWQg
YnkgRGFuIENhcnBlbnRlcgogIGFkZCBGaXhlczogdGFncyBkcm9wcGVkIGJ5IGFjY2lkZW50CiAg
cmVtb3ZlIDgtYml0IFNQSSBmYWxsLWJhY2sgcGF0Y2gKCk1pY2hhxYIgTWlyb3PFgmF3ICg2KToK
ICBzdGFnaW5nOiB3Zng6IGZpeCBpbml0L3JlbW92ZSB2cyBJUlEgcmFjZQogIHN0YWdpbmc6IHdm
eDogYW5ub3RhdGUgbmVzdGVkIGdjX2xpc3QgdnMgdHggcXVldWUgbG9ja2luZwogIHN0YWdpbmc6
IHdmeDogYWRkIHByb3BlciAiY29tcGF0aWJsZSIgc3RyaW5nCiAgc3RhZ2luZzogd2Z4OiBmb2xs
b3cgY29tcGF0aWJsZSA9IHZlbmRvcixjaGlwIGZvcm1hdAogIHN0YWdpbmc6IHdmeDogdXNlIHNs
ZWVwaW5nIGdwaW8gYWNjZXNzb3JzCiAgc3RhZ2luZzogd2Z4OiB1c2UgbW9yZSBwb3dlci1lZmZp
Y2llbnQgc2xlZXAgZm9yIHJlc2V0CgogLi4uL2JpbmRpbmdzL25ldC93aXJlbGVzcy9zaWxpYWJz
LHdmeC50eHQgICAgIHwgMTEgKystLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYmguYyAgICAgICAg
ICAgICAgICAgICAgICB8ICA4ICsrLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8uYyAg
ICAgICAgICAgICAgICB8IDE2ICsrKy0tLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5j
ICAgICAgICAgICAgICAgICB8IDQ1ICsrKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvc3RhZ2lu
Zy93ZngvaHdpby5jICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L21haW4uYyAgICAgICAgICAgICAgICAgICAgfCAyMyArKysrKystLS0tCiBkcml2ZXJzL3N0
YWdpbmcvd2Z4L21haW4uaCAgICAgICAgICAgICAgICAgICAgfCAgMSAtCiBkcml2ZXJzL3N0YWdp
bmcvd2Z4L3F1ZXVlLmMgICAgICAgICAgICAgICAgICAgfCAxNiArKystLS0tCiA4IGZpbGVzIGNo
YW5nZWQsIDY2IGluc2VydGlvbnMoKyksIDU2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCkZy
b20gMDhhNjVkYTJlMmNlOTRiZThhN2QwMGNjNjkyMTY2NDA0ZWEzZTA4ZCBNb24gU2VwIDE3IDAw
OjAwOjAwIDIwMDEKTWVzc2FnZS1JZDogPGNvdmVyLjE1ODE0MTYzODAuZ2l0Lm1pcnEtbGludXhA
cmVyZS5xbXFtLnBsPgpGcm9tOiA9P1VURi04P3E/TWljaGE9QzU9ODI9MjBNaXJvcz1DNT04MmF3
Pz0gPG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPgpEYXRlOiBUdWUsIDExIEZlYiAyMDIwIDExOjE5
OjQwICswMTAwCk1JTUUtVmVyc2lvbjogMS4wCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hh
cnNldD1VVEYtOApDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0ClRvOgk9P1VURi04P0I/
U3NPcGNzTzBiV1U9Pz0gUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiwKCUdy
ZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+CkNjOglkZXZlbEBk
cml2ZXJkZXYub3N1b3NsLm9yZywKCWxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKCk1pY2hh
xYIgTWlyb3PFgmF3ICg3KToKICBzdGFnaW5nOiB3Zng6IGZpeCBpbml0L3JlbW92ZSB2cyBJUlEg
cmFjZQogIHN0YWdpbmc6IHdmeDogYW5ub3RhdGUgbmVzdGVkIGdjX2xpc3QgdnMgdHggcXVldWUg
bG9ja2luZwogIHN0YWdpbmc6IHdmeDogYWRkIHByb3BlciAiY29tcGF0aWJsZSIgc3RyaW5nCiAg
c3RhZ2luZzogd2Z4OiBmb2xsb3cgY29tcGF0aWJsZSA9IHZlbmRvcixjaGlwIGZvcm1hdAogIHN0
YWdpbmc6IHdmeDogdHJ5IDE2LWJpdCB3b3JkIG1vZGUgZmlyc3QKICBzdGFnaW5nOiB3Zng6IHVz
ZSBzbGVlcGluZyBncGlvIGFjY2Vzc29ycwogIHN0YWdpbmc6IHdmeDogdXNlIG1vcmUgcG93ZXIt
ZWZmaWNpZW50IHNsZWVwIGZvciByZXNldAoKIC4uLi9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2ls
aWFicyx3ZngudHh0ICAgICB8IDExICsrLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYmguYyAgICAg
ICAgICAgICAgICAgICAgICB8ICA4ICstLQogZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc2Rpby5j
ICAgICAgICAgICAgICAgIHwgMTYgKysrLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGku
YyAgICAgICAgICAgICAgICAgfCA1MiArKysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL3N0YWdp
bmcvd2Z4L2h3aW8uYyAgICAgICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9zdGFnaW5n
L3dmeC9tYWluLmMgICAgICAgICAgICAgICAgICAgIHwgMjMgKysrKy0tLS0KIGRyaXZlcnMvc3Rh
Z2luZy93ZngvbWFpbi5oICAgICAgICAgICAgICAgICAgICB8ICAxIC0KIGRyaXZlcnMvc3RhZ2lu
Zy93ZngvcXVldWUuYyAgICAgICAgICAgICAgICAgICB8IDE2ICsrKy0tLQogOCBmaWxlcyBjaGFu
Z2VkLCA3MSBpbnNlcnRpb25zKCspLCA1OCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
