Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E25296206
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 17:59:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A045204AD;
	Thu, 22 Oct 2020 15:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uKxv7fJEM1ik; Thu, 22 Oct 2020 15:59:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3C233203DB;
	Thu, 22 Oct 2020 15:59:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 978241BF239
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 15:59:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 89B79203DE
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 15:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VuK6EfQOix90 for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 15:59:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 10AC3203DB
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 15:59:08 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 4A8ADAC23;
 Thu, 22 Oct 2020 15:59:06 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 01/10] firmware: raspberrypi: Introduce rpi_firmware_put()
Date: Thu, 22 Oct 2020 17:58:48 +0200
Message-Id: <20201022155858.20867-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022155858.20867-1-nsaenzjulienne@suse.de>
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
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
 linux-gpio@vger.kernel.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-input@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

V2hlbiB1bmJpbmRpbmcgdGhlIGZpcm13YXJlIGRldmljZSB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSBp
dCBoYXMgbm8KY29uc3VtZXJzIGxlZnQuIE90aGVyd2lzZSB3ZSdkIGxlYXZlIHRoZW0gd2l0aCBh
IGZpcm13YXJlIGhhbmRsZQpwb2ludGluZyBhdCBmcmVlZCBtZW1vcnkuCgpLZWVwIGEgcmVmZXJl
bmNlIGNvdW50IG9mIGFsbCBjb25zdW1lcnMgYW5kIG1ha2Ugc3VyZSB0aGV5IGFsbCBmaW5pc2hl
ZAp1bmJpbmRpbmcgYmVmb3JlIHdlIGRvLgoKU3VnZ2VzdGVkLWJ5OiBVd2UgS2xlaW5lLUvDtm5p
ZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBOaWNvbGFz
IFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxpZW5uZUBzdXNlLmRlPgotLS0KCkBVd2U6IEkgZGlk
bid0IGZvdW5kIGl0IG5lY2Vzc2FyeSB0byBjYWxsICd0cnlfbW9kdWxlX2dldCgpJyBhcyB0aGUg
cmVzdAogICAgICBvZiBtb2R1bGVzIGRlcGVuZCBvbiB0aGUgJ3JwaV9maXJtd2FyZV9nZXQvcHV0
KCknIHN5bWJvbHMgd2hpY2ggYWxyZWFkeQogICAgICBibG9jayB1c2VycyBmcm9tIHVubG9hZGlu
ZyB0aGUgbW9kdWxlIHByZW1hdHVyZWx5LgoKIGRyaXZlcnMvZmlybXdhcmUvcmFzcGJlcnJ5cGku
YyAgICAgICAgICAgICB8IDMwICsrKysrKysrKysrKysrKysrKysrKy0KIGluY2x1ZGUvc29jL2Jj
bTI4MzUvcmFzcGJlcnJ5cGktZmlybXdhcmUuaCB8ICAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCAz
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJt
d2FyZS9yYXNwYmVycnlwaS5jIGIvZHJpdmVycy9maXJtd2FyZS9yYXNwYmVycnlwaS5jCmluZGV4
IDIzNzFkMDhiZGQxNy4uZTViYTYwOWUzOTg1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Zpcm13YXJl
L3Jhc3BiZXJyeXBpLmMKKysrIGIvZHJpdmVycy9maXJtd2FyZS9yYXNwYmVycnlwaS5jCkBAIC0x
MSw3ICsxMSw5IEBACiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CiAjaW5jbHVkZSA8bGludXgv
b2ZfcGxhdGZvcm0uaD4KICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KKyNpbmNs
dWRlIDxsaW51eC9yZWZjb3VudC5oPgogI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KKyNpbmNsdWRl
IDxsaW51eC93YWl0Lmg+CiAjaW5jbHVkZSA8c29jL2JjbTI4MzUvcmFzcGJlcnJ5cGktZmlybXdh
cmUuaD4KIAogI2RlZmluZSBNQk9YX01TRyhjaGFuLCBkYXRhMjgpCQkoKChkYXRhMjgpICYgfjB4
ZikgfCAoKGNoYW4pICYgMHhmKSkKQEAgLTI3LDYgKzI5LDkgQEAgc3RydWN0IHJwaV9maXJtd2Fy
ZSB7CiAJc3RydWN0IG1ib3hfY2hhbiAqY2hhbjsgLyogVGhlIHByb3BlcnR5IGNoYW5uZWwuICov
CiAJc3RydWN0IGNvbXBsZXRpb24gYzsKIAl1MzIgZW5hYmxlZDsKKworCXJlZmNvdW50X3QgY29u
c3VtZXJzOworCXdhaXRfcXVldWVfaGVhZF90IHdhaXQ7CiB9OwogCiBzdGF0aWMgREVGSU5FX01V
VEVYKHRyYW5zYWN0aW9uX2xvY2spOwpAQCAtMjQ3LDYgKzI1Miw4IEBAIHN0YXRpYyBpbnQgcnBp
X2Zpcm13YXJlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJfQogCiAJaW5p
dF9jb21wbGV0aW9uKCZmdy0+Yyk7CisJcmVmY291bnRfc2V0KCZmdy0+Y29uc3VtZXJzLCAxKTsK
Kwlpbml0X3dhaXRxdWV1ZV9oZWFkKCZmdy0+d2FpdCk7CiAKIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0
YShwZGV2LCBmdyk7CiAKQEAgLTI3NSw2ICsyODIsOCBAQCBzdGF0aWMgaW50IHJwaV9maXJtd2Fy
ZV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlycGlfaHdtb24gPSBOVUxM
OwogCXBsYXRmb3JtX2RldmljZV91bnJlZ2lzdGVyKHJwaV9jbGspOwogCXJwaV9jbGsgPSBOVUxM
OworCisJd2FpdF9ldmVudChmdy0+d2FpdCwgcmVmY291bnRfZGVjX2lmX29uZSgmZnctPmNvbnN1
bWVycykpOwogCW1ib3hfZnJlZV9jaGFubmVsKGZ3LT5jaGFuKTsKIAogCXJldHVybiAwOwpAQCAt
Mjg5LDE0ICsyOTgsMzMgQEAgc3RhdGljIGludCBycGlfZmlybXdhcmVfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiBzdHJ1Y3QgcnBpX2Zpcm13YXJlICpycGlfZmlybXdhcmVf
Z2V0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqZmlybXdhcmVfbm9kZSkKIHsKIAlzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2ID0gb2ZfZmluZF9kZXZpY2VfYnlfbm9kZShmaXJtd2FyZV9ub2RlKTsK
KwlzdHJ1Y3QgcnBpX2Zpcm13YXJlICpmdzsKIAogCWlmICghcGRldikKIAkJcmV0dXJuIE5VTEw7
CiAKLQlyZXR1cm4gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CisJZncgPSBwbGF0Zm9ybV9n
ZXRfZHJ2ZGF0YShwZGV2KTsKKwlpZiAoIWZ3KQorCQlyZXR1cm4gTlVMTDsKKworCWlmICghcmVm
Y291bnRfaW5jX25vdF96ZXJvKCZmdy0+Y29uc3VtZXJzKSkKKwkJcmV0dXJuIE5VTEw7CisKKwly
ZXR1cm4gZnc7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChycGlfZmlybXdhcmVfZ2V0KTsKIAorLyoq
CisgKiBycGlfZmlybXdhcmVfcHV0IC0gUHV0IHBvaW50ZXIgdG8gcnBpX2Zpcm13YXJlIHN0cnVj
dHVyZS4KKyAqIEBycGlfZmlybXdhcmU6ICAgIFBvaW50ZXIgdG8gc3RydWN0IHJwaV9maXJtd2Fy
ZQorICovCit2b2lkIHJwaV9maXJtd2FyZV9wdXQoc3RydWN0IHJwaV9maXJtd2FyZSAqZncpCit7
CisJcmVmY291bnRfZGVjKCZmdy0+Y29uc3VtZXJzKTsKKwl3YWtlX3VwKCZmdy0+d2FpdCk7Cit9
CitFWFBPUlRfU1lNQk9MX0dQTChycGlfZmlybXdhcmVfcHV0KTsKKwogc3RhdGljIGNvbnN0IHN0
cnVjdCBvZl9kZXZpY2VfaWQgcnBpX2Zpcm13YXJlX29mX21hdGNoW10gPSB7CiAJeyAuY29tcGF0
aWJsZSA9ICJyYXNwYmVycnlwaSxiY20yODM1LWZpcm13YXJlIiwgfSwKIAl7fSwKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvc29jL2JjbTI4MzUvcmFzcGJlcnJ5cGktZmlybXdhcmUuaCBiL2luY2x1ZGUv
c29jL2JjbTI4MzUvcmFzcGJlcnJ5cGktZmlybXdhcmUuaAppbmRleCBjYzljZGJjNjY0MDMuLjc4
MzZlYTUxZmJkZiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9zb2MvYmNtMjgzNS9yYXNwYmVycnlwaS1m
aXJtd2FyZS5oCisrKyBiL2luY2x1ZGUvc29jL2JjbTI4MzUvcmFzcGJlcnJ5cGktZmlybXdhcmUu
aApAQCAtMTQxLDYgKzE0MSw3IEBAIGludCBycGlfZmlybXdhcmVfcHJvcGVydHkoc3RydWN0IHJw
aV9maXJtd2FyZSAqZncsCiBpbnQgcnBpX2Zpcm13YXJlX3Byb3BlcnR5X2xpc3Qoc3RydWN0IHJw
aV9maXJtd2FyZSAqZncsCiAJCQkgICAgICAgdm9pZCAqZGF0YSwgc2l6ZV90IHRhZ19zaXplKTsK
IHN0cnVjdCBycGlfZmlybXdhcmUgKnJwaV9maXJtd2FyZV9nZXQoc3RydWN0IGRldmljZV9ub2Rl
ICpmaXJtd2FyZV9ub2RlKTsKK3ZvaWQgcnBpX2Zpcm13YXJlX3B1dChzdHJ1Y3QgcnBpX2Zpcm13
YXJlICpmdyk7CiAjZWxzZQogc3RhdGljIGlubGluZSBpbnQgcnBpX2Zpcm13YXJlX3Byb3BlcnR5
KHN0cnVjdCBycGlfZmlybXdhcmUgKmZ3LCB1MzIgdGFnLAogCQkJCQl2b2lkICpkYXRhLCBzaXpl
X3QgbGVuKQpAQCAtMTU4LDYgKzE1OSw4IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IHJwaV9maXJt
d2FyZSAqcnBpX2Zpcm13YXJlX2dldChzdHJ1Y3QgZGV2aWNlX25vZGUgKmZpcm13YXJlCiB7CiAJ
cmV0dXJuIE5VTEw7CiB9CisKK3ZvaWQgcnBpX2Zpcm13YXJlX3B1dChzdHJ1Y3QgcnBpX2Zpcm13
YXJlICpmdykgeyB9CiAjZW5kaWYKIAogI2VuZGlmIC8qIF9fU09DX1JBU1BCRVJSWV9GSVJNV0FS
RV9IX18gKi8KLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
