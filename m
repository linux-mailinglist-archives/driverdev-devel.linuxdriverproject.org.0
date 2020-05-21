Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD21B1DD3AE
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 19:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 34AB422EE7;
	Thu, 21 May 2020 17:02:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSkNZ4QfhHxI; Thu, 21 May 2020 17:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F9EC204C6;
	Thu, 21 May 2020 17:02:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0DD621BF36D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 17:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0A2A587638
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 17:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HzTwcIvWgcbh for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 17:02:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1CCF8762E
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 17:02:27 +0000 (UTC)
Received: from 89-64-86-91.dynamic.chello.pl (89.64.86.91) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.415)
 id 2f872cf926dcd0e8; Thu, 21 May 2020 19:02:24 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: staging: tegra-vde: fix runtime pm imbalance on
 error
Date: Thu, 21 May 2020 19:02:23 +0200
Message-ID: <7515020.pTbQcekcxr@kreacher>
In-Reply-To: <20200520150230.GC30374@kadam>
References: <20200520095148.10995-1-dinghao.liu@zju.edu.cn>
 <2b5d64f5-825f-c081-5d03-02655c2d9491@gmail.com>
 <20200520150230.GC30374@kadam>
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
Cc: devel@driverdev.osuosl.org, Len Brown <len.brown@intel.com>,
 Pavel Machek <pavel@ucw.cz>, linux-pm@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Dinghao Liu <dinghao.liu@zju.edu.cn>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkbmVzZGF5LCBNYXkgMjAsIDIwMjAgNTowMjozMCBQTSBDRVNUIERhbiBDYXJwZW50ZXIg
