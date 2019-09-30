Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 048D5C2A1B
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 00:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F790868DE;
	Mon, 30 Sep 2019 22:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FNP2O8P8BJqU; Mon, 30 Sep 2019 22:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB3A586932;
	Mon, 30 Sep 2019 22:58:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0395E1BF2B9
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 22:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 002E6876EB
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 22:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GkYENXpRZ4eI for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 22:58:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs42.siol.net [185.57.226.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7792E876EF
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 22:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id E103A522E4B;
 Tue,  1 Oct 2019 00:58:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id U70U11j2XR3J; Tue,  1 Oct 2019 00:58:36 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 469CF522EAA;
 Tue,  1 Oct 2019 00:58:36 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 7E54B522E4B;
 Tue,  1 Oct 2019 00:58:35 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
Date: Tue, 01 Oct 2019 00:58:35 +0200
Message-ID: <11665334.4LxpHo8hza@jernej-laptop>
In-Reply-To: <eb127b9a-e226-d230-67b5-069795bd76fb@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <4342181.Ehiz7mZe5m@jernej-laptop>
 <eb127b9a-e226-d230-67b5-069795bd76fb@xs4all.nl>
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

RG5lIHRvcmVrLCAwMS4gb2t0b2JlciAyMDE5IG9iIDAwOjQzOjM0IENFU1QgamUgSGFucyBWZXJr
dWlsIG5hcGlzYWwoYSk6Cj4gT24gMTAvMS8xOSAxMjoyNyBBTSwgSmVybmVqIMWga3JhYmVjIHdy
b3RlOgo+ID4gRG5lIHBvbmVkZWxqZWssIDMwLiBzZXB0ZW1iZXIgMjAxOSBvYiAxMDoxMDo0OCBD
RVNUIGplIEhhbnMgVmVya3VpbAo+ID4gCj4gPiBuYXBpc2FsKGEpOgo+ID4+IE9uIDkvMjkvMTkg
MTA6MDAgUE0sIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+ID4+PiBUaGlzIHNlcmllcyBhZGRzIHN1
cHBvcnQgZm9yIGRlY29kaW5nIG11bHRpLXNsaWNlIEgyNjQgZnJhbWVzIGFsb25nIHdpdGgKPiA+
Pj4gc3VwcG9ydCBmb3IgVjRMMl9ERUNfQ01EX0ZMVVNIIGFuZCBWNEwyX0JVRl9GTEFHX00yTV9I
T0xEX0NBUFRVUkVfQlVGLgo+ID4+PiAKPiA+Pj4gQ29kZSB3YXMgdGVzdGVkIGJ5IG1vZGlmaWVk
IGZmbXBlZywgd2hpY2ggY2FuIGJlIGZvdW5kIGhlcmU6Cj4gPj4+IGh0dHBzOi8vZ2l0aHViLmNv
bS9qZXJuZWpzay9GRm1wZWcsIGJyYW5jaCBtYWlubGluZS10ZXN0Cj4gPj4+IEl0IGhhcyB0byBi
ZSBjb25maWd1cmVkIHdpdGggYXQgbGVhc3QgZm9sbG93aW5nIG9wdGlvbnM6Cj4gPj4+IC0tZW5h
YmxlLXY0bDItcmVxdWVzdCAtLWVuYWJsZS1saWJ1ZGV2IC0tZW5hYmxlLWxpYmRybQo+ID4+PiAK
PiA+Pj4gU2FtcGxlcyB1c2VkIGZvciB0ZXN0aW5nOgo+ID4+PiBodHRwOi8vamVybmVqLmxpYnJl
ZWxlYy50di92aWRlb3MvaDI2NC9CQTFfRlRfQy5tcDQKPiA+Pj4gaHR0cDovL2plcm5lai5saWJy
ZWVsZWMudHYvdmlkZW9zL2gyNjQvaDI2NC5tcDQKPiA+Pj4gCj4gPj4+IENvbW1hbmQgbGluZSB1
c2VkIGZvciB0ZXN0aW5nOgo+ID4+PiBmZm1wZWcgLWh3YWNjZWwgZHJtIC1od2FjY2VsX2Rldmlj
ZSAvZGV2L2RyaS9jYXJkMCAtaSBoMjY0Lm1wNCAtcGl4X2ZtdAo+ID4+PiBiZ3JhIC1mIGZiZGV2
IC9kZXYvZmIwCj4gPj4+IAo+ID4+PiBQbGVhc2Ugbm90ZSB0aGF0IFY0TDJfREVDX0NNRF9GTFVT
SCB3YXMgbm90IHRlc3RlZCBiZWNhdXNlIEknbQo+ID4+PiBub3Qgc3VyZSBob3cuIGZmbXBlZyBm
b2xsb3dzIGV4YWN0bHkgd2hpY2ggc2xpY2UgaXMgbGFzdCBpbiBmcmFtZQo+ID4+PiBhbmQgc2V0
cyBob2xkIGZsYWcgYWNjb3JkaW5nbHkuIEltcHJvcGVyIHVzYWdlIG9mIGhvbGQgZmxhZyB3b3Vs
ZAo+ID4+PiBjb3JydXB0IGZmbXBlZyBhc3N1bXB0aW9ucyBhbmQgaXQgd291bGQgcHJvYmFibHkg
Y3Jhc2guIEFueSBpZGVhcwo+ID4+PiBob3cgdG8gdGVzdCB0aGlzIGFyZSB3ZWxjb21lIQo+ID4+
IAo+ID4+IEl0IGNhbiBiZSB0ZXN0ZWQgcGFydGlhbGx5IGF0IGxlYXN0OiBpZiBmZm1wZWcgdGVs
bHMgeW91IGl0IGlzIHRoZSBsYXN0Cj4gPj4gc2xpY2UsIHRoZW4gcXVldWUgdGhlIHNsaWNlIHdp
dGggdGhlIEhPTEQgZmxhZyBzZXQsIHRoZW4gY2FsbCBGTFVTSAo+ID4+IGFmdGVyd2FyZHMuIFRo
aXMgc2hvdWxkIGNsZWFyIHRoZSBIT0xEIGZsYWcgYWdhaW4uIEluIHRoaXMgY2FzZSB0aGUKPiA+
PiBxdWV1ZWQKPiA+PiBidWZmZXIgaXMgcHJvYmFibHkgbm90IHlldCBwcm9jZXNzZWQsIHNvIHRo
ZSBmbGFnIGlzIGNsZWFyZWQgYmVmb3JlIHRoZQo+ID4+IGRlY29kZSBqb2Igc3RhcnRzLgo+ID4+
IAo+ID4+IFlvdSBjYW4gYWxzbyB0cnkgdG8gYWRkIGEgc2xlZXAgYmVmb3JlIGNhbGxpbmcgRkxV
U0ggdG8gc2VlIHdoYXQgaGFwcGVucwo+ID4+IGlmIHRoZSBsYXN0IHF1ZXVlZCBidWZmZXIgaXMg
YWxyZWFkeSBkZWNvZGVkLgo+ID4gCj4gPiBPaywgSSB0cmllZCBmb2xsb3dpbmcgY29kZToKPiA+
IGh0dHBzOi8vZ2l0aHViLmNvbS9qZXJuZWpzay9GRm1wZWcvYmxvYi9mbHVzaF90ZXN0L2xpYmF2
Y29kZWMvCj4gPiB2NGwyX3JlcXVlc3QuYyNMMjIwLUwyMzMKPiA+IAo+ID4gQnV0IHJlc3VsdHMg
YXJlIG5vdCBnb29kLiBJdCBzZWVtcyB0aGF0IG91dF92YiBpbiBmbHVzaCBjb21tYW5kIGlzIGFs
d2F5cwo+ID4gTlVMTCBhbmQgc28gaXQgYWx3YXlzIG1hcmtzIGNhcHR1cmUgYnVmZmVyIGFzIGRv
bmUsIHdoaWNoIGxlYWRzIHRvIGtlcm5lbAo+ID4gd2FybmluZ3MuCj4gPiAKPiA+IGRtZXNnIG91
dHB1dCB3aXRoIGRlYnVnZ2luZyBtZXNzYWdlcyBpcyBoZXJlOiBodHRwOi8vaXguaW8vMUtzOAo+
ID4gCj4gPiBDdXJyZW50bHkgSSdtIG5vdCBzdXJlIHdoYXQgaXMgZ29pbmcgb24uIFNob3VsZG4n
dCBiZSBvdXRwdXQgYnVmZmVyIHF1ZXVlZAo+ID4gYW5kIHdhaXRpbmcgdG8gTUVESUFfUkVRVUVT
VF9JT0NfUVVFVUUgd2hpY2ggaXMgZXhlY3V0ZWQgYWZ0ZXIgZmx1c2gKPiA+IGNvbW1hbmQgYXMg
aXQgY2FuIGJlIHNlZW4gZnJvbSBmZm1wZWcgY29kZSBsaW5rZWQgYWJvdmU/Cj4gCj4gQXJnaCwg
SSBmb3Jnb3QgYWJvdXQgdGhlIGZhY3QgdGhhdCB0aGlzIHVzZXMgcmVxdWVzdHMuCj4gCj4gVGhl
IEZMVVNIIHNob3VsZCBoYXBwZW4gKmFmdGVyKiB0aGUgTUVESUFfUkVRVUVTVF9JT0NfUVVFVUUg
aW9jdGwuIE90aGVyd2lzZQo+IGl0IGhhcyBubyBlZmZlY3QuIEFzIGxvbmcgYXMgdGhlIHJlcXVl
c3QgaGFzbid0IGJlZW4gcXVldWVkLCB0aGUgYnVmZmVyIGlzCj4gYWxzbyBub3QgcXVldWVkIHRv
IHRoZSBkcml2ZXIsIHNvIG91dF92YiB3aWxsIGluZGVlZCBiZSBOVUxMLgoKV2VsbCwgZmx1c2gg
Y21kIGhhcyBlZmZlY3QgaWYgaXQgaXMgY2FsbGVkIGJlZm9yZSBNRURJQV9SRVFVRVNUX0lPQ19R
VUVVRSBpb2N0bCAKYXMgaXQgY2FuIGJlIHNlZW4gZnJvbSBsaW5rZWQgZG1lc2cgb3V0cHV0LiBJ
IGd1ZXNzIHRoZXJlIGlzIG5vdGhpbmcgdGhhdCB3ZSAKY2FuIGRvIHRvIHByZXZlbnQgd3Jvbmcg
dXNhZ2U/CgpCVFcsIGlmIGNhcHR1cmUgYnVmZmVyIGlzIG1hcmtlZCBhcyBkb25lLCBzaG91bGRu
J3QgYmUgYWxzbyByZW1vdmVkIGZyb20gdGhlIApxdWV1ZT8KCkJlc3QgcmVnYXJkcywKSmVybmVq
Cgo+IAo+IFNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLgo+IAo+IFJlZ2FyZHMsCj4gCj4gCUhhbnMK
PiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IEplcm5lago+ID4gCj4gPj4gUmVnYXJkcywKPiA+PiAK
PiA+PiAJSGFucwo+ID4+IAkKPiA+Pj4gVGhhbmtzIHRvIEpvbmFzIGZvciBhZGp1c3RpbmcgZmZt
cGVnLgo+ID4+PiAKPiA+Pj4gUGxlYXNlIGxldCBtZSBrbm93IHdoYXQgeW91IHRoaW5rLgo+ID4+
PiAKPiA+Pj4gQmVzdCByZWdhcmRzLAo+ID4+PiBKZXJuZWoKPiA+Pj4gCj4gPj4+IENoYW5nZXMg
ZnJvbSB2MToKPiA+Pj4gLSBhZGRlZCBSYiB0YWdzCj4gPj4+IC0gdXBkYXRlZCBWNEwyX0RFQ19D
TURfRkxVU0ggZG9jdW1lbnRhdGlvbgo+ID4+PiAtIHVwZGF0ZWQgZmlyc3Qgc2xpY2UgZGV0ZWN0
aW9uIGluIENlZHJ1cwo+ID4+PiAtIGhvbGQgY2FwdHVyZSBidWZmZXIgZmxhZyBpcyBzZXQgYWNj
b3JkaW5nIHRvIHNvdXJjZSBmb3JtYXQKPiA+Pj4gLSBhZGRlZCB2NGwgbTJtIHN0YXRlbGVzc18o
dHJ5XylkZWNvZGVyX2NtZCBpb2N0bCBoZWxwZXJzCj4gPj4+IAo+ID4+PiBIYW5zIFZlcmt1aWwg
KDIpOgo+ID4+PiAgIHZiMjogYWRkIFY0TDJfQlVGX0ZMQUdfTTJNX0hPTERfQ0FQVFVSRV9CVUYK
PiA+Pj4gICB2aWRlb2RldjIuaDogYWRkIFY0TDJfREVDX0NNRF9GTFVTSAo+ID4+PiAKPiA+Pj4g
SmVybmVqIFNrcmFiZWMgKDQpOgo+ID4+PiAgIG1lZGlhOiB2NGwyLW1lbTJtZW06IGFkZCBzdGF0
ZWxlc3NfKHRyeV8pZGVjb2Rlcl9jbWQgaW9jdGwgaGVscGVycwo+ID4+PiAgIG1lZGlhOiBjZWRy
dXM6IERldGVjdCBmaXJzdCBzbGljZSBvZiBhIGZyYW1lCj4gPj4+ICAgbWVkaWE6IGNlZHJ1czog
aDI2NDogU3VwcG9ydCBtdWx0aXBsZSBzbGljZXMgcGVyIGZyYW1lCj4gPj4+ICAgbWVkaWE6IGNl
ZHJ1czogQWRkIHN1cHBvcnQgZm9yIGhvbGRpbmcgY2FwdHVyZSBidWZmZXIKPiA+Pj4gIAo+ID4+
PiAgRG9jdW1lbnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9idWZmZXIucnN0ICAgICAgIHwgMTMgKysr
KysrCj4gPj4+ICAuLi4vbWVkaWEvdWFwaS92NGwvdmlkaW9jLWRlY29kZXItY21kLnJzdCAgICAg
fCAxMCArKystCj4gPj4+ICAuLi4vbWVkaWEvdWFwaS92NGwvdmlkaW9jLXJlcWJ1ZnMucnN0ICAg
ICAgICAgfCAgNiArKysKPiA+Pj4gIC4uLi9tZWRpYS92aWRlb2RldjIuaC5yc3QuZXhjZXB0aW9u
cyAgICAgICAgICB8ICAxICsKPiA+Pj4gIC4uLi9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVv
YnVmMi12NGwyLmMgICB8ICA4ICsrKy0KPiA+Pj4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0
bDItbWVtMm1lbS5jICAgICAgICB8IDM1ICsrKysrKysrKysrKysrCj4gPj4+ICBkcml2ZXJzL3N0
YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5oICAgfCAgMSArCj4gPj4+ICAuLi4vc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2RlYy5jICAgfCAxMSArKysrKwo+ID4+PiAg
Li4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMgIHwgMTEgKysrKy0K
PiA+Pj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaHcuYyAgICB8ICA4
ICsrLS0KPiA+Pj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8u
YyB8IDE0ICsrKysrKwo+ID4+PiAgaW5jbHVkZS9tZWRpYS92NGwyLW1lbTJtZW0uaCAgICAgICAg
ICAgICAgICAgIHwgNDYgKysrKysrKysrKysrKysrKysrKwo+ID4+PiAgaW5jbHVkZS9tZWRpYS92
aWRlb2J1ZjItY29yZS5oICAgICAgICAgICAgICAgIHwgIDMgKysKPiA+Pj4gIGluY2x1ZGUvbWVk
aWEvdmlkZW9idWYyLXY0bDIuaCAgICAgICAgICAgICAgICB8ICA1ICsrCj4gPj4+ICBpbmNsdWRl
L3VhcGkvbGludXgvdmlkZW9kZXYyLmggICAgICAgICAgICAgICAgfCAxNCArKysrLS0KPiA+Pj4g
IDE1IGZpbGVzIGNoYW5nZWQsIDE3NSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
