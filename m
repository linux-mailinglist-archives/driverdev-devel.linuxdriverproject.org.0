Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41349A2F2C
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 07:48:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D87168836D;
	Fri, 30 Aug 2019 05:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yUeSiXmqdEx1; Fri, 30 Aug 2019 05:48:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 97CD2881FA;
	Fri, 30 Aug 2019 05:48:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B2F11BF84C
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 05:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 54AB3881C4
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 05:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bIil1rm6+90I for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 05:48:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4648A881BE
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 05:48:13 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E83A528D773;
 Fri, 30 Aug 2019 06:48:09 +0100 (BST)
Date: Fri, 30 Aug 2019 07:48:06 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/8] media: cedrus: Detect first slice of a frame
Message-ID: <20190830074806.78a2b8b4@collabora.com>
In-Reply-To: <3132748.mYbjOY1tKM@jernej-laptop>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-6-jernej.skrabec@siol.net>
 <20190826202831.311c7c20@collabora.com>
 <3132748.mYbjOY1tKM@jernej-laptop>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, acourbot@chromium.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org, ezequiel@collabora.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCAyOSBBdWcgMjAxOSAyMTowNDoyOCArMDIwMApKZXJuZWogxaBrcmFiZWMgPGplcm5l
ai5za3JhYmVjQHNpb2wubmV0PiB3cm90ZToKCj4gRG5lIHBvbmVkZWxqZWssIDI2LiBhdmd1c3Qg
MjAxOSBvYiAyMDoyODozMSBDRVNUIGplIEJvcmlzIEJyZXppbGxvbiAKPiBuYXBpc2FsKGEpOgo+
ID4gSGkgSmVybmVqLAo+ID4gCj4gPiBPbiBUaHUsIDIyIEF1ZyAyMDE5IDIxOjQ0OjU3ICswMjAw
Cj4gPiAKPiA+IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4gd3JvdGU6
ICAKPiA+ID4gV2hlbiBjb2RlYyBzdXBwb3J0cyBtdWx0aXBsZSBzbGljZXMgaW4gb25lIGZyYW1l
LCBWUFUgaGFzIHRvIGtub3cgd2hlbgo+ID4gPiBmaXJzdCBzbGljZSBvZiBlYWNoIGZyYW1lIGlz
IGJlaW5nIHByb2Nlc3NlZCwgcHJlc3VtYWJseSB0byBjb3JyZWN0bHkKPiA+ID4gY2xlYXIvc2V0
IGRhdGEgaW4gYXV4aWxpYXJ5IGJ1ZmZlcnMuCj4gPiA+IAo+ID4gPiBBZGQgZmlyc3Rfc2xpY2Ug
ZmllbGQgdG8gY2VkcnVzX3J1biBzdHJ1Y3R1cmUgYW5kIHNldCBpdCBhY2NvcmRpbmcgdG8KPiA+
ID4gdGltZXN0YW1wcyBvZiBjYXB0dXJlIGFuZCBvdXRwdXQgYnVmZmVycy4gSWYgdGltZXN0YW1w
cyBhcmUgZGlmZmVyZW50LAo+ID4gPiBpdCdzIGZpcnN0IHNsaWNlIGFuZCB2aWNldmVyc2EuCj4g
PiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNA
c2lvbC5uZXQ+Cj4gPiA+IC0tLQo+ID4gPiAKPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzLmggICAgIHwgMSArCj4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVk
aWEvc3VueGkvY2VkcnVzL2NlZHJ1c19kZWMuYyB8IDIgKysKPiA+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFn
aW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuaAo+ID4gPiBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmggaW5kZXgKPiA+ID4gMmYwMTdhNjUxODQ4Li4zMmNi
MzhlNTQxYzYgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9j
ZWRydXMvY2VkcnVzLmgKPiA+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2Nl
ZHJ1cy9jZWRydXMuaAo+ID4gPiBAQCAtNzAsNiArNzAsNyBAQCBzdHJ1Y3QgY2VkcnVzX21wZWcy
X3J1biB7Cj4gPiA+IAo+ID4gPiAgc3RydWN0IGNlZHJ1c19ydW4gewo+ID4gPiAgCj4gPiA+ICAJ
c3RydWN0IHZiMl92NGwyX2J1ZmZlcgkqc3JjOwo+ID4gPiAgCXN0cnVjdCB2YjJfdjRsMl9idWZm
ZXIJKmRzdDsKPiA+ID4gCj4gPiA+ICsJYm9vbCBmaXJzdF9zbGljZTsKPiA+ID4gCj4gPiA+ICAJ
dW5pb24gewo+ID4gPiAgCQo+ID4gPiAgCQlzdHJ1Y3QgY2VkcnVzX2gyNjRfcnVuCWgyNjQ7Cj4g
PiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1
cy9jZWRydXNfZGVjLmMKPiA+ID4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVz
L2NlZHJ1c19kZWMuYyBpbmRleAo+ID4gPiA1NmNhNGM5YWQwMWMuLmQ3YjU0YWNjZmU4MyAxMDA2
NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNf
ZGVjLmMKPiA+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRy
dXNfZGVjLmMKPiA+ID4gQEAgLTMxLDYgKzMxLDggQEAgdm9pZCBjZWRydXNfZGV2aWNlX3J1bih2
b2lkICpwcml2KQo+ID4gPiAKPiA+ID4gIAlydW4uc3JjID0gdjRsMl9tMm1fbmV4dF9zcmNfYnVm
KGN0eC0+ZmgubTJtX2N0eCk7Cj4gPiA+ICAJcnVuLmRzdCA9IHY0bDJfbTJtX25leHRfZHN0X2J1
ZihjdHgtPmZoLm0ybV9jdHgpOwo+ID4gPiAKPiA+ID4gKwlydW4uZmlyc3Rfc2xpY2UgPQo+ID4g
PiArCQlydW4uc3JjLT52YjJfYnVmLnRpbWVzdGFtcCAhPSBydW4uZHN0LSAgCj4gPnZiMl9idWYu
dGltZXN0YW1wOwo+ID4gCj4gPiBDYW4ndCB3ZSB1c2Ugc2xpY2UtPmZpcnN0X21iX2luX3NsaWNl
IHRvIGRldGVybWluZSBpZiBhIHNsaWNlIGlzIHRoZQo+ID4gZmlyc3Q/IEknZCBleHBlY3QgLT5m
aXJzdF9tYl9pbl9zbGljZSB0byBiZSAwICh1bmxlc3Mgd2UgZGVjaWRlIHRvCj4gPiBzdXBwb3J0
IEFTTykuICAKPiAKPiBJIGxvb2tlZCBpbiBhbGwgVlBVIGRvY3VtZW50YXRpb24gYXZhaWxhYmxl
IHRvIG1lICh3aGljaCBpc24ndCBtdWNoKSBhbmQgdGhlcmUgCj4gaXMgbm8gaW5kaWNhdGlvbiBp
ZiBBU08gaXMgc3VwcG9ydGVkIG9yIG5vdC4gRG8geW91IGhhdmUgYW55IHNhbXBsZSB2aWRlbyB3
aXRoIAo+IG91dC1vZi1vcmRlciBzbGljZXM/IEl0J3MgbXkgdW5kZXJzdGFuZGluZyB0aGF0IHRo
aXMgaXMgdW5jb21tb24uCgpJJ20gbm90IGVudGlyZWx5IHN1cmUsIGJ1dCBteSB1bmRlcnN0YW5k
aW5nIHdhcyB0aGF0IGl0IG1pZ2h0IGJlIHVzZWQKd2hlbiBzdHJlYW1pbmcgb3ZlciBuZXR3b3Jr
IHdoZXJlIHNvbWUgcGFja2V0cyBtaWdodCBiZSBsb3N0IGFuZApyZS1lbWl0dGVkIGxhdGVyIG9u
LgoKPiBJZiBpdCdzIAo+IHN1cHBvcnRlZCwgSSB3b3VsZCBsZWF2ZSBjb2RlIGFzLWlzLgoKSSBy
ZW1lbWJlciBzZWVpbmcgdGhlIEFTTyBhY3JvbnltIG1lbnRpb25lZCBpbiB0aGUgaGFudHJvIEcx
IHNwZWMsIGJ1dAphdCB0aGUgc2FtZSB0aW1lIHdlJ3JlIGRvaW5nIGZyYW1lLWJhc2VkIGRlY29k
aW5nLCBzbyBJIGd1ZXNzIHRoZSBIVwpibG9jayBleHBlY3RzIHNsaWNlcyB0byBiZSBvcmRlcmVk
IGluIHRoYXQgY2FzZS4gSG9uZXN0bHkgSSBkb24ndCBrbm93LApzbyBsZXQncyBrZWVwIHRoZSBj
b2RlIGFzLWlzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
