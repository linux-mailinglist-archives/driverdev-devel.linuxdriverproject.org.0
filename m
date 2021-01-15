Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1792F85DD
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jan 2021 21:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D062E86C26;
	Fri, 15 Jan 2021 20:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X1zHC6z-DUCl; Fri, 15 Jan 2021 20:02:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85F0B86BFF;
	Fri, 15 Jan 2021 20:02:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18EA81BF9D1
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 20:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1546487315
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 20:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R3Hih1GFha4O for <devel@linuxdriverproject.org>;
 Fri, 15 Jan 2021 20:02:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B0F8787322
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 20:02:08 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id B95B51C000A;
 Fri, 15 Jan 2021 20:02:04 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 06/16] media: sun6i-csi: Only configure the interface data
 width for parallel
Date: Fri, 15 Jan 2021 21:01:31 +0100
Message-Id: <20210115200141.1397785-7-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210115200141.1397785-1-paul.kocialkowski@bootlin.com>
References: <20210115200141.1397785-1-paul.kocialkowski@bootlin.com>
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
 Hans Verkuil <hans.verkuil@cisco.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Yong Deng <yong.deng@magewell.com>,
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
b2NpYWxrb3dza2kgPHBhdWwua29jaWFsa293c2tpQGJvb3RsaW4uY29tPgpBY2tlZC1ieTogTWF4
aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgotLS0KIC4uLi9wbGF0Zm9ybS9zdW54aS9z
dW42aS1jc2kvc3VuNmlfY3NpLmMgICAgICB8IDQyICsrKysrKysrKysrLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuYyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5jCmluZGV4IDFh
MTFhNjE3NGExNy4uZDA2MDI4ZjQyNTM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuYwpAQCAtMzc4LDggKzM3OCwxMyBAQCBzdGF0
aWMgdm9pZCBzdW42aV9jc2lfc2V0dXBfYnVzKHN0cnVjdCBzdW42aV9jc2lfZGV2ICpzZGV2KQog
CXVuc2lnbmVkIGNoYXIgYnVzX3dpZHRoOwogCXUzMiBmbGFnczsKIAl1MzIgY2ZnOworCWJvb2wg
aW5wdXRfcGFyYWxsZWwgPSBmYWxzZTsKIAlib29sIGlucHV0X2ludGVybGFjZWQgPSBmYWxzZTsK
IAorCWlmIChlbmRwb2ludC0+YnVzX3R5cGUgPT0gVjRMMl9NQlVTX1BBUkFMTEVMIHx8CisJICAg
IGVuZHBvaW50LT5idXNfdHlwZSA9PSBWNEwyX01CVVNfQlQ2NTYpCisJCWlucHV0X3BhcmFsbGVs
ID0gdHJ1ZTsKKwogCWlmIChjc2ktPmNvbmZpZy5maWVsZCA9PSBWNEwyX0ZJRUxEX0lOVEVSTEFD
RUQKIAkgICAgfHwgY3NpLT5jb25maWcuZmllbGQgPT0gVjRMMl9GSUVMRF9JTlRFUkxBQ0VEX1RC
CiAJICAgIHx8IGNzaS0+Y29uZmlnLmZpZWxkID09IFY0TDJfRklFTERfSU5URVJMQUNFRF9CVCkK
QEAgLTM5NSw2ICs0MDAsMjYgQEAgc3RhdGljIHZvaWQgc3VuNmlfY3NpX3NldHVwX2J1cyhzdHJ1
Y3Qgc3VuNmlfY3NpX2RldiAqc2RldikKIAkJIENTSV9JRl9DRkdfSFJFRl9QT0xfTUFTSyB8IENT
SV9JRl9DRkdfRklFTERfTUFTSyB8CiAJCSBDU0lfSUZfQ0ZHX1NSQ19UWVBFX01BU0spOwogCisJ
aWYgKGlucHV0X3BhcmFsbGVsKSB7CisJCXN3aXRjaCAoYnVzX3dpZHRoKSB7CisJCWNhc2UgODoK
KwkJCWNmZyB8PSBDU0lfSUZfQ0ZHX0lGX0RBVEFfV0lEVEhfOEJJVDsKKwkJCWJyZWFrOworCQlj
YXNlIDEwOgorCQkJY2ZnIHw9IENTSV9JRl9DRkdfSUZfREFUQV9XSURUSF8xMEJJVDsKKwkJCWJy
ZWFrOworCQljYXNlIDEyOgorCQkJY2ZnIHw9IENTSV9JRl9DRkdfSUZfREFUQV9XSURUSF8xMkJJ
VDsKKwkJCWJyZWFrOworCQljYXNlIDE2OiAvKiBObyBuZWVkIHRvIGNvbmZpZ3VyZSBEQVRBX1dJ
RFRIIGZvciAxNmJpdCAqLworCQkJYnJlYWs7CisJCWRlZmF1bHQ6CisJCQlkZXZfd2FybihzZGV2
LT5kZXYsICJVbnN1cHBvcnRlZCBidXMgd2lkdGg6ICV1XG4iLAorCQkJCSBidXNfd2lkdGgpOwor
CQkJYnJlYWs7CisJCX0KKwl9CisKIAlpZiAoaW5wdXRfaW50ZXJsYWNlZCkKIAkJY2ZnIHw9IENT
SV9JRl9DRkdfU1JDX1RZUEVfSU5URVJMQUNFRDsKIAllbHNlCkBAIC00NDAsMjMgKzQ2NSw2IEBA
IHN0YXRpYyB2b2lkIHN1bjZpX2NzaV9zZXR1cF9idXMoc3RydWN0IHN1bjZpX2NzaV9kZXYgKnNk
ZXYpCiAJCWJyZWFrOwogCX0KIAotCXN3aXRjaCAoYnVzX3dpZHRoKSB7Ci0JY2FzZSA4OgotCQlj
ZmcgfD0gQ1NJX0lGX0NGR19JRl9EQVRBX1dJRFRIXzhCSVQ7Ci0JCWJyZWFrOwotCWNhc2UgMTA6
Ci0JCWNmZyB8PSBDU0lfSUZfQ0ZHX0lGX0RBVEFfV0lEVEhfMTBCSVQ7Ci0JCWJyZWFrOwotCWNh
c2UgMTI6Ci0JCWNmZyB8PSBDU0lfSUZfQ0ZHX0lGX0RBVEFfV0lEVEhfMTJCSVQ7Ci0JCWJyZWFr
OwotCWNhc2UgMTY6IC8qIE5vIG5lZWQgdG8gY29uZmlndXJlIERBVEFfV0lEVEggZm9yIDE2Yml0
ICovCi0JCWJyZWFrOwotCWRlZmF1bHQ6Ci0JCWRldl93YXJuKHNkZXYtPmRldiwgIlVuc3VwcG9y
dGVkIGJ1cyB3aWR0aDogJXVcbiIsIGJ1c193aWR0aCk7Ci0JCWJyZWFrOwotCX0KLQogCXJlZ21h
cF93cml0ZShzZGV2LT5yZWdtYXAsIENTSV9JRl9DRkdfUkVHLCBjZmcpOwogfQogCi0tIAoyLjMw
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
