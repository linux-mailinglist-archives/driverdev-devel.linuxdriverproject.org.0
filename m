Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6BE3B6509
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Jun 2021 17:19:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E06C340394;
	Mon, 28 Jun 2021 15:19:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zZzL129ha5AV; Mon, 28 Jun 2021 15:19:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13ECF402C4;
	Mon, 28 Jun 2021 15:19:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B3951BF301
 for <devel@linuxdriverproject.org>; Mon, 28 Jun 2021 15:18:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 06C374024F
 for <devel@linuxdriverproject.org>; Mon, 28 Jun 2021 15:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IHyl3G_yUR4y for <devel@linuxdriverproject.org>;
 Mon, 28 Jun 2021 15:18:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49F1D4022A
 for <devel@driverdev.osuosl.org>; Mon, 28 Jun 2021 15:18:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0B4E31F427D6
Message-ID: <276e3e43ba89ea996f89eb4109b0d50bc43d4d7f.camel@collabora.com>
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Lucas Stach
 <l.stach@pengutronix.de>, p.zabel@pengutronix.de, mchehab@kernel.org, 
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl,
 emil.l.velikov@gmail.com,  "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Jacky
 Bai <ping.bai@nxp.com>
Date: Mon, 28 Jun 2021 12:18:34 -0300
In-Reply-To: <24bea430-56d9-9a62-130d-1ed3830c1915@collabora.com>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
 <24bea430-56d9-9a62-130d-1ed3830c1915@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.3-1 
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 kernel@collabora.com, cphealy@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgQmVuamFtaW4sCgpPbiBNb24sIDIwMjEtMDYtMjggYXQgMTU6MzUgKzAyMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IAo+IExlIDE2LzA0LzIwMjEgw6AgMTI6NTQsIEx1Y2FzIFN0YWNo
IGEgw6ljcml0wqA6Cj4gPiBBbSBNaXR0d29jaCwgZGVtIDA3LjA0LjIwMjEgdW0gMDk6MzUgKzAy
MDAgc2NocmllYiBCZW5qYW1pbiBHYWlnbmFyZDoKPiA+ID4gSW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBzaGFyZSB0aGUgY29udHJvbCBoYXJkd2FyZSBibG9jayBiZXR3ZWVuCj4gPiA+IFZQVXMgdXNl
IGEgc3lzY29uIGluc3RlYWQgYSBpb3JlbWFwIGl0IGluIHRoZSBkcml2ZXIuCj4gPiA+IFRvIGtl
ZXAgdGhlIGNvbXBhdGliaWxpdHkgd2l0aCBvbGRlciBEVCBpZiAnbnhwLGlteDhtcS12cHUtY3Ry
bCcKPiA+ID4gcGhhbmRsZSBpcyBub3QgZm91bmQgbG9vayBhdCAnY3RybCcgcmVnLW5hbWUuCj4g
PiA+IFdpdGggdGhlIG1ldGhvZCBpdCBiZWNvbWVzIHVzZWxlc3MgdG8gcHJvdmlkZSBhIGxpc3Qg
b2YgcmVnaXN0ZXIKPiA+ID4gbmFtZXMgc28gcmVtb3ZlIGl0Lgo+ID4gU29ycnkgZm9yIHB1dHRp
bmcgYSBzcG9rZSBpbiB0aGUgd2hlZWwgYWZ0ZXIgbWFueSBpdGVyYXRpb25zIG9mIHRoZQo+ID4g
c2VyaWVzLgo+ID4gCj4gPiBXZSBqdXN0IGRpc2N1c3NlZCBhIHdheSBmb3J3YXJkIG9uIGhvdyB0
byBoYW5kbGUgdGhlIGNsb2NrcyBhbmQgcmVzZXRzCj4gPiBwcm92aWRlZCBieSB0aGUgYmxrY3Rs
IGJsb2NrIG9uIGkuTVg4TU0gYW5kIGxhdGVyIGFuZCBpdCBzZWVtcyB0aGVyZSBpcwo+ID4gYSBj
b25zZW5zdXMgb24gdHJ5aW5nIHRvIHByb3ZpZGUgdmlydHVhbCBwb3dlciBkb21haW5zIGZyb20g
YSBibGtjdGwKPiA+IGRyaXZlciwgY29udHJvbGxpbmcgY2xvY2tzIGFuZCByZXNldHMgZm9yIHRo
ZSBkZXZpY2VzIGluIHRoZSBwb3dlcgo+ID4gZG9tYWluLiBJIHdvdWxkIGxpa2UgdG8gYXZvaWQg
aW50cm9kdWNpbmcgeWV0IGFub3RoZXIgd2F5IG9mIGhhbmRsaW5nCj4gPiB0aGUgYmxrY3RsIGFu
ZCB0aHVzIHdvdWxkIGxpa2UgdG8gYWxpZ24gdGhlIGkuTVg4TVEgVlBVIGJsa2N0bCB3aXRoCj4g
PiB3aGF0IHdlIGFyZSBwbGFubmluZyB0byBkbyBvbiB0aGUgbGF0ZXIgY2hpcCBnZW5lcmF0aW9u
cy4KPiA+IAo+ID4gQ0MnaW5nIEphY2t5IEJhaSBhbmQgUGVuZyBGYW4gZnJvbSBOWFAsIGFzIHRo
ZXkgd2VyZSBnb2luZyB0byBnaXZlIHRoaXMKPiA+IHZpcnR1YWwgcG93ZXIgZG9tYWluIHRoaW5n
IGEgc2hvdC4KPiAKPiBIZXkgZ3V5cywKPiAKPiBJIG1heSBJIGhhdmUgbWlzcyB0aGVtIGJ1dCBJ
IGhhdmVuJ3Qgc2VlIHBhdGNoZXMgYWJvdXQgcG93ZXIgZG9tYWluIGZvciBJTVg4TVEKPiBWUFUg
Y29udHJvbCBibG9jayA/Cj4gSXMgaXQgc29tZXRoaW5nIHRoYXQgeW91IHN0aWxsIHBsYW4gdG8g
ZG8gPwo+IElmIG5vdCwgSSBjYW4gcmVzZW5kIG15IHBhdGNoZXMgd2hlcmUgSSB1c2Ugc3lzY29u
Lgo+IAoKUGxlYXNlIHNlZSAic29jOiBpbXg6IGFkZCBpLk1YIEJMSy1DVEwgc3VwcG9ydCIgWzFd
IHNlbnQgYnkgUGVuZwphIGNvdXBsZSB3ZWVrcyBhZ28uIEl0IGFkZHMgdGhlIFZQVU1JWCBmb3Ig
aS5NWDhNTSwgc28gaXQgc2VlbXMKdGhlIGJlc3Qgd2F5IGZvcndhcmQgaXMgdG8gZm9sbG93IHRo
YXQgZGVzaWduLCBleHRlbmRpbmcgaXQgZm9yCmkuTVg4TVEuCgpUaGF0J3Mgc3RpbGwgdW5kZXIg
ZGlzY3Vzc2lvbiwgYnV0IGhvcGVmdWxseSBpdCB3aWxsIGJlIHNvcnRlZCBvdXQgZm9yIHY1LjE1
LgoKU3BlYWtpbmcgb2YgaS5NWDhNTSwgSSBnb3QgYSByZXBvcnQgdGhhdCB0aGUgSGFudHJvIEcx
IGJsb2NrIG1vc3RseQp3b3JrLCBidXQgbmVlZHMgdG8gYmUgcmVzdHJpY3RlZCB0byAxOTIweDEw
ODAuIElmIHlvdSBjb3VsZCBhZGQgYSBuZXcKY29tcGF0aWJsZSBhbmQgdmFyaWFudCBmb3IgdGhh
dCwgbWF5YmUgd2UgY2FuIGZpbmQgc29tZW9uZSB0byB0ZXN0IGl0LgoKWzFdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvNzY4M2FiMGItZjkwNS1kZmYxLWFhNGYtNzZh
ZDYzOGRhNTY4QG9zcy5ueHAuY29tL1QvI21mNzNmZTRhMTNhZWMwYThlNjMzYTE0YTVkOWMyZDU2
MDk3OTlhY2I0CgpLaW5kbHksCkV6ZXF1aWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
