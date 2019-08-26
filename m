Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A5D9D3A2
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 18:04:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CE27818B2;
	Mon, 26 Aug 2019 16:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eiaxBYx2GMxB; Mon, 26 Aug 2019 16:04:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D145781CF3;
	Mon, 26 Aug 2019 16:04:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A944A1BF3A8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 16:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A397D8798D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 16:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ca6xXgFiQeB0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 16:04:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D145D8796C
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 16:04:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 09:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="204630447"
Received: from alexey-ws.iil.intel.com (HELO [10.189.205.150])
 ([10.189.205.150])
 by fmsmga004.fm.intel.com with ESMTP; 26 Aug 2019 09:04:12 -0700
From: Alexey Skidanov <alexey.skidanov@intel.com>
Subject: Re: [PATCH] staging: android: ion: cma heap: Limit size of allocated
 buffer
To: Laura Abbott <labbott@redhat.com>, driverdev-devel@linuxdriverproject.org
References: <1566613683-1872-1-git-send-email-alexey.skidanov@intel.com>
 <af46d441-9648-8508-3989-f19a70f73a26@redhat.com>
Message-ID: <5f902bea-f3cd-0d64-0534-582c29dda365@intel.com>
Date: Mon, 26 Aug 2019 03:55:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <af46d441-9648-8508-3989-f19a70f73a26@redhat.com>
Content-Language: en-US
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
Cc: John Stultz <john.stultz@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ck9uIDgvMjYvMTkgMTE6MzYgQU0sIExhdXJhIEFiYm90dCB3cm90ZToKPiBPbiA4LzIzLzE5IDEw
OjI4IFBNLCBBbGV4ZXkgU2tpZGFub3Ygd3JvdGU6Cj4+IEluIGlvbl9jbWFfaGVhcCwgdGhlIGFs
bG9jYXRlZCBidWZmZXIgaXMgcmVwcmVzZW50ZWQgYnkgYSBzaW5nbGUKPj4gc3RydWN0IHNjYXR0
ZXJsaXN0IGluc3RhbmNlLiBUaGUgbGVuZ3RoIGZpZWxkIG9mIHRoaXMgc3RydWN0IGlzCj4+IDMy
IGJpdCwgaGVuY2UgdGhlIG1heGltYWwgc2l6ZSBvZiByZXF1ZXN0ZWQgYnVmZmVyIHNob3VsZCBi
ZQo+PiBsZXNzIHRoYW4gNEdCLgo+Pgo+PiBUaGUgbGVuIHBhcmFtZXIgb2YgdGhlIGFsbG9jYXRp
b24gZnVuY3Rpb24gaXMgNjQgYml0IChvbiA2NCBiaXQgc3lzdGVtcykuCj4+IEhlbmNlIHRoZSBy
ZXF1ZXN0ZWQgc2l6ZSBtaWdodCBiZSBncmVhdGVyIHRoYW4gNEdCIGFuZCBpbiB0aGlzIGNhc2UK
Pj4gdGhlIGZpZWxkIGxlbmd0aCBvZiB0aGUgc3RydWN0IHNjYXR0ZXJsaXN0IGlzIGluaXRpYWxp
emVkIGluY29ycmVjdGx5Lgo+Pgo+PiBUbyBmaXggdGhpcywgd2UgY2hlY2sgdGhhdCByZXF1ZXN0
ZWQgc2l6ZSBtYXkgZml0IGludG8KPj4gdGhlIGZpZWxkIGxlbmd0aCBvZiB0aGUgc3RydWN0IHNj
YXR0ZXJsaXN0Cj4+Cj4KPiBJcyB0aGlzIGEgcmVhbCBpc3N1ZSB0aGF0J3MgYWN0dWFsbHkgcG9z
c2libGUgdG8gaGl0PyBBbGxvY2F0aW5nCj4gbW9yZSB0aGFuIGEgNEdCIHJlZ2lvbiBvZiBDTUEg
c2VlbXMgaWxsIGFkdmlzZWQgYW5kIGxpa2VseSB0bwo+IHRocm93IG9mZiBhbGwgdGhlIGFjY291
bnRpbmcuCj4KWWVzLiBOb3Qgc3VyZSB3aHkgaXQgc2VlbXMgaWxsIGFkdmlzZWQgLSBtb3N0IG9m
IHRoZSBidWZmZXJzIGFyZSBzbWFsbCBvciBtaWRkbGUgc2l6ZSBvbmVzLCBidXQgc29tZXRpbWVz
IHJlYWxseSBodWdlIG9uZSBpcyByZXF1ZXN0ZWQuCgo+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkg
U2tpZGFub3YgPGFsZXhleS5za2lkYW5vdkBpbnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJz
L3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmjCoMKgwqDCoMKgwqDCoMKgwqAgfCA1ICsrKysrCj4+
IMKgIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fY21hX2hlYXAuYyB8IDMgKysrCj4+
IMKgIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmggYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9p
ZC9pb24vaW9uLmgKPj4gaW5kZXggZTI5MTI5OS4uOWRkN2UyMCAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5oCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9h
bmRyb2lkL2lvbi9pb24uaAo+PiBAQCAtMjEsNiArMjEsMTEgQEAKPj4gwqAgwqAgI2luY2x1ZGUg
Ii4uL3VhcGkvaW9uLmgiCj4+IMKgICsjZGVmaW5lIE1BWF9TQ0FUVEVSTElTVF9MRU4gKHtcCj4+
ICvCoMKgwqDCoMKgwqDCoCB0eXBlb2YoKChzdHJ1Y3Qgc2NhdHRlcmxpc3QgKikwKS0+bGVuZ3Ro
KSB2O1wKPj4gK8KgwqDCoMKgwqDCoMKgIHYgPSAtMTtcCj4+ICvCoMKgwqAgfSkKPj4gKwo+PiDC
oCAvKioKPj4gwqDCoCAqIHN0cnVjdCBpb25fYnVmZmVyIC0gbWV0YWRhdGEgZm9yIGEgcGFydGlj
dWxhciBidWZmZXIKPj4gwqDCoCAqIEBub2RlOsKgwqDCoMKgwqDCoMKgIG5vZGUgaW4gdGhlIGlv
bl9kZXZpY2UgYnVmZmVycyB0cmVlCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvYW5k
cm9pZC9pb24vaW9uX2NtYV9oZWFwLmMgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9u
X2NtYV9oZWFwLmMKPj4gaW5kZXggYmY2NWU2Ny4uZDA2OTcxOSAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9jbWFfaGVhcC5jCj4+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fY21hX2hlYXAuYwo+PiBAQCAtMzYsNiArMzYsOSBAQCBz
dGF0aWMgaW50IGlvbl9jbWFfYWxsb2NhdGUoc3RydWN0IGlvbl9oZWFwICpoZWFwLCBzdHJ1Y3Qg
aW9uX2J1ZmZlciAqYnVmZmVyLAo+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgYWxpZ24gPSBn
ZXRfb3JkZXIoc2l6ZSk7Cj4+IMKgwqDCoMKgwqAgaW50IHJldDsKPj4gwqAgK8KgwqDCoCBpZiAo
c2l6ZSA+IE1BWF9TQ0FUVEVSTElTVF9MRU4pCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJ
TlZBTDsKPj4gKwo+PiDCoMKgwqDCoMKgIGlmIChhbGlnbiA+IENPTkZJR19DTUFfQUxJR05NRU5U
KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgYWxpZ24gPSBDT05GSUdfQ01BX0FMSUdOTUVOVDsKPj4g
wqAKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
