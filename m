Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF3F2B0A46
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 17:41:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1C1F8203EC;
	Thu, 12 Nov 2020 16:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ASSw+kFsaut9; Thu, 12 Nov 2020 16:41:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 501192E20E;
	Thu, 12 Nov 2020 16:41:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 618021BF414
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 16:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C76F203EC
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 16:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L84b0XsPB4gz for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 16:40:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 3CD8C2036C
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 16:40:59 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id B4473AB95;
 Thu, 12 Nov 2020 16:40:57 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 01/11] firmware: raspberrypi: Keep count of all consumers
Date: Thu, 12 Nov 2020 17:36:19 +0100
Message-Id: <20201112163630.17177-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201112163630.17177-1-nsaenzjulienne@suse.de>
References: <20201112163630.17177-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

V2hlbiB1bmJpbmRpbmcgdGhlIGZpcm13YXJlIGRldmljZSB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSBp
dCBoYXMgbm8KY29uc3VtZXJzIGxlZnQuIE90aGVyd2lzZSB3ZSdkIGxlYXZlIHRoZW0gd2l0aCBh
IGZpcm13YXJlIGhhbmRsZQpwb2ludGluZyBhdCBmcmVlZCBtZW1vcnkuCgpLZWVwIGEgcmVmZXJl
bmNlIGNvdW50IG9mIGFsbCBjb25zdW1lcnMgYW5kIGludHJvZHVjZSBycGlfZmlybXdhcmVfcHV0
KCkKd2hpY2ggd2lsbCBwZXJtaXQgYXV0b21hdGljYWxseSBkZWNyZWFzZSB0aGUgcmVmZXJlbmNl
IGNvdW50IHVwb24KdW5iaW5kaW5nIGNvbnN1bWVyIGRyaXZlcnMuCgpTdWdnZXN0ZWQtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClNpZ25lZC1v
ZmYtYnk6IE5pY29sYXMgU2FlbnogSnVsaWVubmUgPG5zYWVuemp1bGllbm5lQHN1c2UuZGU+Ci0t
LQoKQ2hhbmdlcyBzaW5jZSB2MzoKLSBVc2Uga3JlZiBpbnN0ZWFkIG9mIHdhaXRpbmcgb24gcmVm
Y291bnQKCiBkcml2ZXJzL2Zpcm13YXJlL3Jhc3BiZXJyeXBpLmMgICAgICAgICAgICAgfCAzNyAr
KysrKysrKysrKysrKysrKysrLS0tCiBpbmNsdWRlL3NvYy9iY20yODM1L3Jhc3BiZXJyeXBpLWZp
cm13YXJlLmggfCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvcmFzcGJlcnJ5cGkuYyBi
L2RyaXZlcnMvZmlybXdhcmUvcmFzcGJlcnJ5cGkuYwppbmRleCAyMzcxZDA4YmRkMTcuLjQzOGUx
NzA3NGE5NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9maXJtd2FyZS9yYXNwYmVycnlwaS5jCisrKyBi
L2RyaXZlcnMvZmlybXdhcmUvcmFzcGJlcnJ5cGkuYwpAQCAtNyw2ICs3LDcgQEAKICAqLwogCiAj
aW5jbHVkZSA8bGludXgvZG1hLW1hcHBpbmcuaD4KKyNpbmNsdWRlIDxsaW51eC9rcmVmLmg+CiAj
aW5jbHVkZSA8bGludXgvbWFpbGJveF9jbGllbnQuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUu
aD4KICNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5oPgpAQCAtMjcsNiArMjgsOCBAQCBzdHJ1
Y3QgcnBpX2Zpcm13YXJlIHsKIAlzdHJ1Y3QgbWJveF9jaGFuICpjaGFuOyAvKiBUaGUgcHJvcGVy
dHkgY2hhbm5lbC4gKi8KIAlzdHJ1Y3QgY29tcGxldGlvbiBjOwogCXUzMiBlbmFibGVkOworCisJ
c3RydWN0IGtyZWYgY29uc3VtZXJzOwogfTsKIAogc3RhdGljIERFRklORV9NVVRFWCh0cmFuc2Fj
dGlvbl9sb2NrKTsKQEAgLTIyNSwxMiArMjI4LDI3IEBAIHN0YXRpYyB2b2lkIHJwaV9yZWdpc3Rl
cl9jbGtfZHJpdmVyKHN0cnVjdCBkZXZpY2UgKmRldikKIAkJCQkJCS0xLCBOVUxMLCAwKTsKIH0K
IAorc3RhdGljIHZvaWQgcnBpX2Zpcm13YXJlX2RlbGV0ZShzdHJ1Y3Qga3JlZiAqa3JlZikKK3sK
KwlzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdyA9IGNvbnRhaW5lcl9vZihrcmVmLCBzdHJ1Y3QgcnBp
X2Zpcm13YXJlLAorCQkJCQkgICAgICAgY29uc3VtZXJzKTsKKworCW1ib3hfZnJlZV9jaGFubmVs
KGZ3LT5jaGFuKTsKKwlrZnJlZShmdyk7Cit9CisKK3ZvaWQgcnBpX2Zpcm13YXJlX3B1dChzdHJ1
Y3QgcnBpX2Zpcm13YXJlICpmdykKK3sKKwlrcmVmX3B1dCgmZnctPmNvbnN1bWVycywgcnBpX2Zp
cm13YXJlX2RlbGV0ZSk7Cit9CitFWFBPUlRfU1lNQk9MX0dQTChycGlfZmlybXdhcmVfcHV0KTsK
Kwogc3RhdGljIGludCBycGlfZmlybXdhcmVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2OwogCXN0cnVjdCBycGlf
ZmlybXdhcmUgKmZ3OwogCi0JZncgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmZ3KSwgR0ZQ
X0tFUk5FTCk7CisJZncgPSBremFsbG9jKHNpemVvZigqZncpLCBHRlBfS0VSTkVMKTsKIAlpZiAo
IWZ3KQogCQlyZXR1cm4gLUVOT01FTTsKIApAQCAtMjQ3LDYgKzI2NSw3IEBAIHN0YXRpYyBpbnQg
cnBpX2Zpcm13YXJlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJfQogCiAJ
aW5pdF9jb21wbGV0aW9uKCZmdy0+Yyk7CisJa3JlZl9pbml0KCZmdy0+Y29uc3VtZXJzKTsKIAog
CXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIGZ3KTsKIApAQCAtMjc1LDI1ICsyOTQsMzUgQEAg
c3RhdGljIGludCBycGlfZmlybXdhcmVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAJcnBpX2h3bW9uID0gTlVMTDsKIAlwbGF0Zm9ybV9kZXZpY2VfdW5yZWdpc3RlcihycGlf
Y2xrKTsKIAlycGlfY2xrID0gTlVMTDsKLQltYm94X2ZyZWVfY2hhbm5lbChmdy0+Y2hhbik7CisK
KwlycGlfZmlybXdhcmVfcHV0KGZ3KTsKIAogCXJldHVybiAwOwogfQogCiAvKioKLSAqIHJwaV9m
aXJtd2FyZV9nZXQgLSBHZXQgcG9pbnRlciB0byBycGlfZmlybXdhcmUgc3RydWN0dXJlLgogICog
QGZpcm13YXJlX25vZGU6ICAgIFBvaW50ZXIgdG8gdGhlIGZpcm13YXJlIERldmljZSBUcmVlIG5v
ZGUuCiAgKgorICogVGhlIHJlZmVyZW5jZSB0byBycGlfZmlybXdhcmUgaGFzIHRvIGJlIHJlbGVh
c2VkIHdpdGggcnBpX2Zpcm13YXJlX3B1dCgpLgorICoKICAqIFJldHVybnMgTlVMTCBpcyB0aGUg
ZmlybXdhcmUgZGV2aWNlIGlzIG5vdCByZWFkeS4KICAqLwogc3RydWN0IHJwaV9maXJtd2FyZSAq
cnBpX2Zpcm13YXJlX2dldChzdHJ1Y3QgZGV2aWNlX25vZGUgKmZpcm13YXJlX25vZGUpCiB7CiAJ
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IG9mX2ZpbmRfZGV2aWNlX2J5X25vZGUoZmly
bXdhcmVfbm9kZSk7CisJc3RydWN0IHJwaV9maXJtd2FyZSAqZnc7CiAKIAlpZiAoIXBkZXYpCiAJ
CXJldHVybiBOVUxMOwogCi0JcmV0dXJuIHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOworCWZ3
ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CisJaWYgKCFmdykKKwkJcmV0dXJuIE5VTEw7
CisKKwlpZiAoIWtyZWZfZ2V0X3VubGVzc196ZXJvKCZmdy0+Y29uc3VtZXJzKSkKKwkJcmV0dXJu
IE5VTEw7CisKKwlyZXR1cm4gZnc7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChycGlfZmlybXdhcmVf
Z2V0KTsKIApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9zb2MvYmNtMjgzNS9yYXNwYmVycnlwaS1maXJt
d2FyZS5oIGIvaW5jbHVkZS9zb2MvYmNtMjgzNS9yYXNwYmVycnlwaS1maXJtd2FyZS5oCmluZGV4
IGNjOWNkYmM2NjQwMy4uZmRmZWY3ZmU0MGRmIDEwMDY0NAotLS0gYS9pbmNsdWRlL3NvYy9iY20y
ODM1L3Jhc3BiZXJyeXBpLWZpcm13YXJlLmgKKysrIGIvaW5jbHVkZS9zb2MvYmNtMjgzNS9yYXNw
YmVycnlwaS1maXJtd2FyZS5oCkBAIC0xNDAsNiArMTQwLDcgQEAgaW50IHJwaV9maXJtd2FyZV9w
cm9wZXJ0eShzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdywKIAkJCSAgdTMyIHRhZywgdm9pZCAqZGF0
YSwgc2l6ZV90IGxlbik7CiBpbnQgcnBpX2Zpcm13YXJlX3Byb3BlcnR5X2xpc3Qoc3RydWN0IHJw
aV9maXJtd2FyZSAqZncsCiAJCQkgICAgICAgdm9pZCAqZGF0YSwgc2l6ZV90IHRhZ19zaXplKTsK
K3ZvaWQgcnBpX2Zpcm13YXJlX3B1dChzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdyk7CiBzdHJ1Y3Qg
cnBpX2Zpcm13YXJlICpycGlfZmlybXdhcmVfZ2V0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqZmlybXdh
cmVfbm9kZSk7CiAjZWxzZQogc3RhdGljIGlubGluZSBpbnQgcnBpX2Zpcm13YXJlX3Byb3BlcnR5
KHN0cnVjdCBycGlfZmlybXdhcmUgKmZ3LCB1MzIgdGFnLApAQCAtMTU0LDYgKzE1NSw3IEBAIHN0
YXRpYyBpbmxpbmUgaW50IHJwaV9maXJtd2FyZV9wcm9wZXJ0eV9saXN0KHN0cnVjdCBycGlfZmly
bXdhcmUgKmZ3LAogCXJldHVybiAtRU5PU1lTOwogfQogCitzdGF0aWMgaW5saW5lIHZvaWQgcnBp
X2Zpcm13YXJlX3B1dChzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdykgeyB9CiBzdGF0aWMgaW5saW5l
IHN0cnVjdCBycGlfZmlybXdhcmUgKnJwaV9maXJtd2FyZV9nZXQoc3RydWN0IGRldmljZV9ub2Rl
ICpmaXJtd2FyZV9ub2RlKQogewogCXJldHVybiBOVUxMOwotLSAKMi4yOS4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
