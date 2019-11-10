Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46693F68B5
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Nov 2019 12:35:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9D6B87C88;
	Sun, 10 Nov 2019 11:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bie2SvTzBCFq; Sun, 10 Nov 2019 11:35:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94AC587B36;
	Sun, 10 Nov 2019 11:35:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EDC7A1BF83C
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 11:35:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E51AC86657
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 11:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7n0inRUtH3u for <devel@linuxdriverproject.org>;
 Sun, 10 Nov 2019 11:35:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E574E857EB
 for <devel@driverdev.osuosl.org>; Sun, 10 Nov 2019 11:35:37 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E02CE28A10C;
 Sun, 10 Nov 2019 11:35:34 +0000 (GMT)
Date: Sun, 10 Nov 2019 12:35:31 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: =?UTF-8?B?UmVuw6k=?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
Message-ID: <20191110123531.5a27206a@collabora.com>
In-Reply-To: <20191107092053.Horde.i3MVcW9RqZDOQBMADZX9fuc@www.vdorst.com>
References: <20191107073521.11413-1-gerg@kernel.org>
 <20191107092053.Horde.i3MVcW9RqZDOQBMADZX9fuc@www.vdorst.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Weijie Gao <hackpascal@gmail.com>,
 gregkh@linuxfoundation.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-kernel@vger.kernel.org, neil@brown.name, gerg@kernel.org,
 linux-mediatek@lists.infradead.org, Richard Weinberger <richard@nod.at>,
 DENG Qingfang <dengqf6@mail2.sysu.edu.cn>, linux-mtd@lists.infradead.org,
 blogic@openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

