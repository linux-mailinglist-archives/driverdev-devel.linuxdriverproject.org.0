Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D7F2975FD
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 19:46:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B3CDE2153E;
	Fri, 23 Oct 2020 17:46:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0HrVKVFqsbg9; Fri, 23 Oct 2020 17:46:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4AFAC204D2;
	Fri, 23 Oct 2020 17:46:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09DD01BF3CC
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:46:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 06A9C87190
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:46:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DX23x0WC8f33 for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 17:46:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3E2448718E
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 17:46:22 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id A2EDB1BF208;
 Fri, 23 Oct 2020 17:46:18 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-sunxi@googlegroups.com
Subject: [PATCH 04/14] media: sun6i-csi: Fix the image storage bpp for
 10/12-bit Bayer formats
Date: Fri, 23 Oct 2020 19:45:36 +0200
Message-Id: <20201023174546.504028-5-paul.kocialkowski@bootlin.com>
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

Qm90aCAxMCBhbmQgMTItYml0IEJheWVyIGZvcm1hdHMgYXJlIHN0b3JlZCBhbGlnbmVkIGFzIDE2
LWJpdCB2YWx1ZXMKaW4gbWVtb3J5LCBub3QgdW5hbGlnbmVkIDEwIG9yIDEyIGJpdHMuCgpTaW5j
ZSB0aGUgY3VycmVudCBjb2RlIGZvciByZXRyZWl2aW5nIHRoZSBicHAgaXMgdXNlZCBvbmx5IHRv
CmNhbGN1bGF0ZSB0aGUgbWVtb3J5IHN0b3JhZ2Ugc2l6ZSBvZiB0aGUgcGljdHVyZSAod2hpY2gg
aXMgd2hhdApwaXhlbCBmb3JtYXRzIGRlc2NyaWJlLCB1bmxpa2UgbWVkaWEgYnVzIGZvcm1hdHMp
LCBmaXggaXQgdGhlcmUuCgpGaXhlczogNWNjNzUyMmQ4OTY1ICgibWVkaWE6IHN1bjZpOiBBZGQg
c3VwcG9ydCBmb3IgQWxsd2lubmVyIENTSSBWM3MiKQpDby1kZXZlbG9wZWQtYnk6IEvDqXZpbiBM
J2jDtHBpdGFsIDxrZXZpbi5saG9waXRhbEBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogS8Op
dmluIEwnaMO0cGl0YWwgPGtldmluLmxob3BpdGFsQGJvb3RsaW4uY29tPgpTaWduZWQtb2ZmLWJ5
OiBQYXVsIEtvY2lhbGtvd3NraSA8cGF1bC5rb2NpYWxrb3dza2lAYm9vdGxpbi5jb20+Ci0tLQog
Li4uL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuaCAgICAgIHwgMjAgKysrKysr
KysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmkt
Y3NpL3N1bjZpX2NzaS5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kv
c3VuNmlfY3NpLmgKaW5kZXggYzYyNjgyMWFhZWRiLi43ZjJiZTcwYWU2NDEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5oCisrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5oCkBAIC04
Niw3ICs4Niw3IEBAIHZvaWQgc3VuNmlfY3NpX3VwZGF0ZV9idWZfYWRkcihzdHJ1Y3Qgc3VuNmlf
Y3NpICpjc2ksIGRtYV9hZGRyX3QgYWRkcik7CiAgKi8KIHZvaWQgc3VuNmlfY3NpX3NldF9zdHJl
YW0oc3RydWN0IHN1bjZpX2NzaSAqY3NpLCBib29sIGVuYWJsZSk7CiAKLS8qIGdldCBicHAgZm9y
bSB2NGwyIHBpeGZvcm1hdCAqLworLyogZ2V0IG1lbW9yeSBzdG9yYWdlIGJwcCBmcm9tIHY0bDIg
cGl4Zm9ybWF0ICovCiBzdGF0aWMgaW5saW5lIGludCBzdW42aV9jc2lfZ2V0X2JwcCh1bnNpZ25l
ZCBpbnQgcGl4Zm9ybWF0KQogewogCXN3aXRjaCAocGl4Zm9ybWF0KSB7CkBAIC05NiwxNSArOTYs
NiBAQCBzdGF0aWMgaW5saW5lIGludCBzdW42aV9jc2lfZ2V0X2JwcCh1bnNpZ25lZCBpbnQgcGl4
Zm9ybWF0KQogCWNhc2UgVjRMMl9QSVhfRk1UX1NSR0dCODoKIAljYXNlIFY0TDJfUElYX0ZNVF9K
UEVHOgogCQlyZXR1cm4gODsKLQljYXNlIFY0TDJfUElYX0ZNVF9TQkdHUjEwOgotCWNhc2UgVjRM
Ml9QSVhfRk1UX1NHQlJHMTA6Ci0JY2FzZSBWNEwyX1BJWF9GTVRfU0dSQkcxMDoKLQljYXNlIFY0
TDJfUElYX0ZNVF9TUkdHQjEwOgotCQlyZXR1cm4gMTA7Ci0JY2FzZSBWNEwyX1BJWF9GTVRfU0JH
R1IxMjoKLQljYXNlIFY0TDJfUElYX0ZNVF9TR0JSRzEyOgotCWNhc2UgVjRMMl9QSVhfRk1UX1NH
UkJHMTI6Ci0JY2FzZSBWNEwyX1BJWF9GTVRfU1JHR0IxMjoKIAljYXNlIFY0TDJfUElYX0ZNVF9I
TTEyOgogCWNhc2UgVjRMMl9QSVhfRk1UX05WMTI6CiAJY2FzZSBWNEwyX1BJWF9GTVRfTlYyMToK
QEAgLTEyMSw2ICsxMTIsMTUgQEAgc3RhdGljIGlubGluZSBpbnQgc3VuNmlfY3NpX2dldF9icHAo
dW5zaWduZWQgaW50IHBpeGZvcm1hdCkKIAljYXNlIFY0TDJfUElYX0ZNVF9SR0I1NjU6CiAJY2Fz
ZSBWNEwyX1BJWF9GTVRfUkdCNTY1WDoKIAkJcmV0dXJuIDE2OworCWNhc2UgVjRMMl9QSVhfRk1U
X1NCR0dSMTA6CisJY2FzZSBWNEwyX1BJWF9GTVRfU0dCUkcxMDoKKwljYXNlIFY0TDJfUElYX0ZN
VF9TR1JCRzEwOgorCWNhc2UgVjRMMl9QSVhfRk1UX1NSR0dCMTA6CisJY2FzZSBWNEwyX1BJWF9G
TVRfU0JHR1IxMjoKKwljYXNlIFY0TDJfUElYX0ZNVF9TR0JSRzEyOgorCWNhc2UgVjRMMl9QSVhf
Rk1UX1NHUkJHMTI6CisJY2FzZSBWNEwyX1BJWF9GTVRfU1JHR0IxMjoKKwkJcmV0dXJuIDE2Owog
CWNhc2UgVjRMMl9QSVhfRk1UX1JHQjI0OgogCWNhc2UgVjRMMl9QSVhfRk1UX0JHUjI0OgogCQly
ZXR1cm4gMjQ7Ci0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
