Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F3536C88A
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 17:19:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6540B83C98;
	Tue, 27 Apr 2021 15:18:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g_a3rSFIZOVf; Tue, 27 Apr 2021 15:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF69C83C93;
	Tue, 27 Apr 2021 15:18:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 627B31BF356
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 15:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5ED0583C93
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 15:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0GP8sqTiMckZ for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 15:18:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D74E81A81
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 15:18:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 132381F4265E
Message-ID: <95ea572e201545b27ff9f48313f7aaea157d4764.camel@collabora.com>
Subject: Re: [PATCH v3 79/79] media: hantro: document the usage of
 pm_runtime_get_sync()
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Robin Murphy <robin.murphy@arm.com>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>
Date: Tue, 27 Apr 2021 12:18:32 -0300
In-Reply-To: <02948673-9572-a570-d28e-03a7208f39e1@arm.com>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
 <230f22170db7fa57b49cff4570cef15bf11b2ad5.1619519080.git.mchehab+huawei@kernel.org>
 <02948673-9572-a570-d28e-03a7208f39e1@arm.com>
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

T24gVHVlLCAyMDIxLTA0LTI3IGF0IDE2OjA4ICswMTAwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4g
T24gMjAyMS0wNC0yNyAxMToyNywgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+ID4gRGVz
cGl0ZSBvdGhlciAqX2dldCgpLypfcHV0KCkgZnVuY3Rpb25zLCB3aGVyZSB1c2FnZSBjb3VudCBp
cwo+ID4gaW5jcmVtZW50ZWQgb25seSBpZiBub3QgZXJyb3JzLCB0aGUgcG1fcnVudGltZV9nZXRf
c3luYygpIGhhcwo+ID4gYSBkaWZmZXJlbnQgYmVoYXZpb3IsIGluY3JlbWVudGluZyB0aGUgY291
bnRlciAqZXZlbiogb24KPiA+IGVycm9ycy4KPiA+IAo+ID4gVGhhdCdzIGFuIGVycm9yIHByb25l
IGJlaGF2aW9yLCBhcyBwZW9wbGUgb2Z0ZW4gZm9yZ2V0IHRvCj4gPiBkZWNyZW1lbnQgdGhlIHVz
YWdlIGNvdW50ZXIuCj4gPiAKPiA+IEhvd2V2ZXIsIHRoZSBoYW50cm8gZHJpdmVyIGRlcGVuZHMg
b24gdGhpcyBiZWhhdmlvciwgYXMgaXQKPiA+IHdpbGwgZGVjcmVtZW50IHRoZSB1c2FnZV9jb3Vu
dCB1bmNvbmRpdGlvbmFsbHkgYXQgdGhlIG0ybQo+ID4gam9iIGZpbmlzaCB0aW1lLCB3aGljaCBt
YWtlcyBzZW5zZS4KPiA+IAo+ID4gU28sIGludGVhZCBvZiB1c2luZyB0aGUgcG1fcnVudGltZV9y
ZXN1bWVfYW5kX2dldCgpIHRoYXQKPiA+IHdvdWxkIGRlY3JlbWVudCB0aGUgY291bnRlciBvbiBl
cnJvciwga2VlcCB0aGUgY3VycmVudAo+ID4gQVBJLCBidXQgYWRkIGEgZG9jdW1lbnRhdGlvbiBl
eHBsYWluaW5nIHRoZSByYXRpb25hbGUgZm9yCj4gPiBrZWVwIHVzaW5nIHBtX3J1bnRpbWVfZ2V0
X3N5bmMoKS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxt
Y2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgo+ID4gLS0tCj4gPiDCoCBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyB8IDcgKysrKysrKwo+ID4gwqAgMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYwo+ID4gaW5kZXggNTk1ZTgyYTgyNzI4Li45NmY5NDBjMWM4NWMgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4g
KysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+IEBAIC0x
NTUsNiArMTU1LDEzIEBAIHN0YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJpdikKPiA+IMKg
wqDCoMKgwqDCoMKgwqByZXQgPSBjbGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51
bV9jbG9ja3MsIGN0eC0+ZGV2LT5jbG9ja3MpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQp
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7
Cj4gCj4gLi5leGNlcHQgdGhpcyBjYW4gYWxzbyBjYXVzZSB0aGUgc2FtZSBwbV9ydW50aW1lX3B1
dF9hdXRvc3VzcGVuZCgpIGNhbGwgCj4gd2l0aG91dCBldmVuIHJlYWNoaW5nIHRoZSAibWF0Y2hp
bmciIGdldCBiZWxvdywgc28gcmF0aGVyIHRoYW4gc29tZSBraW5kIAo+IG9mIGNsZXZlcm5lc3Mg
aXQgc2VlbXMgbW9yZSBsaWtlIGl0J3MganVzdCBicm9rZW4gOi8KPiAKCkluZGVlZCwgSSB3YXMg
dHJ5aW5nIHRvIGZpbmQgdGltZSB0byBjb29rIGEgcXVpY2sgcGF0Y2gsIGJ1dCBrZXB0CmdldHRp
bmcgcHJlZW1wdGVkLgoKRmVlbCBmcmVlIHRvIHN1Ym1pdCBhIGZpeCBmb3IgdGhpcywgb3RoZXJ3
aXNlLCBJJ2xsIHRyeSB0byBmaW5kCnRpbWUgbGF0ZXIgdGhpcyB3ZWVrLgoKVGhhbmtzLApFemVx
dWllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