d3JvdGU6Cj4gT24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgMDE6MTU6NDRQTSArMDMwMCwgRG1pdHJ5
IE9zaXBlbmtvIHdyb3RlOgo+ID4gMjAuMDUuMjAyMCAxMjo1MSwgRGluZ2hhbyBMaXUg0L/QuNGI
0LXRgjoKPiA+ID4gcG1fcnVudGltZV9nZXRfc3luYygpIGluY3JlbWVudHMgdGhlIHJ1bnRpbWUg
UE0gdXNhZ2UgY291bnRlciBldmVuCj4gPiA+IGl0IHJldHVybnMgYW4gZXJyb3IgY29kZS4gVGh1
cyBhIHBhaXJpbmcgZGVjcmVtZW50IGlzIG5lZWRlZCBvbgo+ID4gPiB0aGUgZXJyb3IgaGFuZGxp
bmcgcGF0aCB0byBrZWVwIHRoZSBjb3VudGVyIGJhbGFuY2VkLgo+ID4gPiAKPiA+ID4gU2lnbmVk
LW9mZi1ieTogRGluZ2hhbyBMaXUgPGRpbmdoYW8ubGl1QHpqdS5lZHUuY24+Cj4gPiA+IC0tLQo+
ID4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYyB8IDIgKy0KPiA+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4gPiA+IGluZGV4IGQzZTYzNTEy
YTc2NS4uZGQxMzRhM2ExNWM3IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvdGVncmEtdmRlL3ZkZS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdy
YS12ZGUvdmRlLmMKPiA+ID4gQEAgLTc3Nyw3ICs3NzcsNyBAQCBzdGF0aWMgaW50IHRlZ3JhX3Zk
ZV9pb2N0bF9kZWNvZGVfaDI2NChzdHJ1Y3QgdGVncmFfdmRlICp2ZGUsCj4gPiA+ICAKPiA+ID4g
IAlyZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKGRldik7Cj4gPiA+ICAJaWYgKHJldCA8IDApCj4g
PiA+IC0JCWdvdG8gdW5sb2NrOwo+ID4gPiArCQlnb3RvIHB1dF9ydW50aW1lX3BtOwo+ID4gPiAg
Cj4gPiA+ICAJLyoKPiA+ID4gIAkgKiBXZSByZWx5IG9uIHRoZSBWREUgcmVnaXN0ZXJzIHJlc2V0
IHZhbHVlLCBvdGhlcndpc2UgVkRFCj4gPiA+IAo+ID4gCj4gPiBIZWxsbyBEaW5naGFvLAo+ID4g
Cj4gPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4gSSBzZW50IG91dCBhIHNpbWlsYXIgcGF0Y2gg
YSB3ZWVrIGFnbyBbMV0uCj4gPiAKPiA+IFsxXQo+ID4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJz
Lm9yZy9wcm9qZWN0L2xpbnV4LXRlZ3JhL3BhdGNoLzIwMjAwNTE0MjEwODQ3LjkyNjktMi1kaWdl
dHhAZ21haWwuY29tLwo+ID4gCj4gPiBUaGUgcG1fcnVudGltZV9wdXRfbm9pZGxlKCkgc2hvdWxk
IGhhdmUgdGhlIHNhbWUgZWZmZWN0IGFzIHlvdXJzCj4gPiB2YXJpYW50LCBhbHRob3VnaCBteSB2
YXJpYW50IHdvbid0IGNoYW5nZSB0aGUgbGFzdF9idXN5IFJQTSB0aW1lLCB3aGljaAo+ID4gSSB0
aGluayBpcyBhIGJpdCBtb3JlIGFwcHJvcHJpYXRlIGJlaGF2aW9yLgo+IAo+IEkgZG9uJ3QgdGhp
bmsgZWl0aGVyIHBhdGNoIGlzIGNvcnJlY3QuICBUaGUgcmlnaHQgdGhpbmcgdG8gZG8gaXMgdG8g
Zml4Cj4gX19wbV9ydW50aW1lX3Jlc3VtZSgpIHNvIGl0IGRvZXNuJ3QgbGVhayBhIHJlZmVyZW5j
ZSBjb3VudCBvbiBlcnJvci4KPiAKPiBUaGUgcHJvYmxlbSBpcyB0aGF0IGEgbG90IG9mIGZ1bmN0
aW9ucyBkb24ndCBjaGVjayB0aGUgcmV0dXJuIHNvCj4gcG9zc2libHkgd2UgYXJlIHJlbHlpbmcg
b24gdGhhdCBiZWhhdmlvci4KCkFjdHVhbGx5LCB0aGUgZnVuY3Rpb24gd2FzIHdyaXR0ZW4gd2l0
aCB0aGlzIGNhc2UgaW4gbWluZC4KCkluIHJldHJvc3BlY3QsIHRoYXQgaGFzIGJlZW4gYSBtaXN0
YWtlIGFuZCB0aGVyZSBzaG91bGQgYmUgYSB2b2lkIHZhcmlhbnQKdG8gY292ZXIgdGhpcyBjYXNl
LCBidXQgaXQncyBiZWVuIGxpa2UgdGhhdCBmb3Igc2V2ZXJhbCB5ZWFycyBhbmQgdGhlCmRvY3Vt
ZW50YXRpb24gZG9lc24ndCByZWFsbHkgc2F5IHRoYXQgdGhlIHJlZmVyZW5jZSBjb3VudGVyIHdp
bGwgYmUKZGVjcmVtZW50ZWQgb24gZXJyb3JzLgoKPiBXZSBtYXkgbmVlZCB0byBpbnRyb2R1Y2Ug
YQo+IG5ldyBmdW5jdGlvbiB3aGljaCBjbGVhbnMgdXAgcHJvcGVybHkgaW5zdGVhZCBvZiBsZWFr
aW5nIHJlZmVyZW5jZQo+IGNvdW50cz8KCldlbGwsIGV2ZW4gd2l0aCB0aGF0LCBhbGwgb2YgdGhl
IGJyb2tlbiBjYWxsZXJzIG9mIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKQp3b3VsZCBuZWVkIHRvIGJl
IGNoYW5nZWQgdG8gdXNlIHRoZSBuZXcgZnVuY3Rpb24gaW5zdGVhZD8KCklzIHRoYXQgd2hhdCB5
b3UgbWVhbj8KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
