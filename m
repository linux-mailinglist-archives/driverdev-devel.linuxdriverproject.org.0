Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537AEC97DA
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 07:16:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D35688154;
	Thu,  3 Oct 2019 05:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u4kWOPhovtr9; Thu,  3 Oct 2019 05:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD65588081;
	Thu,  3 Oct 2019 05:16:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 279521BF9C7
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 05:16:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2453F84491
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 05:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DHPCKaLBvDX1 for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 05:16:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs63.siol.net [185.57.226.254])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0CD73864D0
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 05:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 2941F520E78;
 Thu,  3 Oct 2019 07:16:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id uo2TMQr76LRD; Thu,  3 Oct 2019 07:16:10 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C1F2D521B43;
 Thu,  3 Oct 2019 07:16:10 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 35AA5521111;
 Thu,  3 Oct 2019 07:16:10 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index
 count
Date: Thu, 03 Oct 2019 07:16:09 +0200
Message-ID: <12199603.8LrTjBMqpV@jernej-laptop>
In-Reply-To: <20191002220650.GB24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002193553.1633467-3-jernej.skrabec@siol.net>
 <20191002220650.GB24151@aptenodytes>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG5lIMSNZXRydGVrLCAwMy4gb2t0b2JlciAyMDE5IG9iIDAwOjA2OjUwIENFU1QgamUgUGF1bCBL
