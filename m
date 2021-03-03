Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6143C32B934
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Mar 2021 17:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFA6F4AD51;
	Wed,  3 Mar 2021 16:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ok-R_X7pIX4t; Wed,  3 Mar 2021 16:25:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B224C4AD93;
	Wed,  3 Mar 2021 16:25:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E72D1BF232
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 16:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2AA52843D9
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 16:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BBnBy9ihBBDH for <devel@linuxdriverproject.org>;
 Wed,  3 Mar 2021 16:25:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D6FA6843D3
 for <devel@driverdev.osuosl.org>; Wed,  3 Mar 2021 16:25:39 +0000 (UTC)
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHUJL-00017T-6G; Wed, 03 Mar 2021 17:25:19 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHUJK-0003MJ-Ef; Wed, 03 Mar 2021 17:25:18 +0100
Message-ID: <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Date: Wed, 03 Mar 2021 17:25:18 +0100
In-Reply-To: <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
 <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAyMDIxLTAzLTAzIGF0IDE2OjIwICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBMZSAwMy8wMy8yMDIxIMOgIDE1OjE3LCBQaGlsaXBwIFphYmVsIGEgw6ljcml0IDoKPiA+
IEhpIEJlbmphbWluLAo+ID4gCj4gPiBPbiBNb24sIDIwMjEtMDMtMDEgYXQgMTY6MTcgKzAxMDAs
IEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4gPiBUaGUgdHdvIFZQVXMgaW5zaWRlIElNWDhN
USBzaGFyZSB0aGUgc2FtZSBjb250cm9sIGJsb2NrIHdoaWNoIGNhbiBiZSBzZWUKPiA+ID4gYXMg
YSByZXNldCBoYXJkd2FyZSBibG9jay4KPiA+IFRoaXMgaXNuJ3QgYSByZXNldCBjb250cm9sbGVy
IHRob3VnaC4gVGhlIGNvbnRyb2wgYmxvY2sgYWxzbyBjb250YWlucwo+ID4gY2xvY2sgZ2F0ZXMg
b2Ygc29tZSBzb3J0IGFuZCBhIGZpbHRlciByZWdpc3RlciBmb3IgdGhlIGZlYXR1cmVzZXQgZnVz
ZXMuCj4gPiBUaG9zZSBzaG91bGRuJ3QgYmUgbWFuaXB1bGF0ZWQgdmlhIHRoZSByZXNldCBBUEku
Cj4gCj4gVGhleSBhcmUgYWxsIHBhcnQgb2YgdGhlIGNvbnRyb2wgYmxvY2sgYW5kIG9mIHRoZSBy
ZXNldCBwcm9jZXNzIGZvciB0aGlzCj4gaGFyZHdhcmUgdGhhdCB3aHkgSSBwdXQgdGhlbSBoZXJl
LiBJIGd1ZXNzIGl0IGlzIGJvcmRlciBsaW5lIDotKQoKSSdtIHB1c2hpbmcgYmFjayB0byBrZWVw
IHRoZSByZXNldCBjb250cm9sIGZyYW1ld29yayBmb2N1c2VkIG9uCmNvbnRyb2xsaW5nIHJlc2V0
IGxpbmVzLiBFdmVyeSBzaWRlIGVmZmVjdCAoc3VjaCBhcyB0aGUgYXN5bW1ldHJpYyBjbG9jawp1
bmdhdGluZykgaW4gYSByYW5kb20gZHJpdmVyIG1ha2VzIGl0IGhhcmRlciB0byByZWFzb24gYWJv
dXQgYmVoYXZpb3VyCmF0IHRoZSBBUEkgbGV2ZWwsIGFuZCB0byByZXZpZXcgcGF0Y2hlcyBmb3Ig
aGFyZHdhcmUgSSBhbSBub3QgZmFtaWxpYXIKd2l0aC4KCj4gPiA+IEluIG9yZGVyIHRvIGJlIGFi
bGUgdG8gYWRkIHRoZSBzZWNvbmQgVlBVIChmb3IgSEVDViBkZWNvZGluZykgaXQgd2lsbCBiZQo+
ID4gPiBtb3JlIGhhbmR5IGlmIHRoZSBib3RoIFZQVSBkcml2ZXJzIGluc3RhbmNlIGRvbid0IGhh
dmUgdG8gc2hhcmUgdGhlCj4gPiA+IGNvbnRyb2wgYmxvY2sgcmVnaXN0ZXJzLiBUaGlzIGxlYWQg
dG8gaW1wbGVtZW50IGl0IGFzIGFuIGluZGVwZW5kIHJlc2V0Cj4gPiA+IGRyaXZlciBhbmQgdG8g
Y2hhbmdlIHRoZSBWUFUgZHJpdmVyIHRvIHVzZSBpdC4KPiA+IFdoeSBub3Qgc3dpdGNoIHRvIGEg
c3lzY29uIHJlZ21hcCBmb3IgdGhlIGNvbnRyb2wgYmxvY2s/IFRoYXQgc2hvdWxkCj4gPiBhbHNv
IGFsbG93IHRvIGtlZXAgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkgd2l0aCB0aGUgb2xkIGJpbmRp
bmcgd2l0aAo+ID4gbWluaW1hbCBlZmZvcnQuCj4gCj4gSSB3aWxsIGdpdmUgYSB0cnkgaW4gdGhp
cyBkaXJlY3Rpb24uCgpUaGFuayB5b3UuCgo+ID4gPiBQbGVhc2Ugbm90ZSB0aGF0IHRoaXMgc2Vy
aWVzIGJyZWFrIHRoZSBjb21wYXRpYmlsaXR5IGJldHdlZW4gdGhlIERUQiBhbmQKPiA+ID4ga2Vy
bmVsLiBUaGlzIGJyZWFrIGlzIGxpbWl0ZWQgdG8gSU1YOE1RIFNvQyBhbmQgaXMgZG9uZSB3aGVu
IHRoZSBkcml2ZXIKPiA+ID4gaXMgc3RpbGwgaW4gc3RhZ2luZyBkaXJlY3RvcnkuCj4gPiBJIGtu
b3cgaW4gdGhpcyBjYXNlIHdlIGFyZSBwcmV0dHkgc3VyZSB0aGVyZSBhcmUgbm8gdXNlcnMgb2Yg
dGhpcwo+ID4gYmluZGluZyBleGNlcHQgZm9yIGEgc3RhZ2luZyBkcml2ZXIsIGJ1dCBpdCB3b3Vs
ZCBzdGlsbCBiZSBuaWNlIHRvIGtlZXAKPiA+IHN1cHBvcnQgZm9yIHRoZSBkZXByZWNhdGVkIGJp
bmRpbmcsIHRvIGF2b2lkIHRoZSByZXF1aXJlbWVudCBvZiB1cGRhdGluZwo+ID4ga2VybmVsIGFu
ZCBEVCBpbiBsb2NrLXN0ZXAuCj4gCj4gSWYgSSB3YW50IHRvIHVzZSBhIHN5c2NvbiAob3IgYSBy
ZXNldCkgdGhlIGRyaXZlciBtdXN0IG5vdCBpb3JlbWFwIHRoZSAiY3RybCIKPiByZWdpc3RlcnMu
IEl0IG1lYW5zIHRoYXQgImN0cmwiIGhhcyB0byBiZSByZW1vdmVkIGZyb20gdGhlIGRyaXZlciBy
ZXF1ZXN0ZWQKPiByZWctbmFtZXMgKGlteDhtcV9yZWdfbmFtZXNbXSkuIERvaW5nIHRoYXQgYnJl
YWsgdGhlIGtlcm5lbC9EVCBjb21wYXRpYmlsaXR5Lgo+IFNvbWVob3cgc3lzY29uIGFuZCAiY3Ry
bCIgYXJlIGV4Y2x1c2l2ZS4KClRoZSB3YXkgdGhlIGRyaXZlciBpcyBzZXQgdXAgY3VycmVudGx5
LCB5ZXMuIFlvdSBjb3VsZCBhZGQgYSBiaXQgb2YKcGxhdGZvcm0gc3BlY2lmaWMgcHJvYmUgY29k
ZSwgdGhvdWdoLCB0aGF0IHdvdWxkIHNldCB1cCB0aGUgcmVnbWFwCmVpdGhlciBieSBjYWxsaW5n
CglzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKCk7CmZvciB0aGUgbmV3IGJpbmRpbmcs
IG9yLCBpZiB0aGUgcGhhbmRsZSBpcyBub3QgYXZhaWxhYmxlLCBmYWxsIGJhY2sgdG8KCXBsYXRm
b3JtX2dldF9yZXNvdXJjZV9ieW5hbWUoLi4uLCAiY3RybCIpOwoJZGV2bV9pb3JlbWFwX3Jlc291
cmNlKCk7CglkZXZtX3JlZ21hcF9pbml0X21taW8oKTsKZm9yIHRoZSBvbGQgYmluZGluZy4KVGhl
IGFjdHVhbCBjb2RlYyAucmVzZXQgYW5kIHZhcmlhbnQgLnJ1bnRpbWVfcmVzdW1lIG9wcyBjb3Vs
ZCBiZQppZGVudGljYWwgdGhlbi4KCnJlZ2FyZHMKUGhpbGlwcApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
