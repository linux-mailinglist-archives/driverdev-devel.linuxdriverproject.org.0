Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A829C2F11C6
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jan 2021 12:49:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D638A87051;
	Mon, 11 Jan 2021 11:49:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPcAlc5L8vgI; Mon, 11 Jan 2021 11:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A1E286FF2;
	Mon, 11 Jan 2021 11:49:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7090C1BF3E3
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 11:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6D0A085C95
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 11:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBy0bzG89A7A for <devel@linuxdriverproject.org>;
 Mon, 11 Jan 2021 11:48:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8520385C67
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 11:48:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id AD7F91F44D9B
Message-ID: <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
Subject: Re: [PATCH] hantro: Format IOCTLs compliance fixes
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Ricardo Ribalda <ribalda@chromium.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Mon, 11 Jan 2021 08:48:46 -0300
In-Reply-To: <20210111113529.45488-1-ribalda@chromium.org>
References: <20210111113529.45488-1-ribalda@chromium.org>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgUmljYXJkbywKCk9uIE1vbiwgMjAyMS0wMS0xMSBhdCAxMjozNSArMDEwMCwgUmljYXJkbyBS
aWJhbGRhIHdyb3RlOgo+IENsZWFyIHRoZSByZXNlcnZlZCBmaWVsZHMuCj4gCj4gRml4ZXM6Cj4g
wqAgZmFpbDogdjRsMi10ZXN0LWZvcm1hdHMuY3BwKDQ4Mik6IHBpeF9tcC5wbGFuZV9mbXRbMF0u
cmVzZXJ2ZWQgbm90IHplcm9lZAo+IHRlc3QgVklESU9DX1RSWV9GTVQ6IEZBSUwKPiDCoCBmYWls
OiB2NGwyLXRlc3QtZm9ybWF0cy5jcHAoNDgyKTogcGl4X21wLnBsYW5lX2ZtdFswXS5yZXNlcnZl
ZCBub3QgemVyb2VkCj4gdGVzdCBWSURJT0NfU19GTVQ6IEZBSUwKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBSaWNhcmRvIFJpYmFsZGEgPHJpYmFsZGFAY2hyb21pdW0ub3JnPgo+IC0tLQo+IMKgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jIHwgNSArKysrKwo+IMKgMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFu
dHJvL2hhbnRyb192NGwyLmMKPiBpbmRleCBiNjY4YTgyZDQwYWQuLjliMzg0ZmJmZmM5MyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiBAQCAtMjM5
LDYgKzIzOSw3IEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9mbXQoY29uc3Qgc3RydWN0IGhhbnRy
b19jdHggKmN0eCwKPiDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKmZt
dCwgKnZwdV9mbXQ7Cj4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgY2FwdHVyZSA9IFY0TDJfVFlQRV9J
U19DQVBUVVJFKHR5cGUpOwo+IMKgwqDCoMKgwqDCoMKgwqBib29sIGNvZGVkOwo+ICvCoMKgwqDC
oMKgwqDCoGludCBpOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGNvZGVkID0gY2FwdHVyZSA9PSBj
dHgtPmlzX2VuY29kZXI7Cj4gwqAKPiBAQCAtMjkzLDYgKzI5NCwxMCBAQCBzdGF0aWMgaW50IGhh
bnRyb190cnlfZm10KGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGl4X21wLT53aWR0aCAqIHBpeF9t
cC0+aGVpZ2h0ICogZm10LT5tYXhfZGVwdGg7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+ICvC
oMKgwqDCoMKgwqDCoGZvciAoaSA9IDA7IGkgPCBwaXhfbXAtPm51bV9wbGFuZXM7IGkrKykKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWVtc2V0KHBpeF9tcC0+cGxhbmVfZm10W2ld
LnJlc2VydmVkLCAwLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc2l6ZW9mKHBpeF9tcC0+cGxhbmVfZm10W2ldLnJlc2VydmVkKSk7Cj4gKwoKVGhpcyBsb29r
cyBsaWtlIHNvbWV0aGluZyB0aGF0IHNob3VsZCBiZSBoYW5kbGVkIGF0IHRoZSBjb3JlLApwcm9i
YWJseSBpbiBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmM6OnY0bF90cnlfZm10
KCkuCgpUaGFua3MsCkV6ZXF1aWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
