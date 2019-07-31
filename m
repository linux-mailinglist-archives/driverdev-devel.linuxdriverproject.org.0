Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0127CDF2
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 22:09:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5596F85DBB;
	Wed, 31 Jul 2019 20:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7JMMK0LYWy3d; Wed, 31 Jul 2019 20:09:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2FD1816E6;
	Wed, 31 Jul 2019 20:09:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84CA91BF319
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 20:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7E8B4203E4
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 20:09:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jR56lcFO7DYp for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 20:09:19 +0000 (UTC)
X-Greylist: delayed 02:20:00 by SQLgrey-1.7.6
Received: from 15.mo1.mail-out.ovh.net (15.mo1.mail-out.ovh.net
 [188.165.38.232])
 by silver.osuosl.org (Postfix) with ESMTPS id BD6771FE0A
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 20:09:19 +0000 (UTC)
Received: from player776.ha.ovh.net (unknown [10.109.160.87])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 05753188F26
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:33:47 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player776.ha.ovh.net (Postfix) with ESMTPSA id A3C58878DD52;
 Wed, 31 Jul 2019 16:33:28 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 2/3] media: imx7-media-csi: add i.MX6UL support
Date: Wed, 31 Jul 2019 18:33:30 +0200
Message-Id: <20190731163330.32532-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14045319867170182183
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrleehgddutdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

