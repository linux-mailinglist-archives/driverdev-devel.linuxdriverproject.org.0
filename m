Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E3836DDFE
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 19:15:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 441EC8435E;
	Wed, 28 Apr 2021 17:15:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 75ase0i8yDXb; Wed, 28 Apr 2021 17:15:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D06E842F5;
	Wed, 28 Apr 2021 17:15:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C61E51BF860
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 17:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B53BA60642
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 17:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s2HGpdXMA63Y for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 17:15:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D11806061D
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 17:14:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8F6591F42B79
Message-ID: <bf45f7c8031ce2320a4425475982aba51c1e4b48.camel@collabora.com>
Subject: Re: [PATCH v4 78/79] media: hantro: use pm_runtime_resume_and_get()
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Wed, 28 Apr 2021 14:14:45 -0300
In-Reply-To: <803c39fafdd62efc6f9e4d99a372af2c6955143b.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <803c39fafdd62efc6f9e4d99a372af2c6955143b.1619621413.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAyMDIxLTA0LTI4IGF0IDE2OjUyICswMjAwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIg
d3JvdGU6Cj4gQ29tbWl0IGRkODA4OGQ1YTg5NiAoIlBNOiBydW50aW1lOiBBZGQgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCB0byBkZWFsIHdpdGggdXNhZ2UgY291bnRlciIpCj4gYWRkZWQgcG1f
cnVudGltZV9yZXN1bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxl
Cj4gZGV2LT5wb3dlci51c2FnZV9jb3VudCBkZWNyZW1lbnQgb24gZXJyb3JzLgo+IAo+IFdoaWxl
IHRoZXJlJ3Mgbm90aGluZyB3cm9uZyB3aXRoIHRoZSBjdXJyZW50IHVzYWdlIG9uIHRoaXMgZHJp
dmVyLAo+IGFzIHdlJ3JlIGdldHRpbmcgcmlkIG9mIHRoZSBwbV9ydW50aW1lX2dldF9zeW5jKCkg
Y2FsbCBhbGwgb3Zlcgo+IHRoZSBtZWRpYSBzdWJzeXN0ZW0sIGxldCdzIHJlbW92ZSB0aGUgbGFz
dCBvY2N1cnJlbmNlIG9uIHRoaXMKPiBkcml2ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8g
Q2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgoKTG9va3MgZ29vZC4K
ClJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+CgpU
aGFua3MsCkV6ZXF1aWVsCgo+IC0tLQo+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fZHJ2LmMgfCAyMyArKysrKysrKysrKysrKysrLS0tLS0tLQo+IMKgMSBmaWxlIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiBpbmRleCA1OTVlODJhODI3MjguLjI1ZmEzNmU3
ZTc3MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19k
cnYuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4g
QEAgLTU2LDE0ICs1NiwxMiBAQCBkbWFfYWRkcl90IGhhbnRyb19nZXRfcmVmKHN0cnVjdCBoYW50
cm9fY3R4ICpjdHgsIHU2NCB0cykKPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGhhbnRyb19nZXRf
ZGVjX2J1Zl9hZGRyKGN0eCwgYnVmKTsKPiDCoH0KPiDCoAo+IC1zdGF0aWMgdm9pZCBoYW50cm9f
am9iX2ZpbmlzaChzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaGFudHJvX2N0eCAq
Y3R4LAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBlbnVtIHZiMl9idWZmZXJfc3RhdGUgcmVzdWx0KQo+ICtzdGF0aWMgdm9pZCBoYW50
cm9fam9iX2ZpbmlzaF9ub19wbShzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHZiMl9idWZmZXJf
c3RhdGUgcmVzdWx0KQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgdmIyX3Y0bDJfYnVm
ZmVyICpzcmMsICpkc3Q7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBwbV9ydW50aW1lX21hcmtfbGFz
dF9idXN5KHZwdS0+ZGV2KTsKPiAtwqDCoMKgwqDCoMKgwqBwbV9ydW50aW1lX3B1dF9hdXRvc3Vz
cGVuZCh2cHUtPmRldik7Cj4gwqDCoMKgwqDCoMKgwqDCoGNsa19idWxrX2Rpc2FibGUodnB1LT52
YXJpYW50LT5udW1fY2xvY2tzLCB2cHUtPmNsb2Nrcyk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKg
c3JjID0gdjRsMl9tMm1fbmV4dF9zcmNfYnVmKGN0eC0+ZmgubTJtX2N0eCk7Cj4gQEAgLTgxLDYg
Kzc5LDE2IEBAIHN0YXRpYyB2b2lkIGhhbnRyb19qb2JfZmluaXNoKHN0cnVjdCBoYW50cm9fZGV2
ICp2cHUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzdWx0KTsKPiDCoH0KPiDCoAo+ICtz
dGF0aWMgdm9pZCBoYW50cm9fam9iX2ZpbmlzaChzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHZiMl9idWZmZXJfc3RhdGUgcmVzdWx0KQo+
ICt7Cj4gK8KgwqDCoMKgwqDCoMKgcG1fcnVudGltZV9tYXJrX2xhc3RfYnVzeSh2cHUtPmRldik7
Cj4gK8KgwqDCoMKgwqDCoMKgcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQodnB1LT5kZXYpOwo+
ICsKPiArwqDCoMKgwqDCoMKgwqBoYW50cm9fam9iX2ZpbmlzaF9ub19wbSh2cHUsIGN0eCwgcmVz
dWx0KTsKPiArfQo+ICsKPiDCoHZvaWQgaGFudHJvX2lycV9kb25lKHN0cnVjdCBoYW50cm9fZGV2
ICp2cHUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHZi
Ml9idWZmZXJfc3RhdGUgcmVzdWx0KQo+IMKgewo+IEBAIC0xNTUsNyArMTYzLDggQEAgc3RhdGlj
IHZvaWQgZGV2aWNlX3J1bih2b2lkICpwcml2KQo+IMKgwqDCoMKgwqDCoMKgwqByZXQgPSBjbGtf
YnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2LT5jbG9j
a3MpOwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiAtwqDCoMKgwqDCoMKgwqByZXQgPSBwbV9y
dW50aW1lX2dldF9zeW5jKGN0eC0+ZGV2LT5kZXYpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqByZXQg
PSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGN0eC0+ZGV2LT5kZXYpOwo+IMKgwqDCoMKgwqDC
oMKgwqBpZiAocmV0IDwgMCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8g
ZXJyX2NhbmNlbF9qb2I7Cj4gwqAKPiBAQCAtMTY1LDcgKzE3NCw3IEBAIHN0YXRpYyB2b2lkIGRl
dmljZV9ydW4odm9pZCAqcHJpdikKPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+IMKgCj4gwqBl
cnJfY2FuY2VsX2pvYjoKPiAtwqDCoMKgwqDCoMKgwqBoYW50cm9fam9iX2ZpbmlzaChjdHgtPmRl
diwgY3R4LCBWQjJfQlVGX1NUQVRFX0VSUk9SKTsKPiArwqDCoMKgwqDCoMKgwqBoYW50cm9fam9i
X2ZpbmlzaF9ub19wbShjdHgtPmRldiwgY3R4LCBWQjJfQlVGX1NUQVRFX0VSUk9SKTsKPiDCoH0K
PiDCoAo+IMKgc3RhdGljIHN0cnVjdCB2NGwyX20ybV9vcHMgdnB1X20ybV9vcHMgPSB7CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
