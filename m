Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9C315F8A
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 10:39:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0EE3327379;
	Tue,  7 May 2019 08:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DoB0Ba2r9J83; Tue,  7 May 2019 08:39:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AEEAD26CAB;
	Tue,  7 May 2019 08:39:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08D671BF868
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 08:39:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05EA4226A9
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 08:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vDlOKvkuBjZz for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 08:39:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by silver.osuosl.org (Postfix) with ESMTPS id 41B9E2286F
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 08:39:23 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C739A5D6B;
 Tue,  7 May 2019 10:39:20 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 878559c4;
 Tue, 7 May 2019 10:39:19 +0200 (CEST)
Date: Tue, 7 May 2019 10:39:18 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Message-ID: <20190507083918.GI81826@meh.true.cz>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
 <20190507071914.GJ2269@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507071914.GJ2269@kadam>
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPiBbMjAxOS0wNS0wNyAxMDox
OToxNF06CgpIaSwKCj4gT24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMTE6MjQ6NDNQTSArMDIwMCwg
UGV0ciDFoHRldGlhciB3cm90ZToKPiA+IAo+ID4gdGhpcyBwYXRjaCBzZXJpZXMgaXMgYW4gYXR0
ZW1wdCB0byBmaXggdGhlIG1lc3MsIEkndmUgc29tZWhvdyBtYW5hZ2VkIHRvCj4gPiBpbnRyb2R1
Y2UuCj4gPiAKPiA+IEZpcnN0IHBhdGNoIGluIHRoaXMgc2VyaWVzIGlzIGRlZmFjdG8gdjUgb2Yg
dGhlIHByZXZpb3VzIDA1LzEwIHBhdGNoIGluIHRoZQo+ID4gc2VyaWVzLCBidXQgc2luY2UgdGhl
IHY0IG9mIHRoaXMgMDUvMTAgcGF0Y2ggd2Fzbid0IHBpY2tlZCB1cCBieSB0aGUKPiA+IHBhdGNo
d29yayBmb3Igc29tZSB1bmtub3duIHJlYXNvbiwgdGhpcyBwYXRjaCB3YXNuJ3QgYXBwbGllZCB3
aXRoIHRoZSBvdGhlcgo+ID4gOSBwYXRjaGVzIGluIHRoZSBzZXJpZXMsIHNvIEknbSByZXNlbmRp
bmcgaXQgYXMgYSBzZXBhcmF0ZSBwYXRjaCBvZiB0aGlzCj4gPiBmaXh1cCBzZXJpZXMgYWdhaW4u
Cj4gCj4gSSBmZWVsIHNvcnQgb2YgcmlkaWN1bG91cyBhc2tpbmcgdGhpcyBvdmVyIGFuZCBvdmVy
Li4uICBNYXliZSB5b3VyIHNwYW0KPiBmaWx0ZXIgaXMgZWF0aW5nIG15IGVtYWlscz8KCm5vcGUs
IEkndmUgcmVhZCB5b3VyIGVtYWlsLCB0aGF0J3MgdGhlIG9ubHkgcmVhc29uIEkndmUgc2VudCBv
dXQgdGhpcyB2MiB3aGljaAphZGRlZCBGaXhlczogdGFnIHlvdSd2ZSBzdWdnZXN0ZWQgaW4geW91
ciBlbWFpbC4KCj4gVGhpcyBidWcgd2FzIGludHJvZHVjZWQgaW4gaHR0cHM6Ly9wYXRjaHdvcmsu
b3psYWJzLm9yZy9wYXRjaC8xMDk0OTE2Lwo+ICJbdjQsMDEvMTBdIG9mX25ldDogYWRkIE5WTUVN
IHN1cHBvcnQgdG8gb2ZfZ2V0X21hY19hZGRyZXNzIiBidXQgaXQKPiBsb29rcyBsaWtlIG5vIG9u
ZSBhcHBsaWVkIGl0LgoKdGhpcyBwYXRjaCBzZXJpZXMgaXMgYWdhaW5zdCBuZXQtbmV4dCwgYW5k
IEkndmUgYWRkZWQgRml4ZXM6IHRhZyBhcyB5b3UndmUKcmVxdWVzdGVkIGluIHRoaXMgdjIgc2Vy
aWVzWzFdICh3aGljaCBleHBhbmRzIHRvIGNvbW1pdFsyXSBpbiBuZXQtbmV4dCk6CgogRml4ZXM6
IGQwMWY0NDljMDA4YSAoIm9mX25ldDogYWRkIE5WTUVNIHN1cHBvcnQgdG8gb2ZfZ2V0X21hY19h
ZGRyZXNzIikKCj4gWW91J3JlIGFjdGluZyBhcyBpZiBpdCAqd2FzKiBhcHBsaWVkIGJ1dCB5b3Ug
cmVmdXNlIHRvIGFuc3dlciBteQo+IHF1ZXN0aW9uIHdobyBhcHBsaWVkIGl0IGFuZCB3aGljaCB0
byB3aGljaCB0cmVlIHNvIEkgY2FuIGZpZ3VyZSBvdXQgd2hhdAo+IHdlbnQgd3JvbmcuCgppdCB3
YXMgYXBwbGllZFsyXSB0byBEYXZpZCdzIG5ldC1uZXh0IHRyZWUsIGJ1dCB1bmZvcnR1bmF0ZWx5
IHBhcnRpYWx5LCBqdXN0IDkKcGF0Y2hlcyBvdXQgb2YgMTAsIGFzIHRoZSBwYXRjaCAwNS8xMCBp
biB0aGF0IHNlcmllcyAod2hpY2ggaXMgcGF0Y2ggMS80IGluCnRoaXMgc2VyaWVzKSBuZXZlciBy
ZWFjaGVkIG5ldGRldiBtYWlsaW5nIGxpc3QgYW5kIHBhdGNod29yaywgcHJvYmFibHkgYmVjYXVz
ZQpvZiBzb21lIG5ldGRldiBtYWlsaW5nIGxpc3Qgc29mdHdhcmUgYW5kL29yIHBhdGNod29yayBo
aWNjdXAsIHZlcnkgbGlrZWx5IGR1ZQp0byB0aGUgbG9uZyBsaXN0IG9mIHJlY2lwaWVudHMgaW4g
dGhhdCBwYXRjaCBhbmQgYXMgSSdtIG5vdCBzdWJzY3JpYmVkIHRvIHRoZQpuZXRkZXYgKGR1ZSB0
byB0aGUgaGlnaCB0cmFmZmljKSBJJ20gcHJvYmFibHkgdHJlYXRlbiBzb21laG93IGRpZmZlcmVu
dGx5LgoKU28gdG8gc3VtIGl0IHVwLCBJJ3ZlIHNpbXBseSB0aG91Z2h0LCB0aGF0IGl0IHdhcyBl
bm91Z2ggdG8gc2VuZCBvdXQgdjIgd2l0aAp0aGF0IEZpeGVzOiB0YWcgYW5kIGNvbnNpZGVyZWQg
aXQgZG9uZS4KCj4gSSBvbmx5IHNlZSBjb21tZW50cyBmcm9tIGxhc3QgRnJpZGF5IHRoYXQgaXQg
c2hvdWxkbid0IGJlIGFwcGxpZWQuLi4KCkknbSBzb3JyeSwgYnV0IHdoaWNoIGNvbW1lbnRzIGRv
IHlvdSBtZWFuIGV4YWN0bHk/IFRob3NlIGFib3V0IHRoZQpgbnZtZW0tbWFjLWFkZHJlc3NgIERU
IChzeXNmcykgZW50cnk/IElmIHRoYXQgaXMgdGhlIGNhc2UsIGZyb20gbXkgcG9pbnQgb2YKdmll
dywgSSd2ZSBwcm92aWRlZCByZWFzb25hYmxlIGFyZ3VtZW50cyBhbmQgbm9ib2R5IHRvbGQgbWUs
IHRoYXQgSSdtIHdyb25nCndpdGggbXkgcmVhc29uaW5nIG9yIE5BQ0tlZCB0aGlzIGV4cGxpY2l0
bHksIHNvIERhdmlkIHByb2JhYmx5IGNvbnNpZGVyZWQgbXkKYXJndW1lbnRzIGdvb2QgZW5vdWdo
IGFuZCBtZXJnZWQgaXQgYXMgaXQgaXM/IEkgZG9uJ3QgaGF2ZSBhbnkgb3RoZXIKZXhwbGFuYXRp
b24uCgo+IEkgYWxzbyB0b2xkIHlvdSBvbiBGcmlkYXkgaW4gYSBkaWZmZXJlbnQgdGhyZWFkIHRo
YXQgdGhhdCBwYXRjaCBzaG91bGRuJ3QgYmUKPiBhcHBsaWVkLiAgQnJlYWtpbmcgZ2l0IGJpc2Vj
dCBpcyBhIGJ1ZywgYW5kIHdlIG5ldmVyIGRvIHRoYXQuIAoKWWVzLCBhbmQgSSBhZ3JlZSB3aXRo
IHlvdSwgYnV0IEkndmUgc2ltcGx5IHRob3VnaHQsIHRoYXQgaWYgYW55IG9mIHRoZQptYWludGFp
bmVycyB3aG8gcHJldmlvdXNseSByZXZpZXdlZCB0aGUgc2VyaWVzIGRpZG4ndCBvYmplY3RlZCBh
Ym91dCB0aGlzLAp0aGF0IHRoZXkncmUgcG9zc2libHkgZ29pbmcgdG8gc3F1YXNoIHRob3NlIHBh
dGNoZXMgYnkgdGhlbXNlbHZlcyBkdXJpbmcgdGhlCm1lcmdpbmcgcHJvY2VzcyBvciB0aGF0IHRo
ZXkncmUgZ29pbmcgdG8gdGVsbCBtZSB0byBkbyBzbyBhbmQgSSB3b3VsZCBhZGRyZXNzCnRoaXMg
aW4gdGhlIGxhdGVzdCBpbnRlcmF0aW9uIG9mIHRoZSBwYXRjaHNldCBiZWZvcmUgbWVyZ2UuCgpB
bnl3YXksIGlzIHRoZXJlIGFueSBwb3NzaWJpbGl0eSBob3cgdG8gZml4IHRoYXQgbm93PwoKPiBJ
J20ganVzdCB2ZXJ5IGNvbmZ1c2VkIHJpZ2h0IG5vdy4gIFdoYXQgSSdtIHRyeWluZyB0byBkbyBp
cyBmaWd1cmUgb3V0IGluCj4gbXkgaGVhZCBob3cgdGhpcyBwcm9jZXNzIGZhaWxlZCBzbyB3ZSBj
YW4gZG8gYmV0dGVyIG5leHQgdGltZS4KCkknbSBqdXN0IG9jY2FzaW9uYWwgY29udHJpYnV0b3Is
IHNvIEknbSBzb3JyeSwgYnV0IEkgY2FuIGhhcmRseSBwcm92aWRlIGFueQppbnB1dC4KCjEuIGh0
dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA5NjA1NC8KMi4gaHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZGF2ZW0vbmV0LW5leHQuZ2l0L2Nv
bW1pdC8/aWQ9ZDAxZjQ0OWMwMDhhM2Y0MWZhNDRjNjAzZTI4YTc0NTJhYjhmOGU2OAoKQ2hlZXJz
LAoKUGV0cgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