aS5NWDcgYW5kIGkuTVg2VUwvTCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9sbGVyLiBTbyBhZGQg
aS5NWDZVTC9MIHN1cHBvcnQKdG8gaW14Ny1tZWRpYS1jc2kgZHJpdmVyLgoKU2lnbmVkLW9mZi1i
eTogU8OpYmFzdGllbiBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29t
PgotLS0KCkNoYW5nZXMgZm9yIHYzOgotIHJlYmFzZSBvbiBMaW51eCB2NS4zLXJjMgotIHJlbW92
ZSBjc2lfc29jX2lkIHZhciBhcyBpdCdzIG5vdCBuZWVkZWQgYW55bW9yZSB0aGFua3MgdG8gY29t
bWl0CiAgZTBjNzZhN2QzNDI4ICgibWVkaWE6IGlteDctbWVkaWEtY3NpOiBnZXQgY3NpIHVwc3Ry
ZWFtIGVuZHBvaW50IikKCkNoYW5nZXMgZm9yIHYyOgogLSByZWJhc2Ugb24gdG9wIG9mIGxpbnV4
dHYvbWFzdGVyCiAtIG1lbnRpb24gaS5NWDZVTC9MIGluIGhlYWRlciBhbmQgS2NvbmZpZyBoZWxw
IHRleHQKIC0gcmVuYW1lIGNzaV90eXBlIHRvIGNzaV9zb2NfaWQKCiBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaW14L0tjb25maWcgICAgICAgICAgfCAgNCArLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9pbXgvaW14Ny1tZWRpYS1jc2kuYyB8IDMwICsrKysrKysrKysrKysrKy0tLS0tLS0KIDIgZmls
ZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL2lteC9LY29uZmlnCmluZGV4IDRjNzI2MzQ1ZGMyNS4uZjUxNDc2MjQzMDE2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L0tjb25maWcKKysrIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL2lteC9LY29uZmlnCkBAIC0yMiwxMSArMjIsMTEgQEAgY29uZmlnIFZJREVPX0lN
WF9DU0kKIAkgIEEgdmlkZW80bGludXggY2FtZXJhIHNlbnNvciBpbnRlcmZhY2UgZHJpdmVyIGZv
ciBpLk1YNS82LgogCiBjb25maWcgVklERU9fSU1YN19DU0kKLQl0cmlzdGF0ZSAiaS5NWDcgQ2Ft
ZXJhIFNlbnNvciBJbnRlcmZhY2UgZHJpdmVyIgorCXRyaXN0YXRlICJpLk1YNlVML0wgLyBpLk1Y
NyBDYW1lcmEgU2Vuc29yIEludGVyZmFjZSBkcml2ZXIiCiAJZGVwZW5kcyBvbiBWSURFT19JTVhf
TUVESUEgJiYgVklERU9fREVWICYmIEkyQwogCWRlZmF1bHQgeQogCWhlbHAKIAkgIEVuYWJsZSBz
dXBwb3J0IGZvciB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVyZmFjZSBkcml2ZXIgZm9y
Ci0JICBpLk1YNy4KKwkgIGkuTVg2VUwvTCBvciBpLk1YNy4KIGVuZG1lbnUKIGVuZGlmCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMKaW5kZXggNTAwYjRjMDhkOTY3
Li40Y2E3OWZmNGM5YjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14
Ny1tZWRpYS1jc2kuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEt
Y3NpLmMKQEAgLTEsNiArMSw2IEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MAogLyoKLSAqIFY0TDIgQ2FwdHVyZSBDU0kgU3ViZGV2IGZvciBGcmVlc2NhbGUgaS5NWDcgU09D
CisgKiBWNEwyIENhcHR1cmUgQ1NJIFN1YmRldiBmb3IgRnJlZXNjYWxlIGkuTVg2VUwvTCAvIGku
TVg3IFNPQwogICoKICAqIENvcHlyaWdodCAoYykgMjAxOSBMaW5hcm8gTHRkCiAgKgpAQCAtNzY1
LDYgKzc2NSw3IEBAIHN0YXRpYyBpbnQgaW14N19jc2lfY29uZmlndXJlKHN0cnVjdCBpbXg3X2Nz
aSAqY3NpKQogCXN0cnVjdCB2NGwyX3BpeF9mb3JtYXQgKm91dF9waXggPSAmdmRldi0+Zm10LmZt
dC5waXg7CiAJX191MzIgaW5fY29kZSA9IGNzaS0+Zm9ybWF0X21idXNbSU1YN19DU0lfUEFEX1NJ
TktdLmNvZGU7CiAJdTMyIGNyMSwgY3IxODsKKwlpbnQgd2lkdGggPSBvdXRfcGl4LT53aWR0aDsK
IAogCWlmIChvdXRfcGl4LT5maWVsZCA9PSBWNEwyX0ZJRUxEX0lOVEVSTEFDRUQpIHsKIAkJaW14
N19jc2lfZGVpbnRlcmxhY2VfZW5hYmxlKGNzaSwgdHJ1ZSk7CkBAIC03NzQsMTUgKzc3NSwyNyBA
QCBzdGF0aWMgaW50IGlteDdfY3NpX2NvbmZpZ3VyZShzdHJ1Y3QgaW14N19jc2kgKmNzaSkKIAkJ
aW14N19jc2lfYnVmX3N0cmlkZV9zZXQoY3NpLCAwKTsKIAl9CiAKLQlpbXg3X2NzaV9zZXRfaW1h
Z3BhcmEoY3NpLCBvdXRfcGl4LT53aWR0aCwgb3V0X3BpeC0+aGVpZ2h0KTsKKwljcjE4ID0gaW14
N19jc2lfcmVnX3JlYWQoY3NpLCBDU0lfQ1NJQ1IxOCk7CisKKwlpZiAoIWNzaS0+aXNfY3NpMikg
eworCQlpZiAob3V0X3BpeC0+cGl4ZWxmb3JtYXQgPT0gVjRMMl9QSVhfRk1UX1VZVlkgfHwKKwkJ
ICAgIG91dF9waXgtPnBpeGVsZm9ybWF0ID09IFY0TDJfUElYX0ZNVF9ZVVlWKQorCQkJd2lkdGgg
Kj0gMjsKKworCQlpbXg3X2NzaV9zZXRfaW1hZ3BhcmEoY3NpLCB3aWR0aCwgb3V0X3BpeC0+aGVp
Z2h0KTsKKworCQljcjE4IHw9IChCSVRfQkFTRUFERFJfU1dJVENIX0VOIHwgQklUX0JBU0VBRERS
X1NXSVRDSF9TRUwgfAorCQkJQklUX0JBU0VBRERSX0NIR19FUlJfRU4pOworCQlpbXg3X2NzaV9y
ZWdfd3JpdGUoY3NpLCBjcjE4LCBDU0lfQ1NJQ1IxOCk7CiAKLQlpZiAoIWNzaS0+aXNfY3NpMikK
IAkJcmV0dXJuIDA7CisJfQorCisJaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwgd2lkdGgsIG91
dF9waXgtPmhlaWdodCk7CiAKIAljcjEgPSBpbXg3X2NzaV9yZWdfcmVhZChjc2ksIENTSV9DU0lD
UjEpOwogCWNyMSAmPSB+QklUX0dDTEtfTU9ERTsKIAotCWNyMTggPSBpbXg3X2NzaV9yZWdfcmVh
ZChjc2ksIENTSV9DU0lDUjE4KTsKIAljcjE4ICY9IEJJVF9NSVBJX0RBVEFfRk9STUFUX01BU0s7
CiAJY3IxOCB8PSBCSVRfREFUQV9GUk9NX01JUEk7CiAKQEAgLTgxNywxMSArODMwLDkgQEAgc3Rh
dGljIHZvaWQgaW14N19jc2lfZW5hYmxlKHN0cnVjdCBpbXg3X2NzaSAqY3NpKQogewogCWlteDdf
Y3NpX3N3X3Jlc2V0KGNzaSk7CiAKLQlpZiAoY3NpLT5pc19jc2kyKSB7Ci0JCWlteDdfY3NpX2Rt
YXJlcV9yZmZfZW5hYmxlKGNzaSk7Ci0JCWlteDdfY3NpX2h3X2VuYWJsZV9pcnEoY3NpKTsKLQkJ
aW14N19jc2lfaHdfZW5hYmxlKGNzaSk7Ci0JfQorCWlteDdfY3NpX2RtYXJlcV9yZmZfZW5hYmxl
KGNzaSk7CisJaW14N19jc2lfaHdfZW5hYmxlX2lycShjc2kpOworCWlteDdfY3NpX2h3X2VuYWJs
ZShjc2kpOwogfQogCiBzdGF0aWMgdm9pZCBpbXg3X2NzaV9kaXNhYmxlKHN0cnVjdCBpbXg3X2Nz
aSAqY3NpKQpAQCAtMTMwMiw2ICsxMzEzLDcgQEAgc3RhdGljIGludCBpbXg3X2NzaV9yZW1vdmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgaW14N19jc2lfb2ZfbWF0Y2hbXSA9IHsKIAl7IC5jb21wYXRpYmxlID0gImZzbCxp
bXg3LWNzaSIgfSwKKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg2dWwtY3NpIiB9LAogCXsgfSwK
IH07CiBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBpbXg3X2NzaV9vZl9tYXRjaCk7Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