K1JpY2hhcmQgYW5kIE1pcXVlbAoKT24gVGh1LCAwNyBOb3YgMjAxOSAwOToyMDo1MyArMDAwMApS
ZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNvbT4gd3JvdGU6Cgo+IFF1b3Rpbmcg
Z2VyZ0BrZXJuZWwub3JnOgo+IAo+ID4gRnJvbTogR3JlZyBVbmdlcmVyIDxnZXJnQGtlcm5lbC5v
cmc+Cj4gPgo+ID4gQWRkIGEgZHJpdmVyIHRvIHN1cHBvcnQgdGhlIE5BTkQgZmxhc2ggY29udHJv
bGxlciBvZiB0aGUgTWVkaWFUZWsgTVQ3NjIxCj4gPiBTeXN0ZW0tb24tQ2hpcCBkZXZpY2UuIChU
aGlzIG9uZSBpcyB0aGUgTUlQUyBiYXNlZCBwYXJ0cyBmcm9tIE1lZGlhdGVrKS4KPiA+Cj4gPiBU
aGlzIGNvZGUgaXMgYSByZS13b3JraW5nIG9mIHRoZSBlYXJsaWVyIHBhdGNoZXMgZm9yIHRoaXMg
aGFyZHdhcmUgdGhhdAo+ID4gaGF2ZSBiZWVuIGZsb2F0aW5nIGFyb3VuZCB0aGUgaW50ZXJuZXQg
Zm9yIHllYXJzOgo+ID4KPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9SZWNsYWltWW91clByaXZhY3kv
Y2xvYWsvYmxvYi9tYXN0ZXIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRjaGVzLTMuMTgvMDA0NS1t
dGQtYWRkLW10NzYyMS1uYW5kLXN1cHBvcnQucGF0Y2gKPiA+Cj4gPiBUaGlzIGlzIGEgbXVjaCBj
bGVhbmVkIHVwIHZlcnNpb24sIHB1dCBpbiBzdGFnaW5nIHRvIHN0YXJ0IHdpdGguCj4gPiBJdCBk
b2VzIHN0aWxsIGhhdmUgc29tZSBwcm9ibGVtcywgbWFpbmx5IHRoYXQgaXQgc3RpbGwgdXNlcyBh
IGxvdCBvZiB0aGUKPiA+IG10ZCByYXcgbmFuZCBsZWdhY3kgc3VwcG9ydC4KPiA+Cj4gPiBUaGUg
ZHJpdmVyIG5vdCBvbmx5IGNvbXBpbGVzLCBidXQgaXQgd29ya3Mgd2VsbCBvbiB0aGUgc21hbGwg
cmFuZ2Ugb2YKPiA+IGhhcmR3YXJlIHBsYXRmb3JtcyB0aGF0IGl0IGhhcyBiZWVuIHVzZWQgb24g
c28gZmFyLiBJIGhhdmUgYmVlbiB1c2luZwo+ID4gZm9yIHF1aXRlIGEgd2hpbGUgbm93LCBjbGVh
bmluZyB1cCBhcyBJIGdldCB0aW1lLgo+ID4KPiA+IFNvLi4uIEkgYW0gbG9va2luZyBmb3IgY29t
bWVudHMgb24gdGhlIGJlc3QgYXBwcm9hY2ggZm9yd2FyZCB3aXRoIHRoaXMuCj4gPiBBdCBsZWFz
dCBpbiBzdGFnaW5nIGl0IGNhbiBnZXQgc29tZSBtb3JlIGV5ZWJhbGxzIGdvaW5nIG92ZXIgaXQu
Cj4gPgo+ID4gVGhlcmUgaXMgYSBtZWRpYXRlayBuYW5kIGRyaXZlciBhbHJlYWR5LCBtdGtfbmFu
ZC5jLCBmb3IgdGhlaXIgQVJNIGJhc2VkCj4gPiBTeXN0ZW0tb24tQ2hpcCBkZXZpY2VzLiBUaGF0
IGhhcmR3YXJlIG1vZHVsZSBsb29rcyB0byBoYXZlIHNvbWUgaGFyZHdhcmUKPiA+IHNpbWlsYXJp
dGllcyB3aXRoIHRoaXMgb25lLiBBdCB0aGlzIHBvaW50IEkgZG9uJ3Qga25vdyBpZiB0aGF0IGNh
biBiZQo+ID4gdXNlZCBvbiB0aGUgNzYyMSBiYXNlZCBkZXZpY2VzLiAoSSB0cmllZCBhIHF1aWNr
IGFuZCBkaXJ0eSBzZXR1cCBhbmQgaGFkCj4gPiBubyBzdWNjZXNzIHVzaW5nIGl0IG9uIHRoZSA3
NjIxKS4KPiA+Cj4gPiBUaG91Z2h0cz8gIAo+IAo+ICtDQyBERU5HIFFpbmdmYW5nLCBDaHVhbmhv
bmcgR3VvLCBXZWlqaWUgR2FvIHRvIHRoZSBsaXN0Lgo+IAo+IEhpIEdyZWcsCj4gCj4gVGhhbmtz
IGZvciBwb3N0aW5nIHRoaXMgZHJpdmVyLgo+IAo+IEJ1dCBJIHdvdWxkIGxpa2UgdG8gbWVudGlv
biB0aGF0IHRoZSBvcGVud3J0IGNvbW11bml0eSBpcyBjdXJyZW50bHkgIAo+IHdvcmtpbmcgb24g
YQo+IG5ldyB2ZXJzaW9uIHdoaWNoIGlzIGJhc2VkIGEgbmV3ZXIgdmVyc2lvbiBvZiB0aGUgTWVk
aWFUZWsgdmVuZG9yIGRyaXZlci4KPiBUaGF0IHZlcnNpb24gaXMgY3VycmVudGx5IHRhcmdldGVk
IGZvciB0aGUgb3BlbndydCA0LjE5IGtlcm5lbC4KPiBTZWUgZnVsbCBwdWxsIHJlcXVlc3QgWzFd
IGFuZCBOQU5EIGRyaXZlciBwYXRjaCBbMl0KPiAKPiBJdCB3b3VsZCBiZSBhIHNoYW1lIGlmIGR1
cGxpY2F0ZSB3b3JrIGhhcyBiZWVuIGRvbmUuCgpTb3JyeSwgYnV0IGlmIHRoZXJlJ3MgZHVwbGlj
YXRlIGVmZm9ydCB0aGF0J3Mga2luZGEgeW91ciAoT3BlbldSVCBmb2xrcykKZmF1bHQ6IHNpbmNl
IHdoZW4gT3BlbldSVCBpcyB0aGUgY2VudHJhbCBwb2ludCBmb3Iga2VybmVsIGRyaXZlcnM/CkNv
cnJlY3QgbWUgaWYgSSdtIHdyb25nLCBidXQgSSBkb24ndCByZW1lbWJlciBzZWVpbmcgdGhpcyBk
cml2ZXIgcG9zdGVkCnRvIHRoZSBNVEQgTUwuIFBsdXMsIHRoZSBkcml2ZXIgeW91J3JlIHBvaW50
aW5nIHRvIHN0aWxsIGltcGxlbWVudHMgdGhlCmxlZ2FjeSBob29rcyBhbmQgaXMgYmFzZWQgb24g
NC4xOSwgYW5kIGl0IGhhcyBiZWVuIGRlY2lkZWQgdGhhdCBhbGwgbmV3Ck5BTkQgY29udHJvbGxl
ciBkcml2ZXJzIHNob3VsZCBpbXBsZW1lbnQgdGhlIG5ldyAtPmV4ZWNfb3AoKSBob29rCmluc3Rl
YWQuCgo+IAo+IEdyZWF0cywKPiAKPiBSZW7DqQo+IAo+IFsxXTogaHR0cHM6Ly9naXRodWIuY29t
L29wZW53cnQvb3BlbndydC9wdWxsLzIzODUKPiBbMl06ICAKPiBodHRwczovL2dpdGh1Yi5jb20v
b3BlbndydC9vcGVud3J0L3B1bGwvMjM4NS9jb21taXRzL2IyNTY5YzBhNTk0M2ZlOGY5NGJhMDdj
OTU0MGVjZDE0MDA2ZDcyOWEKPiAKPiA8c25pcD4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eCBNVEQgZGlzY3Vzc2lv
biBtYWlsaW5nIGxpc3QKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW10ZC8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
