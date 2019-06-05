Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 479A036709
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 23:52:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0EA6320488;
	Wed,  5 Jun 2019 21:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id arC1MzWPSmgc; Wed,  5 Jun 2019 21:52:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CC3BF20475;
	Wed,  5 Jun 2019 21:52:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 659EF1BF422
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:52:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 630CC88012
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dhPPNQ2EnVzC for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 21:52:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs49.siol.net [185.57.226.240])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 75B1D8800F
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 21:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 970E952208F;
 Wed,  5 Jun 2019 23:52:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 3s15YwTEOaZU; Wed,  5 Jun 2019 23:52:33 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1DAE05220CF;
 Wed,  5 Jun 2019 23:52:33 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id D6D3F52208F;
 Wed,  5 Jun 2019 23:52:30 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 6/7] media: cedrus: Add infra for extra buffers connected
 to capture buffers
Date: Wed, 05 Jun 2019 23:52:30 +0200
Message-ID: <7799592.17q1oAZbP1@jernej-laptop>
In-Reply-To: <e45ea296476b2966a3800552dae259d7117a7751.camel@bootlin.com>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <3029072.frl2UAsRGt@jernej-laptop>
 <e45ea296476b2966a3800552dae259d7117a7751.camel@bootlin.com>
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
Cc: devel@driverdev.osuosl.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG5lIHNyZWRhLCAwNS4ganVuaWogMjAxOSBvYiAyMzoxMDoxNyBDRVNUIGplIFBhdWwgS29jaWFs
a293c2tpIG5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gTGUgbHVuZGkgMDMganVpbiAyMDE5IMOgIDE3
OjQ4ICswMjAwLCBKZXJuZWogxaBrcmFiZWMgYSDDqWNyaXQgOgo+ID4gRG5lIHBvbmVkZWxqZWss
IDAzLiBqdW5paiAyMDE5IG9iIDE0OjE4OjU5IENFU1QgamUgTWF4aW1lIFJpcGFyZCAKbmFwaXNh
bChhKToKPiA+ID4gSGksCj4gPiA+IAo+ID4gPiBPbiBUaHUsIE1heSAzMCwgMjAxOSBhdCAxMTox
NToxNVBNICswMjAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+ID4gPiBIMjY0IGFuZCBIRVZD
IGVuZ2luZXMgbmVlZCBhZGRpdGlvbmFsIGJ1ZmZlcnMgZm9yIGVhY2ggY2FwdHVyZSBidWZmZXIu
Cj4gPiA+ID4gSDI2NCBlbmdpbmUgaGFzIHRoaXMgY3VycmVudGx5IHNvbHZlZCBieSBhbGxvY2F0
aW5nIGZpeGVkIHNpemUgcG9vbCwKPiA+ID4gPiB3aGljaCBpcyBub3QgaWRlYWwuIE1vc3Qgb2Yg
dGhlIHRpbWUgcG9vbCBzaXplIGlzIG11Y2ggYmlnZ2VyIHRoYW4gaXQKPiA+ID4gPiBuZWVkcyB0
byBiZS4KPiA+ID4gPiAKPiA+ID4gPiBJZGVhbGx5LCBleHRyYSBidWZmZXIgc2hvdWxkIGJlIGFs
bG9jYXRlZCBhdCBidWZmZXIgaW5pdGlhbGl6YXRpb24sCj4gPiA+ID4gYnV0Cj4gPiA+ID4gdGhh
dCdzIG5vdCBlZmZpY2llbnQuIEl0J3Mgc2l6ZSBpbiBIMjY0IGRlcGVuZHMgb24gZmxhZ3Mgc2V0
IGluIFNQUywKPiA+ID4gPiBidXQKPiA+ID4gPiB0aGF0IGluZm9ybWF0aW9uIGlzIG5vdCBhdmFp
bGFibGUgaW4gYnVmZmVyIGluaXQgY2FsbGJhY2suCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPiA+IC0t
LQo+ID4gPiA+IAo+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2Nl
ZHJ1cy5oICAgfCAgNCArKysrCj4gPiA+ID4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1
cy9jZWRydXNfdmlkZW8uYyB8IDE5Cj4gPiA+ID4gICsrKysrKysrKysrKysrKysrKysKPiA+ID4g
PiAgMiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspCj4gPiA+ID4gCj4gPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmgKPiA+
ID4gPiBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmggaW5kZXgK
PiA+ID4gPiBkOGU2Nzc3ZTVlMjcuLjE2YzFiZGZkMjQzYSAxMDA2NDQKPiA+ID4gPiAtLS0gYS9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5oCj4gPiA+ID4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuaAo+ID4gPiA+IEBAIC04
MSw2ICs4MSwxMCBAQCBzdHJ1Y3QgY2VkcnVzX3J1biB7Cj4gPiA+ID4gCj4gPiA+ID4gIHN0cnVj
dCBjZWRydXNfYnVmZmVyIHsKPiA+ID4gPiAgCj4gPiA+ID4gIAlzdHJ1Y3QgdjRsMl9tMm1fYnVm
ZmVyICAgICAgICAgIG0ybV9idWY7Cj4gPiA+ID4gCj4gPiA+ID4gKwl2b2lkCQkqZXh0cmFfYnVm
Owo+ID4gPiA+ICsJZG1hX2FkZHJfdAlleHRyYV9idWZfZG1hOwo+ID4gPiA+ICsJc3NpemVfdAkJ
ZXh0cmFfYnVmX3NpemU7Cj4gPiA+ID4gKwo+ID4gPiA+IAo+ID4gPiA+ICAJdW5pb24gewo+ID4g
PiA+ICAJCj4gPiA+ID4gIAkJc3RydWN0IHsKPiA+ID4gPiAgCQkKPiA+ID4gPiAgCQkJdW5zaWdu
ZWQgaW50CQkJcG9zaXRpb247Cj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKPiA+ID4gPiBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMgaW5kZXgKPiA+ID4g
PiA2ODFkZmUzMzY3YTYuLmQ3NTZlMGU2OTYzNCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c192aWRlby5jCj4gPiA+ID4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8uYwo+ID4gPiA+
IEBAIC00MTEsNiArNDExLDI0IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19xdWV1ZV9jbGVhbnVwKHN0
cnVjdCB2YjJfcXVldWUKPiA+ID4gPiAqdnEsIHUzMiBzdGF0ZSk+Cj4gPiA+ID4gCj4gPiA+ID4g
IAl9Cj4gPiA+ID4gIAo+ID4gPiA+ICB9Cj4gPiA+ID4gCj4gPiA+ID4gK3N0YXRpYyB2b2lkIGNl
ZHJ1c19idWZfY2xlYW51cChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gPiA+ID4gK3sKPiA+ID4g
PiArCXN0cnVjdCB2YjJfcXVldWUgKnZxID0gdmItPnZiMl9xdWV1ZTsKPiA+ID4gPiArCj4gPiA+
ID4gKwlpZiAoIVY0TDJfVFlQRV9JU19PVVRQVVQodnEtPnR5cGUpKSB7Cj4gPiA+ID4gKwkJc3Ry
dWN0IGNlZHJ1c19jdHggKmN0eCA9IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+ID4gPiA+ICsJCXN0
cnVjdCBjZWRydXNfYnVmZmVyICpjZWRydXNfYnVmOwo+ID4gPiA+ICsKPiA+ID4gPiArCQljZWRy
dXNfYnVmID0gdmIyX3RvX2NlZHJ1c19idWZmZXIodnEtPmJ1ZnNbdmItPmluZGV4XSk7Cj4gPiA+
ID4gKwo+ID4gPiA+ICsJCWlmIChjZWRydXNfYnVmLT5leHRyYV9idWZfc2l6ZSkKPiA+ID4gPiAr
CQkJZG1hX2ZyZWVfY29oZXJlbnQoY3R4LT5kZXYtPmRldiwKPiA+ID4gPiArCQkJCQkgIGNlZHJ1
c19idWYtCj4gPiA+IAo+ID4gPiBleHRyYV9idWZfc2l6ZSwKPiA+ID4gCj4gPiA+ID4gKwkJCQkJ
ICBjZWRydXNfYnVmLQo+ID4gPiAKPiA+ID4gZXh0cmFfYnVmLAo+ID4gPiAKPiA+ID4gPiArCQkJ
CQkgIGNlZHJ1c19idWYtCj4gPiA+IAo+ID4gPiBleHRyYV9idWZfZG1hKTsKPiA+ID4gCj4gPiA+
ID4gKwl9Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4gPiA+IAo+ID4gPiBJJ20gcmVhbGx5IG5vdCBh
IGZhbiBvZiBhbGxvY2F0aW5nIHNvbWV0aGluZyBzb21ld2hlcmUsIGFuZCBmcmVlaW5nIGl0Cj4g
PiA+IHNvbWV3aGVyZSBlbHNlLiBNYWtpbmcgc3VyZSB5b3UgZG9uJ3QgbGVhayBzb21ldGhpbmcg
aXMgaGFyZCBlbm91Z2ggdG8KPiA+ID4gbm90IGhhdmUgc29tZSBub24tdHJpdmlhbCBhbGxvY2F0
aW9uIHNjaGVtZS4KPiA+IAo+ID4gT2ssIHdoYXQgYWJvdXQgaW50cm9kdWNpbmcgdHdvIG5ldyBv
cHRpb25hbCBtZXRob2RzIGluIGVuZ2luZSBjYWxsYmFja3MsCj4gPiBidWZmZXJfaW5pdCBhbmQg
YnVmZmVyX2Rlc3Ryb3ksIHdoaWNoIHdvdWxkIGJlIGNhbGxlZCBmcm9tCj4gPiBjZWRydXNfYnVm
X2luaXQoKSBhbmQgY2VkcnVzX2J1Zl9jbGVhbnVwKCksIHJlc3BlY3RpdmVseS4gVGhhdCB3YXkg
YWxsCj4gPiAoZGUpYWxsb2NhdGlvbiBsb2dpYyBzdGF5cyB3aXRoaW4gdGhlIHNhbWUgZW5naW5l
Lgo+IAo+IEknbSB0aGlua2luZyB0aGF0IHdlIHNob3VsZCBoYXZlIHY0bDItZnJhbWV3b3JrLWxl
dmVsIHBlci1jb2RlYyBoZWxwZXJzCj4gdG8gcHJvdmlkZSBvcHMgZm9yIHRoZXNlIGtpbmRzIG9m
IHRoaW5ncywgc2luY2UgdGhleSB0ZW5kIGJlIHF1aXRlCj4gY29tbW9uIGFjcm9zcyBkZWNvZGVy
cy4KCklzbid0IC5idWZfaW5pdCBhbmQgLmJ1Zl9jbGVhbnVwIGNhbGxiYWNrcyBwcm92aWRlZCBi
eSBzdHJ1Y3QgdmIyX29wcyBtZWFudCAKZm9yIGV4YWN0bHkgdGhhdD8KClJlbGF0ZWQsIGJ1dCBk
aWZmZXJlbnQgdG9waWMuIEkgbWFuYWdlZCB0byBmaXggMTAtYml0IEhFVkMgc3VwcG9ydCBvbiBI
NiwgYnV0IAp3aGVuIHdvcmtpbmcgaW4gOC1iaXQgbW9kZSwgY2FwdHVyZSBidWZmZXJzIGhhdmUg
dG8gYmUgYmlnIGVub3VnaCB0byBob2xkIApub3JtYWwgTlYxMiBkZWNvZGVkIGltYWdlIHBsdXMg
ZXh0cmEgYnVmZmVyIGZvciAyIGJpdHMgb2YgZWFjaCBwaXhlbC4gVlBVIAphY2NlcHRzIG9ubHkg
b2Zmc2V0IGZyb20gZGVzdGluYXRpb24gYnVmZmVyIGZvciB0aGlzIGV4dHJhIGJ1ZmZlciBpbnN0
ZWFkIG9mIGZ1bGwgCmFkZHJlc3MuIEhvdyB3ZSB3aWxsIGhhbmRsZSB0aGF0PyBPdmVycmlkZSBz
aXplaW1hZ2Ugd2hlbiBhbGxvY2F0aW5nPyBCdXQgCnRoZXJlIHdlIGRvbid0IGhhdmUgaW5mb3Jt
YXRpb24gaWYgaXQncyAxMC1iaXQgdmlkZW8gb3Igbm90LiBBcyB5b3UgY2FuIHNlZSwgCkknbSBu
b3QgYSBmYW4gb2Ygb3ZlcmFsbG9jYXRpbmcuCgpJIHN1c3BlY3Qgd2Ugd2lsbCBoYXZlIGV2ZW4g
YmlnZ2VyIGlzc3VlcyB3aGVuIGRlY29kaW5nIDEwLWJpdCBIRVZDIHZpZGVvIGluIApQMDEwIGZv
cm1hdCwgd2hpY2ggaXMgdGhlIG9ubHkgMTAtYml0IFlVViBmb3JtYXQgdXNlYWJsZSBieSBEUk0g
ZHJpdmVyIChub3QgCmltcGxlbWVudGVkIHlldCkuIEZyb20gd2hhdCBJIGtub3cgdGlsbCBub3cs
IFZQVSBuZWVkcyBhZm9yZW1lbnRpb25lZCA4LWJpdCsyLQpiaXQgYnVmZmVycyAoZm9yIGRlY29k
aW5nKSBhbmQgYW5vdGhlciBvbmUgaW4gd2hpY2ggaXQgcmVhcnJhbmdlcyBzYW1wbGVzIGluIApQ
MDEwIGZvcm1hdC4gQnV0IHRoYXQgaGFzIHRvIGJlIGNvbmZpcm1lZCBmaXJzdC4KCkJlc3QgcmVn
YXJkcywKSmVybmVqCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
