Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BF836D22E
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 08:28:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2117842ED;
	Wed, 28 Apr 2021 06:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LNfK7ZIaBwDr; Wed, 28 Apr 2021 06:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAA8E83EDB;
	Wed, 28 Apr 2021 06:27:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 88E671BF866
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 06:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77C66605F0
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 06:27:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HoYBM_3gA38T for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 06:27:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF538605E7
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 06:27:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 873AB61158;
 Wed, 28 Apr 2021 06:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619591268;
 bh=0XZAnGMbHQVb6640NACUhIc6RdCMbx/GXT7x2D/JQy8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TTNCRtbSwT/1sPcCsPNBGMdt1T+unT0fTEBc7xEEJNuRXDHXQ6Yr3m3rCWgPfygv2
 wpZyYjGW1b6saQCMxu2r7f633/udi8Y1TyYNlDM2dMyIx4KgYLng/im0COlcu2R2/j
 C+p7XV+6uorxR7fkT8FieAn7dvmh7yCgrQU4PPbEQpO8+PwNnB+c7NbxtpAs9JZGgj
 LRDnsoHpLcfUDUJ112FRCdmoutrb8+QWuO1n9LIH1IyVprMi8W8Gm7y9eVggDj3Hy0
 Zc6K4hC03OHQu5qwRTwHs9TRjHtSk6PDlRyjMWwzT99e86p+8P689Ag+UrAFH4Qffa
 m1Oo9fuP0eVuw==
Date: Wed, 28 Apr 2021 08:27:42 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v3 79/79] media: hantro: document the usage of
 pm_runtime_get_sync()
Message-ID: <20210428082742.20d54db1@coco.lan>
In-Reply-To: <95ea572e201545b27ff9f48313f7aaea157d4764.camel@collabora.com>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
 <230f22170db7fa57b49cff4570cef15bf11b2ad5.1619519080.git.mchehab+huawei@kernel.org>
 <02948673-9572-a570-d28e-03a7208f39e1@arm.com>
 <95ea572e201545b27ff9f48313f7aaea157d4764.camel@collabora.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
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
 Robin Murphy <robin.murphy@arm.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RW0gVHVlLCAyNyBBcHIgMjAyMSAxMjoxODozMiAtMDMwMApFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+IGVzY3JldmV1OgoKPiBPbiBUdWUsIDIwMjEtMDQtMjcgYXQgMTY6
