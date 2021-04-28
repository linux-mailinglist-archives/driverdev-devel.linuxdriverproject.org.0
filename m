Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EE536DE0E
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 19:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42ED44059E;
	Wed, 28 Apr 2021 17:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u8guQ-vNJD4A; Wed, 28 Apr 2021 17:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41CD44053C;
	Wed, 28 Apr 2021 17:18:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70B851BF860
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 17:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F220400A7
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 17:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tTmBa5ujOM1f for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 17:18:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9B46400B8
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 17:18:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id BE1851F42B88
Message-ID: <e5eeffbbad6ee90204cb3928cfd6774efb6174f3.camel@collabora.com>
Subject: Re: [PATCH v4 79/79] media: hantro: do a PM resume earlier
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Wed, 28 Apr 2021 14:17:50 -0300
In-Reply-To: <569838d406dde80dcc64989a663882817a54cbb2.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <569838d406dde80dcc64989a663882817a54cbb2.1619621413.git.mchehab+huawei@kernel.org>
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

SGkgTWF1cm8sCgpUaGFua3MgYSBsb3QgZm9yIHRha2luZyBjYXJlIG9mIHRoaXMuCgpPbiBXZWQs
IDIwMjEtMDQtMjggYXQgMTY6NTIgKzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToK
PiBUaGUgZGV2aWNlX3J1bigpIGZpcnN0IGVuYWJsZXMgdGhlIGNsb2NrIGFuZCB0aGVuCj4gdHJp
ZXMgdG8gcmVzdW1lIFBNIHJ1bnRpbWUsIGNoZWNraW5nIGZvciBlcnJvcnMuCj4gCj4gV2VsbCwg
aWYgZm9yIHNvbWUgcmVhc29uIHRoZSBwbV9ydW50aW1lIGNhbiBub3QgcmVzdW1lLAo+IGl0IHdv
dWxkIGJlIGJldHRlciB0byBkZXRlY3QgaXQgYmVmb3JlaGFuZC4KPiAKPiBTbywgY2hhbmdlIHRo
ZSBvcmRlciBpbnNpZGUgZGV2aWNlX3J1bigpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENh
cnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4KCkNsb2NrcyBjb3VsZCBi
ZSBiZWhpbmQgcG93ZXItZG9tYWlucywgSUlSQywgc28gdGhpcyBjaGFuZ2UKaXMgZml4aW5nIHRo
YXQuCgpIb3dldmVyLCB0aGlzIGhhcyBldmVyIGJlZW4gYSBwcm9ibGVtIGZvciB0aGlzIGRyaXZl
ciwKc28gSSBkb24ndCB0aGluayBpdCBtYWtlcyBzZW5zZSB0byBib3RoZXIgd2l0aCBGaXhlcyB0
YWcuCgpSZXZpZXdlZC1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29t
PgoKVGhhbmtzLApFemVxdWllbAoKPiAtLS0KPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2Rydi5jIHwgOCArKysrLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYwo+IGluZGV4IDI1ZmEzNmU3ZTc3My4uNjdkZTZiMTUyMzZkIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiBAQCAtMTYwLDE0ICsx
NjAsMTQgQEAgc3RhdGljIHZvaWQgZGV2aWNlX3J1bih2b2lkICpwcml2KQo+IMKgwqDCoMKgwqDC
oMKgwqBzcmMgPSBoYW50cm9fZ2V0X3NyY19idWYoY3R4KTsKPiDCoMKgwqDCoMKgwqDCoMKgZHN0
ID0gaGFudHJvX2dldF9kc3RfYnVmKGN0eCk7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqByZXQgPSBj
bGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2LT5j
bG9ja3MpOwo+IC3CoMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4gLQo+IMKgwqDCoMKgwqDCoMKgwqByZXQg
PSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGN0eC0+ZGV2LT5kZXYpOwo+IMKgwqDCoMKgwqDC
oMKgwqBpZiAocmV0IDwgMCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8g
ZXJyX2NhbmNlbF9qb2I7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqByZXQgPSBjbGtfYnVsa19lbmFi
bGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2LT5jbG9ja3MpOwo+ICvC
oMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdv
dG8gZXJyX2NhbmNlbF9qb2I7Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqB2NGwyX20ybV9idWZfY29w
eV9tZXRhZGF0YShzcmMsIGRzdCwgdHJ1ZSk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgY3R4LT5j
b2RlY19vcHMtPnJ1bihjdHgpOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
