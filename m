Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CE02A6216
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 11:40:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 482CE86C4C;
	Wed,  4 Nov 2020 10:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VY4qa3zgTGKF; Wed,  4 Nov 2020 10:39:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E2A886AEA;
	Wed,  4 Nov 2020 10:39:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9CFC1BF844
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:39:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B61C287436
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FDZ0ElqmMp4b for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 10:39:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 718E58746C
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 10:39:50 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id EF2D3AD76;
 Wed,  4 Nov 2020 10:39:48 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v3 01/11] firmware: raspberrypi: Introduce
 devm_rpi_firmware_get()
Date: Wed,  4 Nov 2020 11:39:27 +0100
Message-Id: <20201104103938.1286-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201104103938.1286-1-nsaenzjulienne@suse.de>
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
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
bmNlIGNvdW50IG9mIGFsbCBjb25zdW1lcnMgYW5kIGludHJvZHVjZQpkZXZtX3JwaV9maXJtd2Fy
ZV9nZXQoKSB3aGljaCB3aWxsIGF1dG9tYXRpY2FsbHkgZGVjcmVhc2UgdGhlIHJlZmVyZW5jZQpj
b3VudCB1cG9uIHVuYmluZGluZyBjb25zdW1lciBkcml2ZXJzLgoKU3VnZ2VzdGVkLWJ5OiBVd2Ug
S2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2Zm
LWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxpZW5uZUBzdXNlLmRlPgoKLS0t
CgpDaGFuZ2VzIHNpbmNlIHYyOgogLSBDcmVhdGUgZGV2bV9ycGlfZmlybXdhcmVfZ2V0KCkKCiBk
cml2ZXJzL2Zpcm13YXJlL3Jhc3BiZXJyeXBpLmMgICAgICAgICAgICAgfCA0NiArKysrKysrKysr
KysrKysrKysrKysrCiBpbmNsdWRlL3NvYy9iY20yODM1L3Jhc3BiZXJyeXBpLWZpcm13YXJlLmgg
fCAgOCArKysrCiAyIGZpbGVzIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2Zpcm13YXJlL3Jhc3BiZXJyeXBpLmMgYi9kcml2ZXJzL2Zpcm13YXJlL3Jhc3Bi
ZXJyeXBpLmMKaW5kZXggMjM3MWQwOGJkZDE3Li43NGJkYjNiZGU5ZGMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZmlybXdhcmUvcmFzcGJlcnJ5cGkuYworKysgYi9kcml2ZXJzL2Zpcm13YXJlL3Jhc3Bi
ZXJyeXBpLmMKQEAgLTExLDcgKzExLDkgQEAKICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KICNp
bmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgorI2luY2x1ZGUgPGxpbnV4L3JlZmNvdW50Lmg+CiAjaW5jbHVkZSA8bGludXgvc2xh
Yi5oPgorI2luY2x1ZGUgPGxpbnV4L3dhaXQuaD4KICNpbmNsdWRlIDxzb2MvYmNtMjgzNS9yYXNw
YmVycnlwaS1maXJtd2FyZS5oPgogCiAjZGVmaW5lIE1CT1hfTVNHKGNoYW4sIGRhdGEyOCkJCSgo
KGRhdGEyOCkgJiB+MHhmKSB8ICgoY2hhbikgJiAweGYpKQpAQCAtMjcsNiArMjksOSBAQCBzdHJ1
Y3QgcnBpX2Zpcm13YXJlIHsKIAlzdHJ1Y3QgbWJveF9jaGFuICpjaGFuOyAvKiBUaGUgcHJvcGVy
dHkgY2hhbm5lbC4gKi8KIAlzdHJ1Y3QgY29tcGxldGlvbiBjOwogCXUzMiBlbmFibGVkOworCisJ
cmVmY291bnRfdCBjb25zdW1lcnM7CisJd2FpdF9xdWV1ZV9oZWFkX3Qgd2FpdDsKIH07CiAKIHN0
YXRpYyBERUZJTkVfTVVURVgodHJhbnNhY3Rpb25fbG9jayk7CkBAIC0yNDcsNiArMjUyLDggQEAg
c3RhdGljIGludCBycGlfZmlybXdhcmVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAl9CiAKIAlpbml0X2NvbXBsZXRpb24oJmZ3LT5jKTsKKwlyZWZjb3VudF9zZXQoJmZ3LT5j
b25zdW1lcnMsIDEpOworCWluaXRfd2FpdHF1ZXVlX2hlYWQoJmZ3LT53YWl0KTsKIAogCXBsYXRm
b3JtX3NldF9kcnZkYXRhKHBkZXYsIGZ3KTsKIApAQCAtMjc1LDExICsyODIsMjEgQEAgc3RhdGlj
IGludCBycGlfZmlybXdhcmVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
cnBpX2h3bW9uID0gTlVMTDsKIAlwbGF0Zm9ybV9kZXZpY2VfdW5yZWdpc3RlcihycGlfY2xrKTsK
IAlycGlfY2xrID0gTlVMTDsKKworCXdhaXRfZXZlbnQoZnctPndhaXQsIHJlZmNvdW50X2RlY19p
Zl9vbmUoJmZ3LT5jb25zdW1lcnMpKTsKIAltYm94X2ZyZWVfY2hhbm5lbChmdy0+Y2hhbik7CiAK
IAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIHZvaWQgcnBpX2Zpcm13YXJlX3B1dCh2b2lkICpkYXRh
KQoreworCXN0cnVjdCBycGlfZmlybXdhcmUgKmZ3ID0gZGF0YTsKKworCXJlZmNvdW50X2RlYygm
ZnctPmNvbnN1bWVycyk7CisJd2FrZV91cCgmZnctPndhaXQpOworfQorCiAvKioKICAqIHJwaV9m
aXJtd2FyZV9nZXQgLSBHZXQgcG9pbnRlciB0byBycGlfZmlybXdhcmUgc3RydWN0dXJlLgogICog
QGZpcm13YXJlX25vZGU6ICAgIFBvaW50ZXIgdG8gdGhlIGZpcm13YXJlIERldmljZSBUcmVlIG5v
ZGUuCkBAIC0yOTcsNiArMzE0LDM1IEBAIHN0cnVjdCBycGlfZmlybXdhcmUgKnJwaV9maXJtd2Fy
ZV9nZXQoc3RydWN0IGRldmljZV9ub2RlICpmaXJtd2FyZV9ub2RlKQogfQogRVhQT1JUX1NZTUJP
TF9HUEwocnBpX2Zpcm13YXJlX2dldCk7CiAKKy8qKgorICogZGV2bV9ycGlfZmlybXdhcmVfZ2V0
IC0gR2V0IHBvaW50ZXIgdG8gcnBpX2Zpcm13YXJlIHN0cnVjdHVyZS4KKyAqIEBmaXJtd2FyZV9u
b2RlOiAgICBQb2ludGVyIHRvIHRoZSBmaXJtd2FyZSBEZXZpY2UgVHJlZSBub2RlLgorICoKKyAq
IFJldHVybnMgTlVMTCBpcyB0aGUgZmlybXdhcmUgZGV2aWNlIGlzIG5vdCByZWFkeS4KKyAqLwor
c3RydWN0IHJwaV9maXJtd2FyZSAqZGV2bV9ycGlfZmlybXdhcmVfZ2V0KHN0cnVjdCBkZXZpY2Ug
KmRldiwKKwkJCQkJICAgc3RydWN0IGRldmljZV9ub2RlICpmaXJtd2FyZV9ub2RlKQoreworCXN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSBvZl9maW5kX2RldmljZV9ieV9ub2RlKGZpcm13
YXJlX25vZGUpOworCXN0cnVjdCBycGlfZmlybXdhcmUgKmZ3OworCisJaWYgKCFwZGV2KQorCQly
ZXR1cm4gTlVMTDsKKworCWZ3ID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CisJaWYgKCFm
dykKKwkJcmV0dXJuIE5VTEw7CisKKwlpZiAoIXJlZmNvdW50X2luY19ub3RfemVybygmZnctPmNv
bnN1bWVycykpCisJCXJldHVybiBOVUxMOworCisJaWYgKGRldm1fYWRkX2FjdGlvbl9vcl9yZXNl
dChkZXYsIHJwaV9maXJtd2FyZV9wdXQsIGZ3KSkKKwkJcmV0dXJuIE5VTEw7CisKKwlyZXR1cm4g
Znc7Cit9CitFWFBPUlRfU1lNQk9MX0dQTChkZXZtX3JwaV9maXJtd2FyZV9nZXQpOworCiBzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBycGlfZmlybXdhcmVfb2ZfbWF0Y2hbXSA9IHsK
IAl7IC5jb21wYXRpYmxlID0gInJhc3BiZXJyeXBpLGJjbTI4MzUtZmlybXdhcmUiLCB9LAogCXt9
LApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9zb2MvYmNtMjgzNS9yYXNwYmVycnlwaS1maXJtd2FyZS5o
IGIvaW5jbHVkZS9zb2MvYmNtMjgzNS9yYXNwYmVycnlwaS1maXJtd2FyZS5oCmluZGV4IGNjOWNk
YmM2NjQwMy4uOGZlNjRmNTNhMzk0IDEwMDY0NAotLS0gYS9pbmNsdWRlL3NvYy9iY20yODM1L3Jh
c3BiZXJyeXBpLWZpcm13YXJlLmgKKysrIGIvaW5jbHVkZS9zb2MvYmNtMjgzNS9yYXNwYmVycnlw
aS1maXJtd2FyZS5oCkBAIC0xNDEsNiArMTQxLDggQEAgaW50IHJwaV9maXJtd2FyZV9wcm9wZXJ0
eShzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdywKIGludCBycGlfZmlybXdhcmVfcHJvcGVydHlfbGlz
dChzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdywKIAkJCSAgICAgICB2b2lkICpkYXRhLCBzaXplX3Qg
dGFnX3NpemUpOwogc3RydWN0IHJwaV9maXJtd2FyZSAqcnBpX2Zpcm13YXJlX2dldChzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKmZpcm13YXJlX25vZGUpOworc3RydWN0IHJwaV9maXJtd2FyZSAqZGV2bV9y
cGlfZmlybXdhcmVfZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwKKwkJCQkJICAgc3RydWN0IGRldmlj
ZV9ub2RlICpmaXJtd2FyZV9ub2RlKTsKICNlbHNlCiBzdGF0aWMgaW5saW5lIGludCBycGlfZmly
bXdhcmVfcHJvcGVydHkoc3RydWN0IHJwaV9maXJtd2FyZSAqZncsIHUzMiB0YWcsCiAJCQkJCXZv
aWQgKmRhdGEsIHNpemVfdCBsZW4pCkBAIC0xNTgsNiArMTYwLDEyIEBAIHN0YXRpYyBpbmxpbmUg
c3RydWN0IHJwaV9maXJtd2FyZSAqcnBpX2Zpcm13YXJlX2dldChzdHJ1Y3QgZGV2aWNlX25vZGUg
KmZpcm13YXJlCiB7CiAJcmV0dXJuIE5VTEw7CiB9CisKK3N0YXRpYyBpbmxpbmUgc3RydWN0IHJw
aV9maXJtd2FyZSAqZGV2bV9ycGlfZmlybXdhcmVfZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwKKwkJ
CQkJc3RydWN0IGRldmljZV9ub2RlICpmaXJtd2FyZV9ub2RlKQoreworCXJldHVybiBOVUxMOwor
fQogI2VuZGlmCiAKICNlbmRpZiAvKiBfX1NPQ19SQVNQQkVSUllfRklSTVdBUkVfSF9fICovCi0t
IAoyLjI5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