b2NpYWxrb3dza2kgCm5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gT24gV2VkIDAyIE9jdCAxOSwgMjE6
MzUsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+ID4gUmVmZXJlbmNlIGluZGV4IGNvdW50IGluIFZF
X0gyNjRfUFBTIHNob3VsZCBjb21lIGZyb20gUFBTIGNvbnRyb2wuCj4gPiBIb3dldmVyLCB0aGlz
IGlzIG5vdCByZWFsbHkgaW1wb3J0YW50LCBiZWNhdXNlIHJlZmVyZW5jZSBpbmRleCBjb3VudCBp
cwo+ID4gaW4gb3VyIGNhc2UgYWx3YXlzIG92ZXJyaWRkZW4gYnkgdGhhdCBmcm9tIHNsaWNlIGhl
YWRlci4KPiAKPiBUaGFua3MgZm9yIHRoZSBmaXh1cCEKPiAKPiBPdXIgbGlidmEgdXNlcnNwYWNl
IGFuZCB2NGwyLXJlcXVlc3QgdGVzdGluZyB0b29sIGN1cnJlbnRseSBkb24ndCBwcm92aWRlCj4g
dGhpcywgYnV0IEkgaGF2ZSBhIHBlbmRpbmcgbWVyZ2UgcmVxdWVzdCBhZGRpbmcgaXQgZm9yIHRo
ZSBoYW50cm8gc28gaXQncwo+IGdvb2QgdG8gZ28uCgpBY3R1YWxseSwgSSB0aGluayB0aGlzIGlz
IGp1c3QgY29zbWV0aWMgYW5kIGl0IHdvdWxkIHdvcmsgZXZlbiBpZiBpdCB3b3VsZCBiZSAKYWx3
YXlzIDAuIFdlIGFsd2F5cyBvdmVycmlkZSB0aGlzIG51bWJlciBpbiBTSFMyIHJlZ2lzdGVyIHdp
dGggClZFX0gyNjRfU0hTMl9OVU1fUkVGX0lEWF9BQ1RJVkVfT1ZSRCBmbGFnIGFuZCByZWNlbnRs
eSB0aGVyZSB3YXMgYSBwYXRjaCBtZXJnZWQgCnRvIGNsYXJpZnkgdGhhdCB2YWx1ZSBpbiBzbGlj
ZSBwYXJhbWV0ZXJzIHNob3VsZCBiZSB0aGUgb25lIHRoYXQncyBzZXQgb24gCmRlZmF1bHQgdmFs
dWUgaWYgb3ZlcnJpZGUgZmxhZyBpcyBub3Qgc2V0IGluIGJpdHN0cmVhbToKaHR0cHM6Ly9naXQu
bGludXh0di5vcmcvbWVkaWFfdHJlZS5naXQvY29tbWl0Lz8KaWQ9MTg3ZWY3YzVjNzgxNTNhY2Rj
ZThjODcxNGU1OTE4YjEwMThjNzEwYgoKV2VsbCwgd2UgY291bGQgYWx3YXlzIGNvbXBhcmUgZGVm
YXVsdCBhbmQgdmFsdWUgaW4gc2xpY2UgcGFyYW1ldGVycywgYnV0IEkgCnJlYWxseSBkb24ndCBz
ZWUgdGhlIGJlbmVmaXQgb2YgZG9pbmcgdGhhdCBleHRyYSB3b3JrLgoKQmVzdCByZWdhcmRzLApK
ZXJuZWoKCj4gCj4gQWNrZWQtYnk6IFBhdWwgS29jaWFsa293c2tpIDxwYXVsLmtvY2lhbGtvd3Nr
aUBib290bGluLmNvbT4KPiAKPiBDaGVlcnMsCj4gCj4gUGF1bAo+IAo+ID4gU2lnbmVkLW9mZi1i
eTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gLS0tCj4gPiAK
PiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMgfCA4
ICsrLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9j
ZWRydXMvY2VkcnVzX2gyNjQuYwo+ID4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2Vk
cnVzL2NlZHJ1c19oMjY0LmMgaW5kZXgKPiA+IGJkODQ4MTQ2ZWFkYS4uNGEwZTY5ODU1YzdmIDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNf
aDI2NC5jCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1
c19oMjY0LmMKPiA+IEBAIC0zNjQsMTIgKzM2NCw4IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19zZXRf
cGFyYW1zKHN0cnVjdCBjZWRydXNfY3R4ICpjdHgsCj4gPiAKPiA+ICAJLy8gcGljdHVyZSBwYXJh
bWV0ZXJzCj4gPiAgCXJlZyA9IDA7Cj4gPiAKPiA+IC0JLyoKPiA+IC0JICogRklYTUU6IHRoZSBr
ZXJuZWwgaGVhZGVycyBhcmUgYWxsb3dpbmcgdGhlIGRlZmF1bHQgdmFsdWUgdG8KPiA+IC0JICog
YmUgcGFzc2VkLCBidXQgdGhlIGxpYnZhIGRvZXNuJ3QgZ2l2ZSB1cyB0aGF0Lgo+ID4gLQkgKi8K
PiA+IC0JcmVnIHw9IChzbGljZS0+bnVtX3JlZl9pZHhfbDBfYWN0aXZlX21pbnVzMSAmIDB4MWYp
IDw8IDEwOwo+ID4gLQlyZWcgfD0gKHNsaWNlLT5udW1fcmVmX2lkeF9sMV9hY3RpdmVfbWludXMx
ICYgMHgxZikgPDwgNTsKPiA+ICsJcmVnIHw9IChwcHMtPm51bV9yZWZfaWR4X2wwX2RlZmF1bHRf
YWN0aXZlX21pbnVzMSAmIDB4MWYpIDw8IDEwOwo+ID4gKwlyZWcgfD0gKHBwcy0+bnVtX3JlZl9p
ZHhfbDFfZGVmYXVsdF9hY3RpdmVfbWludXMxICYgMHgxZikgPDwgNTsKPiA+IAo+ID4gIAlyZWcg
fD0gKHBwcy0+d2VpZ2h0ZWRfYmlwcmVkX2lkYyAmIDB4MykgPDwgMjsKPiA+ICAJaWYgKHBwcy0+
ZmxhZ3MgJiBWNEwyX0gyNjRfUFBTX0ZMQUdfRU5UUk9QWV9DT0RJTkdfTU9ERSkKPiA+ICAJCj4g
PiAgCQlyZWcgfD0gVkVfSDI2NF9QUFNfRU5UUk9QWV9DT0RJTkdfTU9ERTsKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
