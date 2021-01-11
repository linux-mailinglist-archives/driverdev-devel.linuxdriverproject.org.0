Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD362F123F
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jan 2021 13:25:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA46D866C8;
	Mon, 11 Jan 2021 12:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id voMHSVvtmVTM; Mon, 11 Jan 2021 12:25:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47C3486657;
	Mon, 11 Jan 2021 12:25:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4400B1BF289
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 12:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 40E6E84CEB
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 12:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gW6rqolk6tcO for <devel@linuxdriverproject.org>;
 Mon, 11 Jan 2021 12:25:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6ADF584785
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 12:25:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 888DA1F44A81
Message-ID: <5b6d07096cbc19da68bbbfd29acb6c9ad584935b.camel@collabora.com>
Subject: Re: [PATCH] hantro: Format IOCTLs compliance fixes
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 11 Jan 2021 09:24:55 -0300
In-Reply-To: <CANiDSCuy9MPK8qpwEz4CTta54i6S=k3DsempGLYssU2NtFGM3Q@mail.gmail.com>
References: <20210111113529.45488-1-ribalda@chromium.org>
 <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
 <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
 <CANiDSCuy9MPK8qpwEz4CTta54i6S=k3DsempGLYssU2NtFGM3Q@mail.gmail.com>
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCAyMDIxLTAxLTExIGF0IDEzOjIyICswMTAwLCBSaWNhcmRvIFJpYmFsZGEgd3JvdGU6
Cj4gSGkgRXplcXVpZWwKPiAKPiBPbiBNb24sIEphbiAxMSwgMjAyMSBhdCAxMjo1NSBQTSBSaWNh
cmRvIFJpYmFsZGEgPHJpYmFsZGFAY2hyb21pdW0ub3JnPiB3cm90ZToKPiA+IAo+ID4gSGkgRXpl
cXVpZWwKPiA+IAo+ID4gT24gTW9uLCBKYW4gMTEsIDIwMjEgYXQgMTI6NDggUE0gRXplcXVpZWwg
R2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiA+ID4gCj4gPiA+IEhpIFJp
Y2FyZG8sCj4gPiA+IAo+ID4gPiBPbiBNb24sIDIwMjEtMDEtMTEgYXQgMTI6MzUgKzAxMDAsIFJp
Y2FyZG8gUmliYWxkYSB3cm90ZToKPiA+ID4gPiBDbGVhciB0aGUgcmVzZXJ2ZWQgZmllbGRzLgo+
ID4gPiA+IAo+ID4gPiA+IEZpeGVzOgo+ID4gPiA+IMKgIGZhaWw6IHY0bDItdGVzdC1mb3JtYXRz
LmNwcCg0ODIpOiBwaXhfbXAucGxhbmVfZm10WzBdLnJlc2VydmVkIG5vdCB6ZXJvZWQKPiA+ID4g
PiB0ZXN0IFZJRElPQ19UUllfRk1UOiBGQUlMCj4gPiA+ID4gwqAgZmFpbDogdjRsMi10ZXN0LWZv
cm1hdHMuY3BwKDQ4Mik6IHBpeF9tcC5wbGFuZV9mbXRbMF0ucmVzZXJ2ZWQgbm90IHplcm9lZAo+
ID4gPiA+IHRlc3QgVklESU9DX1NfRk1UOiBGQUlMCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogUmljYXJkbyBSaWJhbGRhIDxyaWJhbGRhQGNocm9taXVtLm9yZz4KPiA+ID4gPiAtLS0K
PiA+ID4gPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuYyB8IDUg
KysrKysKPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+ID4gPiAK
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9f
djRsMi5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jCj4gPiA+
ID4gaW5kZXggYjY2OGE4MmQ0MGFkLi45YjM4NGZiZmZjOTMgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jCj4gPiA+ID4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jCj4gPiA+ID4gQEAgLTIz
OSw2ICsyMzksNyBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0IHN0cnVjdCBoYW50
cm9fY3R4ICpjdHgsCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGhhbnRyb19m
bXQgKmZtdCwgKnZwdV9mbXQ7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgYm9vbCBjYXB0dXJlID0g
VjRMMl9UWVBFX0lTX0NBUFRVUkUodHlwZSk7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgYm9vbCBj
b2RlZDsKPiA+ID4gPiArwqDCoMKgwqDCoMKgIGludCBpOwo+ID4gPiA+IAo+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgIGNvZGVkID0gY2FwdHVyZSA9PSBjdHgtPmlzX2VuY29kZXI7Cj4gPiA+ID4gCj4g
PiA+ID4gQEAgLTI5Myw2ICsyOTQsMTAgQEAgc3RhdGljIGludCBoYW50cm9fdHJ5X2ZtdChjb25z
dCBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGl4X21wLT53aWR0aCAqIHBpeF9tcC0+aGVpZ2h0ICog
Zm10LT5tYXhfZGVwdGg7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgfQo+ID4gPiA+IAo+ID4gPiA+
ICvCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IHBpeF9tcC0+bnVtX3BsYW5lczsgaSsrKQo+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1lbXNldChwaXhfbXAtPnBsYW5l
X2ZtdFtpXS5yZXNlcnZlZCwgMCwKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHNpemVvZihwaXhfbXAtPnBsYW5lX2ZtdFtpXS5yZXNlcnZlZCkpOwo+
ID4gPiA+ICsKPiA+ID4gCj4gPiA+IFRoaXMgbG9va3MgbGlrZSBzb21ldGhpbmcgdGhhdCBzaG91
bGQgYmUgaGFuZGxlZCBhdCB0aGUgY29yZSwKPiA+ID4gcHJvYmFibHkgaW4gZHJpdmVycy9tZWRp
YS92NGwyLWNvcmUvdjRsMi1pb2N0bC5jOjp2NGxfdHJ5X2ZtdCgpLgo+ID4gCj4gPiBUaGUgY29y
ZSBkb2VzIGNsZWFyIHRoZSByZXNlcnZlZCBmaWVsZCBmcm9tIHY0bDJfcGl4X2Zvcm1hdF9tcGxh
bmUsCj4gCj4gTXkgYmFkLCBJdCBpcyBhbHNvIGNsZWFyaW5nIHRoZSBwZXIgcGxhbmUgcmVzZXJ2
ZWQgZmllbGQuIEkgd2FzCj4gdGVzdGluZyBpbiBhbiBvbGQga2VybmVsLgo+IAoKT0ssIGNvb2wu
Cgo+IFRoZSBncmVwIGl0IGlzIHN0aWxsIHZhbGlkIHRob3VnaC4gV2UgY2FuIHJlbW92ZSBhbGwg
dGhlIG1lbXNldHMgaW4gdGhlIGRyaXZlcnMuCj4gCgpUaGF0IHdvdWxkIGJlIHZlcnkgbmljZSBp
bmRlZWQuCgpUaGFua3MsCkV6ZXF1aWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
