Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A47DC29D5
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 00:44:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F35D820522;
	Mon, 30 Sep 2019 22:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZutB-LUX1H3; Mon, 30 Sep 2019 22:44:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 989272154C;
	Mon, 30 Sep 2019 22:43:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 642B61BF2B9
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 22:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5263F865CF
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 22:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EOHYwXXR6jGT for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 22:43:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud9.xs4all.net (lb3-smtp-cloud9.xs4all.net
 [194.109.24.30])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 76CED86477
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 22:43:49 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud9.xs4all.net with ESMTPA
 id F4OEioGt7z6EAF4OIiPBGS; Tue, 01 Oct 2019 00:43:47 +0200
Subject: Re: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <9ec1c07e-b0e8-f50c-7f46-df7ca303a5bc@xs4all.nl>
 <4342181.Ehiz7mZe5m@jernej-laptop>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <eb127b9a-e226-d230-67b5-069795bd76fb@xs4all.nl>
Date: Tue, 1 Oct 2019 00:43:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4342181.Ehiz7mZe5m@jernej-laptop>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFn+kIK2GNj9+BEej5EMia6D+bB8/LawPK5czA7EcEOQoDlb7/byirHWWLuRNhM8aOvV6L4uPkBDMp/b5haMgLHJRCVz00k6BXYbFv55mOe5epSzVOdQ
 TuvdvKUkiVAWjMcfuVcfk4QvBILVf1HKZcMY6+g4Qdc4OLBZ5AhKxnOonV8xUyYWzJDKLpCOyrYCm8ouTUcDCldHPLEkvabNj/3zujhWK1a/hvCTT1gbNFlH
 CC9gI9c7SR+7xVjLuTA1YfPPX18g2xgyKEDamsFf6klifUdZplA+Q3933lfAcRVDLzYw431YEZgf+oJ80nt3BhAa/SQ3kAA9PtwXZYZtQX8vNWwsj+3eP8N+
 a/WnOrHguJimsETowgg7bowdXWe7A12/bTE4QHPY1+srUyslIUzGh5yxBG6lYuckBYeQGM1iVd112/prGDJhwS/t6tWLz4tZ6BTY23ahUA068+2hwGhPwpqx
 3blGqFcQpa7A6sLE3MCUYPDSp4oAd97HgeosNQx9yiv24TBOg0kC2VDxGgZ4XbO/IrKr0tzXmCXARcKyZjADEcs9Ac+94/V7r8HiyOJhz8TcfOMg9HvSlMt1
 sDqz9wbWFjPNIXXhaBvQao/uAqN+QFMvRa2n97UNJCe/mxtlRoIJ58QvGTf708jDS/vMzw3CSSvO93ZjuQbaZHHW54jwd4kQpPUL/ytJ63vX+M/tB1jsM1K1
 dG4zJVTTm7MMudokTRIMmA/V3Ygnek0seXag/YyZUfdy3DJlgV/XNg==
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTAvMS8xOSAxMjoyNyBBTSwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+IERuZSBwb25lZGVs
amVrLCAzMC4gc2VwdGVtYmVyIDIwMTkgb2IgMTA6MTA6NDggQ0VTVCBqZSBIYW5zIFZlcmt1aWwg
Cj4gbmFwaXNhbChhKToKPj4gT24gOS8yOS8xOSAxMDowMCBQTSwgSmVybmVqIFNrcmFiZWMgd3Jv
dGU6Cj4+PiBUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIGRlY29kaW5nIG11bHRpLXNsaWNl
IEgyNjQgZnJhbWVzIGFsb25nIHdpdGgKPj4+IHN1cHBvcnQgZm9yIFY0TDJfREVDX0NNRF9GTFVT
SCBhbmQgVjRMMl9CVUZfRkxBR19NMk1fSE9MRF9DQVBUVVJFX0JVRi4KPj4+Cj4+PiBDb2RlIHdh
cyB0ZXN0ZWQgYnkgbW9kaWZpZWQgZmZtcGVnLCB3aGljaCBjYW4gYmUgZm91bmQgaGVyZToKPj4+
IGh0dHBzOi8vZ2l0aHViLmNvbS9qZXJuZWpzay9GRm1wZWcsIGJyYW5jaCBtYWlubGluZS10ZXN0
Cj4+PiBJdCBoYXMgdG8gYmUgY29uZmlndXJlZCB3aXRoIGF0IGxlYXN0IGZvbGxvd2luZyBvcHRp
b25zOgo+Pj4gLS1lbmFibGUtdjRsMi1yZXF1ZXN0IC0tZW5hYmxlLWxpYnVkZXYgLS1lbmFibGUt
bGliZHJtCj4+Pgo+Pj4gU2FtcGxlcyB1c2VkIGZvciB0ZXN0aW5nOgo+Pj4gaHR0cDovL2plcm5l
ai5saWJyZWVsZWMudHYvdmlkZW9zL2gyNjQvQkExX0ZUX0MubXA0Cj4+PiBodHRwOi8vamVybmVq
LmxpYnJlZWxlYy50di92aWRlb3MvaDI2NC9oMjY0Lm1wNAo+Pj4KPj4+IENvbW1hbmQgbGluZSB1
c2VkIGZvciB0ZXN0aW5nOgo+Pj4gZmZtcGVnIC1od2FjY2VsIGRybSAtaHdhY2NlbF9kZXZpY2Ug
L2Rldi9kcmkvY2FyZDAgLWkgaDI2NC5tcDQgLXBpeF9mbXQKPj4+IGJncmEgLWYgZmJkZXYgL2Rl
di9mYjAKPj4+Cj4+PiBQbGVhc2Ugbm90ZSB0aGF0IFY0TDJfREVDX0NNRF9GTFVTSCB3YXMgbm90
IHRlc3RlZCBiZWNhdXNlIEknbQo+Pj4gbm90IHN1cmUgaG93LiBmZm1wZWcgZm9sbG93cyBleGFj
dGx5IHdoaWNoIHNsaWNlIGlzIGxhc3QgaW4gZnJhbWUKPj4+IGFuZCBzZXRzIGhvbGQgZmxhZyBh
Y2NvcmRpbmdseS4gSW1wcm9wZXIgdXNhZ2Ugb2YgaG9sZCBmbGFnIHdvdWxkCj4+PiBjb3JydXB0
IGZmbXBlZyBhc3N1bXB0aW9ucyBhbmQgaXQgd291bGQgcHJvYmFibHkgY3Jhc2guIEFueSBpZGVh
cwo+Pj4gaG93IHRvIHRlc3QgdGhpcyBhcmUgd2VsY29tZSEKPj4KPj4gSXQgY2FuIGJlIHRlc3Rl
ZCBwYXJ0aWFsbHkgYXQgbGVhc3Q6IGlmIGZmbXBlZyB0ZWxscyB5b3UgaXQgaXMgdGhlIGxhc3QK
Pj4gc2xpY2UsIHRoZW4gcXVldWUgdGhlIHNsaWNlIHdpdGggdGhlIEhPTEQgZmxhZyBzZXQsIHRo
ZW4gY2FsbCBGTFVTSAo+PiBhZnRlcndhcmRzLiBUaGlzIHNob3VsZCBjbGVhciB0aGUgSE9MRCBm
bGFnIGFnYWluLiBJbiB0aGlzIGNhc2UgdGhlIHF1ZXVlZAo+PiBidWZmZXIgaXMgcHJvYmFibHkg
bm90IHlldCBwcm9jZXNzZWQsIHNvIHRoZSBmbGFnIGlzIGNsZWFyZWQgYmVmb3JlIHRoZQo+PiBk
ZWNvZGUgam9iIHN0YXJ0cy4KPj4KPj4gWW91IGNhbiBhbHNvIHRyeSB0byBhZGQgYSBzbGVlcCBi
ZWZvcmUgY2FsbGluZyBGTFVTSCB0byBzZWUgd2hhdCBoYXBwZW5zCj4+IGlmIHRoZSBsYXN0IHF1
ZXVlZCBidWZmZXIgaXMgYWxyZWFkeSBkZWNvZGVkLgo+IAo+IE9rLCBJIHRyaWVkIGZvbGxvd2lu
ZyBjb2RlOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9qZXJuZWpzay9GRm1wZWcvYmxvYi9mbHVzaF90
ZXN0L2xpYmF2Y29kZWMvCj4gdjRsMl9yZXF1ZXN0LmMjTDIyMC1MMjMzCj4gCj4gQnV0IHJlc3Vs
dHMgYXJlIG5vdCBnb29kLiBJdCBzZWVtcyB0aGF0IG91dF92YiBpbiBmbHVzaCBjb21tYW5kIGlz
IGFsd2F5cyBOVUxMIAo+IGFuZCBzbyBpdCBhbHdheXMgbWFya3MgY2FwdHVyZSBidWZmZXIgYXMg
ZG9uZSwgd2hpY2ggbGVhZHMgdG8ga2VybmVsIHdhcm5pbmdzLgo+IAo+IGRtZXNnIG91dHB1dCB3
aXRoIGRlYnVnZ2luZyBtZXNzYWdlcyBpcyBoZXJlOiBodHRwOi8vaXguaW8vMUtzOAo+IAo+IEN1
cnJlbnRseSBJJ20gbm90IHN1cmUgd2hhdCBpcyBnb2luZyBvbi4gU2hvdWxkbid0IGJlIG91dHB1
dCBidWZmZXIgcXVldWVkIGFuZCAKPiB3YWl0aW5nIHRvIE1FRElBX1JFUVVFU1RfSU9DX1FVRVVF
IHdoaWNoIGlzIGV4ZWN1dGVkIGFmdGVyIGZsdXNoIGNvbW1hbmQgYXMgaXQgCj4gY2FuIGJlIHNl
ZW4gZnJvbSBmZm1wZWcgY29kZSBsaW5rZWQgYWJvdmU/CgpBcmdoLCBJIGZvcmdvdCBhYm91dCB0
aGUgZmFjdCB0aGF0IHRoaXMgdXNlcyByZXF1ZXN0cy4KClRoZSBGTFVTSCBzaG91bGQgaGFwcGVu
ICphZnRlciogdGhlIE1FRElBX1JFUVVFU1RfSU9DX1FVRVVFIGlvY3RsLiBPdGhlcndpc2UKaXQg
aGFzIG5vIGVmZmVjdC4gQXMgbG9uZyBhcyB0aGUgcmVxdWVzdCBoYXNuJ3QgYmVlbiBxdWV1ZWQs
IHRoZSBidWZmZXIgaXMgYWxzbwpub3QgcXVldWVkIHRvIHRoZSBkcml2ZXIsIHNvIG91dF92YiB3
aWxsIGluZGVlZCBiZSBOVUxMLgoKU29ycnkgZm9yIHRoZSBjb25mdXNpb24uCgpSZWdhcmRzLAoK
CUhhbnMKCj4gCj4gQmVzdCByZWdhcmRzLAo+IEplcm5lago+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+
PiAJSGFucwo+Pgo+Pj4gVGhhbmtzIHRvIEpvbmFzIGZvciBhZGp1c3RpbmcgZmZtcGVnLgo+Pj4K
Pj4+IFBsZWFzZSBsZXQgbWUga25vdyB3aGF0IHlvdSB0aGluay4KPj4+Cj4+PiBCZXN0IHJlZ2Fy
ZHMsCj4+PiBKZXJuZWoKPj4+Cj4+PiBDaGFuZ2VzIGZyb20gdjE6Cj4+PiAtIGFkZGVkIFJiIHRh
Z3MKPj4+IC0gdXBkYXRlZCBWNEwyX0RFQ19DTURfRkxVU0ggZG9jdW1lbnRhdGlvbgo+Pj4gLSB1
cGRhdGVkIGZpcnN0IHNsaWNlIGRldGVjdGlvbiBpbiBDZWRydXMKPj4+IC0gaG9sZCBjYXB0dXJl
IGJ1ZmZlciBmbGFnIGlzIHNldCBhY2NvcmRpbmcgdG8gc291cmNlIGZvcm1hdAo+Pj4gLSBhZGRl
ZCB2NGwgbTJtIHN0YXRlbGVzc18odHJ5XylkZWNvZGVyX2NtZCBpb2N0bCBoZWxwZXJzCj4+Pgo+
Pj4gSGFucyBWZXJrdWlsICgyKToKPj4+ICAgdmIyOiBhZGQgVjRMMl9CVUZfRkxBR19NMk1fSE9M
RF9DQVBUVVJFX0JVRgo+Pj4gICB2aWRlb2RldjIuaDogYWRkIFY0TDJfREVDX0NNRF9GTFVTSAo+
Pj4KPj4+IEplcm5laiBTa3JhYmVjICg0KToKPj4+ICAgbWVkaWE6IHY0bDItbWVtMm1lbTogYWRk
IHN0YXRlbGVzc18odHJ5XylkZWNvZGVyX2NtZCBpb2N0bCBoZWxwZXJzCj4+PiAgIG1lZGlhOiBj
ZWRydXM6IERldGVjdCBmaXJzdCBzbGljZSBvZiBhIGZyYW1lCj4+PiAgIG1lZGlhOiBjZWRydXM6
IGgyNjQ6IFN1cHBvcnQgbXVsdGlwbGUgc2xpY2VzIHBlciBmcmFtZQo+Pj4gICBtZWRpYTogY2Vk
cnVzOiBBZGQgc3VwcG9ydCBmb3IgaG9sZGluZyBjYXB0dXJlIGJ1ZmZlcgo+Pj4gIAo+Pj4gIERv
Y3VtZW50YXRpb24vbWVkaWEvdWFwaS92NGwvYnVmZmVyLnJzdCAgICAgICB8IDEzICsrKysrKwo+
Pj4gIC4uLi9tZWRpYS91YXBpL3Y0bC92aWRpb2MtZGVjb2Rlci1jbWQucnN0ICAgICB8IDEwICsr
Ky0KPj4+ICAuLi4vbWVkaWEvdWFwaS92NGwvdmlkaW9jLXJlcWJ1ZnMucnN0ICAgICAgICAgfCAg
NiArKysKPj4+ICAuLi4vbWVkaWEvdmlkZW9kZXYyLmgucnN0LmV4Y2VwdGlvbnMgICAgICAgICAg
fCAgMSArCj4+PiAgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXY0bDIuYyAg
IHwgIDggKysrLQo+Pj4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItbWVtMm1lbS5jICAg
ICAgICB8IDM1ICsrKysrKysrKysrKysrCj4+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhp
L2NlZHJ1cy9jZWRydXMuaCAgIHwgIDEgKwo+Pj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2Nl
ZHJ1cy9jZWRydXNfZGVjLmMgICB8IDExICsrKysrCj4+PiAgLi4uL3N0YWdpbmcvbWVkaWEvc3Vu
eGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMgIHwgMTEgKysrKy0KPj4+ICAuLi4vc3RhZ2luZy9tZWRp
YS9zdW54aS9jZWRydXMvY2VkcnVzX2h3LmMgICAgfCAgOCArKy0tCj4+PiAgLi4uL3N0YWdpbmcv
bWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c192aWRlby5jIHwgMTQgKysrKysrCj4+PiAgaW5jbHVk
ZS9tZWRpYS92NGwyLW1lbTJtZW0uaCAgICAgICAgICAgICAgICAgIHwgNDYgKysrKysrKysrKysr
KysrKysrKwo+Pj4gIGluY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaCAgICAgICAgICAgICAg
ICB8ICAzICsrCj4+PiAgaW5jbHVkZS9tZWRpYS92aWRlb2J1ZjItdjRsMi5oICAgICAgICAgICAg
ICAgIHwgIDUgKysKPj4+ICBpbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggICAgICAgICAg
ICAgICAgfCAxNCArKysrLS0KPj4+ICAxNSBmaWxlcyBjaGFuZ2VkLCAxNzUgaW5zZXJ0aW9ucygr
KSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
