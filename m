Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A20632E4F9
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 10:36:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1EAB6FB74;
	Fri,  5 Mar 2021 09:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AKv2IPUdYQfT; Fri,  5 Mar 2021 09:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA0D06F5A8;
	Fri,  5 Mar 2021 09:36:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2369A1BF294
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 09:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 201806F5A8
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 09:35:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q_sjNbtY1uaS for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 09:35:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E2556FB6E
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 09:35:51 +0000 (UTC)
Received: from [IPv6:2a01:e0a:4cb:a870:b9e2:e9f:d661:5a2f] (unknown
 [IPv6:2a01:e0a:4cb:a870:b9e2:e9f:d661:5a2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 79EF21F468C5;
 Fri,  5 Mar 2021 09:35:47 +0000 (GMT)
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
To: Philipp Zabel <p.zabel@pengutronix.de>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
 <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
 <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <f6cbb1e4-f288-36d0-a188-041093821f66@collabora.com>
Date: Fri, 5 Mar 2021 10:35:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDAzLzAzLzIwMjEgw6AgMTc6MjUsIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBPbiBX
ZWQsIDIwMjEtMDMtMDMgYXQgMTY6MjAgKzAxMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+
PiBMZSAwMy8wMy8yMDIxIMOgIDE1OjE3LCBQaGlsaXBwIFphYmVsIGEgw6ljcml0IDoKPj4+IEhp
IEJlbmphbWluLAo+Pj4KPj4+IE9uIE1vbiwgMjAyMS0wMy0wMSBhdCAxNjoxNyArMDEwMCwgQmVu
amFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+Pj4gVGhlIHR3byBWUFVzIGluc2lkZSBJTVg4TVEgc2hh
cmUgdGhlIHNhbWUgY29udHJvbCBibG9jayB3aGljaCBjYW4gYmUgc2VlCj4+Pj4gYXMgYSByZXNl
dCBoYXJkd2FyZSBibG9jay4KPj4+IFRoaXMgaXNuJ3QgYSByZXNldCBjb250cm9sbGVyIHRob3Vn
aC4gVGhlIGNvbnRyb2wgYmxvY2sgYWxzbyBjb250YWlucwo+Pj4gY2xvY2sgZ2F0ZXMgb2Ygc29t
ZSBzb3J0IGFuZCBhIGZpbHRlciByZWdpc3RlciBmb3IgdGhlIGZlYXR1cmVzZXQgZnVzZXMuCj4+
PiBUaG9zZSBzaG91bGRuJ3QgYmUgbWFuaXB1bGF0ZWQgdmlhIHRoZSByZXNldCBBUEkuCj4+IFRo
ZXkgYXJlIGFsbCBwYXJ0IG9mIHRoZSBjb250cm9sIGJsb2NrIGFuZCBvZiB0aGUgcmVzZXQgcHJv
Y2VzcyBmb3IgdGhpcwo+PiBoYXJkd2FyZSB0aGF0IHdoeSBJIHB1dCB0aGVtIGhlcmUuIEkgZ3Vl
c3MgaXQgaXMgYm9yZGVyIGxpbmUgOi0pCj4gSSdtIHB1c2hpbmcgYmFjayB0byBrZWVwIHRoZSBy
ZXNldCBjb250cm9sIGZyYW1ld29yayBmb2N1c2VkIG9uCj4gY29udHJvbGxpbmcgcmVzZXQgbGlu
ZXMuIEV2ZXJ5IHNpZGUgZWZmZWN0IChzdWNoIGFzIHRoZSBhc3ltbWV0cmljIGNsb2NrCj4gdW5n
YXRpbmcpIGluIGEgcmFuZG9tIGRyaXZlciBtYWtlcyBpdCBoYXJkZXIgdG8gcmVhc29uIGFib3V0
IGJlaGF2aW91cgo+IGF0IHRoZSBBUEkgbGV2ZWwsIGFuZCB0byByZXZpZXcgcGF0Y2hlcyBmb3Ig
aGFyZHdhcmUgSSBhbSBub3QgZmFtaWxpYXIKPiB3aXRoLgo+Cj4+Pj4gSW4gb3JkZXIgdG8gYmUg
YWJsZSB0byBhZGQgdGhlIHNlY29uZCBWUFUgKGZvciBIRUNWIGRlY29kaW5nKSBpdCB3aWxsIGJl
Cj4+Pj4gbW9yZSBoYW5keSBpZiB0aGUgYm90aCBWUFUgZHJpdmVycyBpbnN0YW5jZSBkb24ndCBo
YXZlIHRvIHNoYXJlIHRoZQo+Pj4+IGNvbnRyb2wgYmxvY2sgcmVnaXN0ZXJzLiBUaGlzIGxlYWQg
dG8gaW1wbGVtZW50IGl0IGFzIGFuIGluZGVwZW5kIHJlc2V0Cj4+Pj4gZHJpdmVyIGFuZCB0byBj
aGFuZ2UgdGhlIFZQVSBkcml2ZXIgdG8gdXNlIGl0Lgo+Pj4gV2h5IG5vdCBzd2l0Y2ggdG8gYSBz
eXNjb24gcmVnbWFwIGZvciB0aGUgY29udHJvbCBibG9jaz8gVGhhdCBzaG91bGQKPj4+IGFsc28g
YWxsb3cgdG8ga2VlcCBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSB3aXRoIHRoZSBvbGQgYmluZGlu
ZyB3aXRoCj4+PiBtaW5pbWFsIGVmZm9ydC4KPj4gSSB3aWxsIGdpdmUgYSB0cnkgaW4gdGhpcyBk
aXJlY3Rpb24uCj4gVGhhbmsgeW91Lgo+Cj4+Pj4gUGxlYXNlIG5vdGUgdGhhdCB0aGlzIHNlcmll
cyBicmVhayB0aGUgY29tcGF0aWJpbGl0eSBiZXR3ZWVuIHRoZSBEVEIgYW5kCj4+Pj4ga2VybmVs
LiBUaGlzIGJyZWFrIGlzIGxpbWl0ZWQgdG8gSU1YOE1RIFNvQyBhbmQgaXMgZG9uZSB3aGVuIHRo
ZSBkcml2ZXIKPj4+PiBpcyBzdGlsbCBpbiBzdGFnaW5nIGRpcmVjdG9yeS4KPj4+IEkga25vdyBp
biB0aGlzIGNhc2Ugd2UgYXJlIHByZXR0eSBzdXJlIHRoZXJlIGFyZSBubyB1c2VycyBvZiB0aGlz
Cj4+PiBiaW5kaW5nIGV4Y2VwdCBmb3IgYSBzdGFnaW5nIGRyaXZlciwgYnV0IGl0IHdvdWxkIHN0
aWxsIGJlIG5pY2UgdG8ga2VlcAo+Pj4gc3VwcG9ydCBmb3IgdGhlIGRlcHJlY2F0ZWQgYmluZGlu
ZywgdG8gYXZvaWQgdGhlIHJlcXVpcmVtZW50IG9mIHVwZGF0aW5nCj4+PiBrZXJuZWwgYW5kIERU
IGluIGxvY2stc3RlcC4KPj4gSWYgSSB3YW50IHRvIHVzZSBhIHN5c2NvbiAob3IgYSByZXNldCkg
dGhlIGRyaXZlciBtdXN0IG5vdCBpb3JlbWFwIHRoZSAiY3RybCIKPj4gcmVnaXN0ZXJzLiBJdCBt
ZWFucyB0aGF0ICJjdHJsIiBoYXMgdG8gYmUgcmVtb3ZlZCBmcm9tIHRoZSBkcml2ZXIgcmVxdWVz
dGVkCj4+IHJlZy1uYW1lcyAoaW14OG1xX3JlZ19uYW1lc1tdKS4gRG9pbmcgdGhhdCBicmVhayB0
aGUga2VybmVsL0RUIGNvbXBhdGliaWxpdHkuCj4+IFNvbWVob3cgc3lzY29uIGFuZCAiY3RybCIg
YXJlIGV4Y2x1c2l2ZS4KPiBUaGUgd2F5IHRoZSBkcml2ZXIgaXMgc2V0IHVwIGN1cnJlbnRseSwg
eWVzLiBZb3UgY291bGQgYWRkIGEgYml0IG9mCj4gcGxhdGZvcm0gc3BlY2lmaWMgcHJvYmUgY29k
ZSwgdGhvdWdoLCB0aGF0IHdvdWxkIHNldCB1cCB0aGUgcmVnbWFwCj4gZWl0aGVyIGJ5IGNhbGxp
bmcKPiAJc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZSgpOwo+IGZvciB0aGUgbmV3IGJp
bmRpbmcsIG9yLCBpZiB0aGUgcGhhbmRsZSBpcyBub3QgYXZhaWxhYmxlLCBmYWxsIGJhY2sgdG8K
PiAJcGxhdGZvcm1fZ2V0X3Jlc291cmNlX2J5bmFtZSguLi4sICJjdHJsIik7Cj4gCWRldm1faW9y
ZW1hcF9yZXNvdXJjZSgpOwo+IAlkZXZtX3JlZ21hcF9pbml0X21taW8oKTsKPiBmb3IgdGhlIG9s
ZCBiaW5kaW5nLgo+IFRoZSBhY3R1YWwgY29kZWMgLnJlc2V0IGFuZCB2YXJpYW50IC5ydW50aW1l
X3Jlc3VtZSBvcHMgY291bGQgYmUKPiBpZGVudGljYWwgdGhlbi4KCkkgbWFkZSBpdCB3b3JrcyB3
aXRoIHN5c2NvbiBhbmQgeW91ciBwcm9wb3NhbC4KVGhlIG5leHQgdmVyc2lvbiBvZiB0aGUgcGF0
Y2hlcyB3aWxsIGJlIHdpdGhvdXQgcmVzZXQgYW5kIHdvbid0IGJyZWFrCkRUIGNvbXBhdGliaWxp
dHkuCgpUaGFua3MgZm9yIHlvdXIgaGVscCwKQmVuamFtaW4KCj4KPiByZWdhcmRzCj4gUGhpbGlw
cAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