MDggKzAxMDAsIFJvYmluIE11cnBoeSB3cm90ZToKPiA+IE9uIDIwMjEtMDQtMjcgMTE6MjcsIE1h
dXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZTogIAo+ID4gPiBEZXNwaXRlIG90aGVyICpfZ2V0KCkv
Kl9wdXQoKSBmdW5jdGlvbnMsIHdoZXJlIHVzYWdlIGNvdW50IGlzCj4gPiA+IGluY3JlbWVudGVk
IG9ubHkgaWYgbm90IGVycm9ycywgdGhlIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBoYXMKPiA+ID4g
YSBkaWZmZXJlbnQgYmVoYXZpb3IsIGluY3JlbWVudGluZyB0aGUgY291bnRlciAqZXZlbiogb24K
PiA+ID4gZXJyb3JzLgo+ID4gPiAKPiA+ID4gVGhhdCdzIGFuIGVycm9yIHByb25lIGJlaGF2aW9y
LCBhcyBwZW9wbGUgb2Z0ZW4gZm9yZ2V0IHRvCj4gPiA+IGRlY3JlbWVudCB0aGUgdXNhZ2UgY291
bnRlci4KPiA+ID4gCj4gPiA+IEhvd2V2ZXIsIHRoZSBoYW50cm8gZHJpdmVyIGRlcGVuZHMgb24g
dGhpcyBiZWhhdmlvciwgYXMgaXQKPiA+ID4gd2lsbCBkZWNyZW1lbnQgdGhlIHVzYWdlX2NvdW50
IHVuY29uZGl0aW9uYWxseSBhdCB0aGUgbTJtCj4gPiA+IGpvYiBmaW5pc2ggdGltZSwgd2hpY2gg
bWFrZXMgc2Vuc2UuCj4gPiA+IAo+ID4gPiBTbywgaW50ZWFkIG9mIHVzaW5nIHRoZSBwbV9ydW50
aW1lX3Jlc3VtZV9hbmRfZ2V0KCkgdGhhdAo+ID4gPiB3b3VsZCBkZWNyZW1lbnQgdGhlIGNvdW50
ZXIgb24gZXJyb3IsIGtlZXAgdGhlIGN1cnJlbnQKPiA+ID4gQVBJLCBidXQgYWRkIGEgZG9jdW1l
bnRhdGlvbiBleHBsYWluaW5nIHRoZSByYXRpb25hbGUgZm9yCj4gPiA+IGtlZXAgdXNpbmcgcG1f
cnVudGltZV9nZXRfc3luYygpLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2Fy
dmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgo+ID4gPiAtLS0KPiA+ID4g
wqAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgfCA3ICsrKysrKysK
PiA+ID4gwqAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+ID4gPiAKPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+ID4gaW5kZXggNTk1ZTgy
YTgyNzI4Li45NmY5NDBjMWM4NWMgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiA+IEBAIC0xNTUsNiArMTU1LDEzIEBAIHN0YXRpYyB2
b2lkIGRldmljZV9ydW4odm9pZCAqcHJpdikKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHJldCA9IGNs
a19idWxrX2VuYWJsZShjdHgtPmRldi0+dmFyaWFudC0+bnVtX2Nsb2NrcywgY3R4LT5kZXYtPmNs
b2Nrcyk7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7ICAKPiA+IAo+ID4gLi5leGNl
cHQgdGhpcyBjYW4gYWxzbyBjYXVzZSB0aGUgc2FtZSBwbV9ydW50aW1lX3B1dF9hdXRvc3VzcGVu
ZCgpIGNhbGwgCj4gPiB3aXRob3V0IGV2ZW4gcmVhY2hpbmcgdGhlICJtYXRjaGluZyIgZ2V0IGJl
bG93LCBzbyByYXRoZXIgdGhhbiBzb21lIGtpbmQgCj4gPiBvZiBjbGV2ZXJuZXNzIGl0IHNlZW1z
IG1vcmUgbGlrZSBpdCdzIGp1c3QgYnJva2VuIDovCj4gPiAgIAo+IAo+IEluZGVlZCwgSSB3YXMg
dHJ5aW5nIHRvIGZpbmQgdGltZSB0byBjb29rIGEgcXVpY2sgcGF0Y2gsIGJ1dCBrZXB0Cj4gZ2V0
dGluZyBwcmVlbXB0ZWQuCj4gCj4gRmVlbCBmcmVlIHRvIHN1Ym1pdCBhIGZpeCBmb3IgdGhpcywg
b3RoZXJ3aXNlLCBJJ2xsIHRyeSB0byBmaW5kCj4gdGltZSBsYXRlciB0aGlzIHdlZWsuCgpXaGF0
IGFib3V0IGRvaW5nIHRoaXMgaW5zdGVhZDoKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2Rydi5jCmluZGV4IDU5NWU4MmE4MjcyOC4uNjdkZTZiMTUyMzZkIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYworKysgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwpAQCAtNTYsMTQgKzU2LDEyIEBAIGRt
YV9hZGRyX3QgaGFudHJvX2dldF9yZWYoc3RydWN0IGhhbnRyb19jdHggKmN0eCwgdTY0IHRzKQog
CXJldHVybiBoYW50cm9fZ2V0X2RlY19idWZfYWRkcihjdHgsIGJ1Zik7CiB9CiAKLXN0YXRpYyB2
b2lkIGhhbnRyb19qb2JfZmluaXNoKHN0cnVjdCBoYW50cm9fZGV2ICp2cHUsCi0JCQkgICAgICBz
dHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAotCQkJICAgICAgZW51bSB2YjJfYnVmZmVyX3N0YXRlIHJl
c3VsdCkKK3N0YXRpYyB2b2lkIGhhbnRyb19qb2JfZmluaXNoX25vX3BtKHN0cnVjdCBoYW50cm9f
ZGV2ICp2cHUsCisJCQkJICAgIHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCisJCQkJICAgIGVudW0g
dmIyX2J1ZmZlcl9zdGF0ZSByZXN1bHQpCiB7CiAJc3RydWN0IHZiMl92NGwyX2J1ZmZlciAqc3Jj
LCAqZHN0OwogCi0JcG1fcnVudGltZV9tYXJrX2xhc3RfYnVzeSh2cHUtPmRldik7Ci0JcG1fcnVu
dGltZV9wdXRfYXV0b3N1c3BlbmQodnB1LT5kZXYpOwogCWNsa19idWxrX2Rpc2FibGUodnB1LT52
YXJpYW50LT5udW1fY2xvY2tzLCB2cHUtPmNsb2Nrcyk7CiAKIAlzcmMgPSB2NGwyX20ybV9uZXh0
X3NyY19idWYoY3R4LT5maC5tMm1fY3R4KTsKQEAgLTgxLDYgKzc5LDE2IEBAIHN0YXRpYyB2b2lk
IGhhbnRyb19qb2JfZmluaXNoKHN0cnVjdCBoYW50cm9fZGV2ICp2cHUsCiAJCQkJCSByZXN1bHQp
OwogfQogCitzdGF0aWMgdm9pZCBoYW50cm9fam9iX2ZpbmlzaChzdHJ1Y3QgaGFudHJvX2RldiAq
dnB1LAorCQkJICAgICAgc3RydWN0IGhhbnRyb19jdHggKmN0eCwKKwkJCSAgICAgIGVudW0gdmIy
X2J1ZmZlcl9zdGF0ZSByZXN1bHQpCit7CisJcG1fcnVudGltZV9tYXJrX2xhc3RfYnVzeSh2cHUt
PmRldik7CisJcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQodnB1LT5kZXYpOworCisJaGFudHJv
X2pvYl9maW5pc2hfbm9fcG0odnB1LCBjdHgsIHJlc3VsdCk7Cit9CisKIHZvaWQgaGFudHJvX2ly
cV9kb25lKHN0cnVjdCBoYW50cm9fZGV2ICp2cHUsCiAJCSAgICAgZW51bSB2YjJfYnVmZmVyX3N0
YXRlIHJlc3VsdCkKIHsKQEAgLTE1MiwxMiArMTYwLDEzIEBAIHN0YXRpYyB2b2lkIGRldmljZV9y
dW4odm9pZCAqcHJpdikKIAlzcmMgPSBoYW50cm9fZ2V0X3NyY19idWYoY3R4KTsKIAlkc3QgPSBo
YW50cm9fZ2V0X2RzdF9idWYoY3R4KTsKIAorCXJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9n
ZXQoY3R4LT5kZXYtPmRldik7CisJaWYgKHJldCA8IDApCisJCWdvdG8gZXJyX2NhbmNlbF9qb2I7
CisKIAlyZXQgPSBjbGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3Ms
IGN0eC0+ZGV2LT5jbG9ja3MpOwogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2NhbmNlbF9qb2I7Ci0J
cmV0ID0gcG1fcnVudGltZV9nZXRfc3luYyhjdHgtPmRldi0+ZGV2KTsKLQlpZiAocmV0IDwgMCkK
LQkJZ290byBlcnJfY2FuY2VsX2pvYjsKIAogCXY0bDJfbTJtX2J1Zl9jb3B5X21ldGFkYXRhKHNy
YywgZHN0LCB0cnVlKTsKIApAQCAtMTY1LDcgKzE3NCw3IEBAIHN0YXRpYyB2b2lkIGRldmljZV9y
dW4odm9pZCAqcHJpdikKIAlyZXR1cm47CiAKIGVycl9jYW5jZWxfam9iOgotCWhhbnRyb19qb2Jf
ZmluaXNoKGN0eC0+ZGV2LCBjdHgsIFZCMl9CVUZfU1RBVEVfRVJST1IpOworCWhhbnRyb19qb2Jf
ZmluaXNoX25vX3BtKGN0eC0+ZGV2LCBjdHgsIFZCMl9CVUZfU1RBVEVfRVJST1IpOwogfQogCiBz
dGF0aWMgc3RydWN0IHY0bDJfbTJtX29wcyB2cHVfbTJtX29wcyA9IHsKClRoYW5rcywKTWF1cm8K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
