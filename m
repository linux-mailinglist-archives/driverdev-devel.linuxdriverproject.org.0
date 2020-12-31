Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDE42E806D
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Dec 2020 15:30:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25A9D864D0;
	Thu, 31 Dec 2020 14:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pH9FypJiDBur; Thu, 31 Dec 2020 14:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87C45864C3;
	Thu, 31 Dec 2020 14:30:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 493F51BF29C
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 14:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4607F867BB
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 14:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rno56HaCx-ct for <devel@linuxdriverproject.org>;
 Thu, 31 Dec 2020 14:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay12.mail.gandi.net (relay12.mail.gandi.net [217.70.178.232])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D47F186D99
 for <devel@driverdev.osuosl.org>; Thu, 31 Dec 2020 14:30:16 +0000 (UTC)
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 4E8FA20000B;
 Thu, 31 Dec 2020 14:30:13 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 05/15] media: sun6i-csi: Only configure the interface data
 width for parallel
Date: Thu, 31 Dec 2020 15:29:38 +0100
Message-Id: <20201231142948.3241780-6-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>,
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

Qml0cyByZWxhdGVkIHRvIHRoZSBpbnRlcmZhY2UgZGF0YSB3aWR0aCBhcmUgb25seSBhcHBsaWNh
YmxlIHRvIHRoZQpwYXJhbGxlbCBpbnRlcmZhY2UgYW5kIGFyZSBpcnJlbGV2YW50IHdoZW4gdGhl
IENTSSBjb250cm9sbGVyIGlzIHRha2luZwppbnB1dCBmcm9tIHRoZSBNSVBJIENTSS0yIGNvbnRy
b2xsZXIuCgpJbiBwcmV2aXNpb24gb2YgYWRkaW5nIHN1cHBvcnQgZm9yIHRoaXMgY2FzZSwgc2V0
IHRoZXNlIGJpdHMKY29uZGl0aW9uYWxseSBzbyB0aGVyZSBpcyBubyBhbWJpZ3VpdHkuIFRoZSBj
b25kaXRpb25hbCBibG9jayBpcwptb3ZlZCBhcm91bmQgYmVmb3JlIHRoZSBpbnRlcmxhY2VkIGNv
bmRpdGlvbmFsIGJsb2NrIGZvciBuaWNlciBjb2RlCnN5bW1ldHJ5IChjb25kaXRpb25hbCBibG9j
a3MgZmlyc3QpIHdoaWxlIGF0IGl0LgoKQ28tZGV2ZWxvcGVkLWJ5OiBLw6l2aW4gTCdow7RwaXRh
bCA8a2V2aW4ubGhvcGl0YWxAYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6IEvDqXZpbiBMJ2jD
tHBpdGFsIDxrZXZpbi5saG9waXRhbEBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogUGF1bCBL
b2NpYWxrb3dza2kgPHBhdWwua29jaWFsa293c2tpQGJvb3RsaW4uY29tPgotLS0KIC4uLi9wbGF0
Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmMgICAgICB8IDQyICsrKysrKysrKysrLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42
aV9jc2kuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2Nz
aS5jCmluZGV4IDUzMWE0Y2NjZDE0YS4uZjExNTBkZTk0ZTk4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuYworKysgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuYwpAQCAtMzc4LDggKzM3
OCwxMyBAQCBzdGF0aWMgdm9pZCBzdW42aV9jc2lfc2V0dXBfYnVzKHN0cnVjdCBzdW42aV9jc2lf
ZGV2ICpzZGV2KQogCXVuc2lnbmVkIGNoYXIgYnVzX3dpZHRoOwogCXUzMiBmbGFnczsKIAl1MzIg
Y2ZnOworCWJvb2wgaW5wdXRfcGFyYWxsZWwgPSBmYWxzZTsKIAlib29sIGlucHV0X2ludGVybGFj
ZWQgPSBmYWxzZTsKIAorCWlmIChlbmRwb2ludC0+YnVzX3R5cGUgPT0gVjRMMl9NQlVTX1BBUkFM
TEVMIHx8CisJICAgIGVuZHBvaW50LT5idXNfdHlwZSA9PSBWNEwyX01CVVNfQlQ2NTYpCisJCWlu
cHV0X3BhcmFsbGVsID0gdHJ1ZTsKKwogCWlmIChjc2ktPmNvbmZpZy5maWVsZCA9PSBWNEwyX0ZJ
RUxEX0lOVEVSTEFDRUQKIAkgICAgfHwgY3NpLT5jb25maWcuZmllbGQgPT0gVjRMMl9GSUVMRF9J
TlRFUkxBQ0VEX1RCCiAJICAgIHx8IGNzaS0+Y29uZmlnLmZpZWxkID09IFY0TDJfRklFTERfSU5U
RVJMQUNFRF9CVCkKQEAgLTM5NSw2ICs0MDAsMjYgQEAgc3RhdGljIHZvaWQgc3VuNmlfY3NpX3Nl
dHVwX2J1cyhzdHJ1Y3Qgc3VuNmlfY3NpX2RldiAqc2RldikKIAkJIENTSV9JRl9DRkdfSFJFRl9Q
T0xfTUFTSyB8IENTSV9JRl9DRkdfRklFTERfTUFTSyB8CiAJCSBDU0lfSUZfQ0ZHX1NSQ19UWVBF
X01BU0spOwogCisJaWYgKGlucHV0X3BhcmFsbGVsKSB7CisJCXN3aXRjaCAoYnVzX3dpZHRoKSB7
CisJCWNhc2UgODoKKwkJCWNmZyB8PSBDU0lfSUZfQ0ZHX0lGX0RBVEFfV0lEVEhfOEJJVDsKKwkJ
CWJyZWFrOworCQljYXNlIDEwOgorCQkJY2ZnIHw9IENTSV9JRl9DRkdfSUZfREFUQV9XSURUSF8x
MEJJVDsKKwkJCWJyZWFrOworCQljYXNlIDEyOgorCQkJY2ZnIHw9IENTSV9JRl9DRkdfSUZfREFU
QV9XSURUSF8xMkJJVDsKKwkJCWJyZWFrOworCQljYXNlIDE2OiAvKiBObyBuZWVkIHRvIGNvbmZp
Z3VyZSBEQVRBX1dJRFRIIGZvciAxNmJpdCAqLworCQkJYnJlYWs7CisJCWRlZmF1bHQ6CisJCQlk
ZXZfd2FybihzZGV2LT5kZXYsICJVbnN1cHBvcnRlZCBidXMgd2lkdGg6ICV1XG4iLAorCQkJCSBi
dXNfd2lkdGgpOworCQkJYnJlYWs7CisJCX0KKwl9CisKIAlpZiAoaW5wdXRfaW50ZXJsYWNlZCkK
IAkJY2ZnIHw9IENTSV9JRl9DRkdfU1JDX1RZUEVfSU5URVJMQUNFRDsKIAllbHNlCkBAIC00NDAs
MjMgKzQ2NSw2IEBAIHN0YXRpYyB2b2lkIHN1bjZpX2NzaV9zZXR1cF9idXMoc3RydWN0IHN1bjZp
X2NzaV9kZXYgKnNkZXYpCiAJCWJyZWFrOwogCX0KIAotCXN3aXRjaCAoYnVzX3dpZHRoKSB7Ci0J
Y2FzZSA4OgotCQljZmcgfD0gQ1NJX0lGX0NGR19JRl9EQVRBX1dJRFRIXzhCSVQ7Ci0JCWJyZWFr
OwotCWNhc2UgMTA6Ci0JCWNmZyB8PSBDU0lfSUZfQ0ZHX0lGX0RBVEFfV0lEVEhfMTBCSVQ7Ci0J
CWJyZWFrOwotCWNhc2UgMTI6Ci0JCWNmZyB8PSBDU0lfSUZfQ0ZHX0lGX0RBVEFfV0lEVEhfMTJC
SVQ7Ci0JCWJyZWFrOwotCWNhc2UgMTY6IC8qIE5vIG5lZWQgdG8gY29uZmlndXJlIERBVEFfV0lE
VEggZm9yIDE2Yml0ICovCi0JCWJyZWFrOwotCWRlZmF1bHQ6Ci0JCWRldl93YXJuKHNkZXYtPmRl
diwgIlVuc3VwcG9ydGVkIGJ1cyB3aWR0aDogJXVcbiIsIGJ1c193aWR0aCk7Ci0JCWJyZWFrOwot
CX0KLQogCXJlZ21hcF93cml0ZShzZGV2LT5yZWdtYXAsIENTSV9JRl9DRkdfUkVHLCBjZmcpOwog
fQogCi0tIAoyLjI5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
