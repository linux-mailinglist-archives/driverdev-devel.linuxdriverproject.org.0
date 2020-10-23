Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9284A2975FE
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 19:46:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FA1C875B0;
	Fri, 23 Oct 2020 17:46:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZmDIxqgnXv4h; Fri, 23 Oct 2020 17:46:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 021A78718E;
	Fri, 23 Oct 2020 17:46:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55F931BF3CC
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 528DB87190
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d34w-8Z9xgMd for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 17:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6425C8718E
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 17:46:24 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id EB05A1BF20D;
 Fri, 23 Oct 2020 17:46:20 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-sunxi@googlegroups.com
Subject: [PATCH 05/14] media: sun6i-csi: Only configure the interface data
 width for parallel
Date: Fri, 23 Oct 2020 19:45:37 +0200
Message-Id: <20201023174546.504028-6-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
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
Cc: =?UTF-8?q?K=C3=A9vin=20L=27h=C3=B4pital?= <kevin.lhopital@bootlin.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Qml0cyByZWxhdGVkIHRvIHRoZSBpbnRlcmZhY2UgZGF0YSB3aWR0aCBkbyBub3QgaGF2ZSBhbnkg
ZWZmZWN0IHdoZW4KdGhlIENTSSBjb250cm9sbGVyIGlzIHRha2luZyBpbnB1dCBmcm9tIHRoZSBN
SVBJIENTSS0yIGNvbnRyb2xsZXIuCgpJbiBwcmV2aXNpb24gb2YgYWRkaW5nIHN1cHBvcnQgZm9y
IHRoaXMgY2FzZSwgc2V0IHRoZXNlIGJpdHMKY29uZGl0aW9uYWxseSBzbyB0aGVyZSBpcyBubyBh
bWJpZ3VpdHkuCgpDby1kZXZlbG9wZWQtYnk6IEvDqXZpbiBMJ2jDtHBpdGFsIDxrZXZpbi5saG9w
aXRhbEBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogS8OpdmluIEwnaMO0cGl0YWwgPGtldmlu
Lmxob3BpdGFsQGJvb3RsaW4uY29tPgpTaWduZWQtb2ZmLWJ5OiBQYXVsIEtvY2lhbGtvd3NraSA8
cGF1bC5rb2NpYWxrb3dza2lAYm9vdGxpbi5jb20+Ci0tLQogLi4uL3BsYXRmb3JtL3N1bnhpL3N1
bjZpLWNzaS9zdW42aV9jc2kuYyAgICAgIHwgNDIgKysrKysrKysrKystLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmMKaW5kZXggNWQy
Mzg5YTVjZDE3Li5hODc2YTA1ZWEzYzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5jCkBAIC0zNzgsOCArMzc4LDEzIEBAIHN0YXRp
YyB2b2lkIHN1bjZpX2NzaV9zZXR1cF9idXMoc3RydWN0IHN1bjZpX2NzaV9kZXYgKnNkZXYpCiAJ
dW5zaWduZWQgY2hhciBidXNfd2lkdGg7CiAJdTMyIGZsYWdzOwogCXUzMiBjZmc7CisJYm9vbCBp
bnB1dF9wYXJhbGxlbCA9IGZhbHNlOwogCWJvb2wgaW5wdXRfaW50ZXJsYWNlZCA9IGZhbHNlOwog
CisJaWYgKGVuZHBvaW50LT5idXNfdHlwZSA9PSBWNEwyX01CVVNfUEFSQUxMRUwgfHwKKwkgICAg
ZW5kcG9pbnQtPmJ1c190eXBlID09IFY0TDJfTUJVU19CVDY1NikKKwkJaW5wdXRfcGFyYWxsZWwg
PSB0cnVlOworCiAJaWYgKGNzaS0+Y29uZmlnLmZpZWxkID09IFY0TDJfRklFTERfSU5URVJMQUNF
RAogCSAgICB8fCBjc2ktPmNvbmZpZy5maWVsZCA9PSBWNEwyX0ZJRUxEX0lOVEVSTEFDRURfVEIK
IAkgICAgfHwgY3NpLT5jb25maWcuZmllbGQgPT0gVjRMMl9GSUVMRF9JTlRFUkxBQ0VEX0JUKQpA
QCAtMzk1LDYgKzQwMCwyNiBAQCBzdGF0aWMgdm9pZCBzdW42aV9jc2lfc2V0dXBfYnVzKHN0cnVj
dCBzdW42aV9jc2lfZGV2ICpzZGV2KQogCQkgQ1NJX0lGX0NGR19IUkVGX1BPTF9NQVNLIHwgQ1NJ
X0lGX0NGR19GSUVMRF9NQVNLIHwKIAkJIENTSV9JRl9DRkdfU1JDX1RZUEVfTUFTSyk7CiAKKwlp
ZiAoaW5wdXRfcGFyYWxsZWwpIHsKKwkJc3dpdGNoIChidXNfd2lkdGgpIHsKKwkJY2FzZSA4Ogor
CQkJY2ZnIHw9IENTSV9JRl9DRkdfSUZfREFUQV9XSURUSF84QklUOworCQkJYnJlYWs7CisJCWNh
c2UgMTA6CisJCQljZmcgfD0gQ1NJX0lGX0NGR19JRl9EQVRBX1dJRFRIXzEwQklUOworCQkJYnJl
YWs7CisJCWNhc2UgMTI6CisJCQljZmcgfD0gQ1NJX0lGX0NGR19JRl9EQVRBX1dJRFRIXzEyQklU
OworCQkJYnJlYWs7CisJCWNhc2UgMTY6IC8qIE5vIG5lZWQgdG8gY29uZmlndXJlIERBVEFfV0lE
VEggZm9yIDE2Yml0ICovCisJCQlicmVhazsKKwkJZGVmYXVsdDoKKwkJCWRldl93YXJuKHNkZXYt
PmRldiwgIlVuc3VwcG9ydGVkIGJ1cyB3aWR0aDogJXVcbiIsCisJCQkJIGJ1c193aWR0aCk7CisJ
CQlicmVhazsKKwkJfQorCX0KKwogCWlmIChpbnB1dF9pbnRlcmxhY2VkKQogCQljZmcgfD0gQ1NJ
X0lGX0NGR19TUkNfVFlQRV9JTlRFUkxBQ0VEOwogCWVsc2UKQEAgLTQ0MCwyMyArNDY1LDYgQEAg
c3RhdGljIHZvaWQgc3VuNmlfY3NpX3NldHVwX2J1cyhzdHJ1Y3Qgc3VuNmlfY3NpX2RldiAqc2Rl
dikKIAkJYnJlYWs7CiAJfQogCi0Jc3dpdGNoIChidXNfd2lkdGgpIHsKLQljYXNlIDg6Ci0JCWNm
ZyB8PSBDU0lfSUZfQ0ZHX0lGX0RBVEFfV0lEVEhfOEJJVDsKLQkJYnJlYWs7Ci0JY2FzZSAxMDoK
LQkJY2ZnIHw9IENTSV9JRl9DRkdfSUZfREFUQV9XSURUSF8xMEJJVDsKLQkJYnJlYWs7Ci0JY2Fz
ZSAxMjoKLQkJY2ZnIHw9IENTSV9JRl9DRkdfSUZfREFUQV9XSURUSF8xMkJJVDsKLQkJYnJlYWs7
Ci0JY2FzZSAxNjogLyogTm8gbmVlZCB0byBjb25maWd1cmUgREFUQV9XSURUSCBmb3IgMTZiaXQg
Ki8KLQkJYnJlYWs7Ci0JZGVmYXVsdDoKLQkJZGV2X3dhcm4oc2Rldi0+ZGV2LCAiVW5zdXBwb3J0
ZWQgYnVzIHdpZHRoOiAldVxuIiwgYnVzX3dpZHRoKTsKLQkJYnJlYWs7Ci0JfQotCiAJcmVnbWFw
X3dyaXRlKHNkZXYtPnJlZ21hcCwgQ1NJX0lGX0NGR19SRUcsIGNmZyk7CiB9CiAKLS0gCjIuMjgu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
