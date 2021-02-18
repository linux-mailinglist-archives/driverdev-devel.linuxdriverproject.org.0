Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB7A31E868
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 11:15:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0A9486433;
	Thu, 18 Feb 2021 10:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XQ-Tlje0G38M; Thu, 18 Feb 2021 10:15:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1CBE863FF;
	Thu, 18 Feb 2021 10:15:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03DA41BF2B9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F2DA76059A
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vGAmY9TlYX1v for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 10:15:37 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id CDC23605E6; Thu, 18 Feb 2021 10:15:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C82966059A
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 10:15:35 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1lCgL8-0002zv-7T; Thu, 18 Feb 2021 11:15:18 +0100
Message-ID: <c029c980937ab50847bd0fcf86501e85bdb91fd3.camel@pengutronix.de>
Subject: Re: [PATCH v1 03/18] arm64: dts: imx8mq-evk: add reserve memory
 node for CMA region
From: Lucas Stach <l.stach@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org,  robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com,  gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com,  wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com,  adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com,  Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Date: Thu, 18 Feb 2021 11:15:13 +0100
In-Reply-To: <ab14f5a0bde2bdcd4bb0128f76e5a3ba8e7b0894.camel@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-4-benjamin.gaignard@collabora.com>
 <ab14f5a0bde2bdcd4bb0128f76e5a3ba8e7b0894.camel@collabora.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
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
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QW0gTWl0dHdvY2gsIGRlbSAxNy4wMi4yMDIxIHVtIDE2OjM5IC0wMzAwIHNjaHJpZWIgRXplcXVp
ZWwgR2FyY2lhOgo+IEhpIEJlbmphbWluLAo+IAo+IE9uIFdlZCwgMjAyMS0wMi0xNyBhdCAwOTow
MiArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiBEZWZpbmUgYWxsb2NhdGlvbiBy
YW5nZSBmb3IgdGhlIGRlZmF1bHQgQ01BIHJlZ2lvbi4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
QmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4g
Cj4gRGVzcGl0ZSBpdCBzZWVtcyBsaWtlIEkgc2lnbmVkLW9mZiB0aGlzIG9uZS4uLgo+IAo+ID4g
U2lnbmVkLW9mZi1ieTogQWRyaWFuIFJhdGl1IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNvbT4K
PiA+IC0tLQo+ID4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLmR0
cyB8IDE1ICsrKysrKysrKysrKysrKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1xLWV2ay5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZr
LmR0cwo+ID4gaW5kZXggODViMDQ1MjUzYTBlLi4wNDdkZmQ0YTFmZmQgMTAwNjQ0Cj4gPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLmR0cwo+ID4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWV2ay5kdHMKPiA+IEBAIC0yMSw2
ICsyMSwyMSBAQCBtZW1vcnlANDAwMDAwMDAgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZWcgPSA8MHgwMDAwMDAwMCAweDQwMDAwMDAwIDAgMHhjMDAwMDAwMD47Cj4gPiDC
oMKgwqDCoMKgwqDCoMKgfTsKPiA+IAo+ID4gwqAKPiA+ICvCoMKgwqDCoMKgwqDCoHJlc21lbTog
cmVzZXJ2ZWQtbWVtb3J5IHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjYWRk
cmVzcy1jZWxscyA9IDwyPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjc2l6
ZS1jZWxscyA9IDwyPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByYW5nZXM7
Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogZ2xvYmFsIGF1dG9j
b25maWd1cmVkIHJlZ2lvbiBmb3IgY29udGlndW91cyBhbGxvY2F0aW9ucyAqLwo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbnV4LGNtYSB7Cj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAic2hhcmVkLWRtYS1w
b29sIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV1c2FibGU7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHNpemUgPSA8MCAweDNjMDAwMDAwPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgYWxsb2MtcmFuZ2VzID0gPDAgMHg0MDAwMDAwMCAwIDB4NDAw
MDAwMDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBsaW51eCxjbWEtZGVmYXVsdDsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9
Owo+IAo+IC4uLiBJJ20gbm90IGEgZmFuIG9mIHRoZSBjaGFuZ2UgOikKPiAKPiBIb3BlZnVsbHkg
c29tZW9uZSBmcm9tIE5YUCBjYW4gcHJvdmlkZSBzb21lIGluc2lnaHQgaGVyZT8KPiAKPiBJZiBp
dCdzIGFic29sdXRlbHkgbmVlZGVkIGZvciB0aGUgVlBVLCB0aGVuIEkgZ3Vlc3MgaXQgc2hvdWxk
Cj4gYmUgMSkgdmVyeSB3ZWxsIGRvY3VtZW50ZWQgYW5kIDIpIG1vdmVkIHRvIHRoZSB0b3AtbG92
ZWwgZHRzaS4KPiAKPiBCdXQgaWYgd2UgY2FuIGRyb3AgaXQsIHRoYXQnZCBiZSBuaWNlci4KCldo
YXQncyB0aGUganVzdGlmaWNhdGlvbiBmb3IgdGhpcyBDTUEgYXJlYT8KCkkgY291bGQgb25seSBp
bWFnaW5lIHRoZSBETUEgYWRkcmVzc2luZyByZXN0cmljdGlvbnMgb24gdGhlIHBsYXRmb3JtLgpE
TUEgbWFzdGVycyBvbiB0aGUgaS5NWDhNUSBjYW4gbm90IGFjY2VzcyBtZW1vcnkgYmV5b25kIHRo
ZSA0R0IgbWFyawphbmQgMUdCIG9mIGFkZHJlc3Mgc3BhY2UgaXMgcmVzZXJ2ZWQgZm9yIE1NSU8s
IHNvIGlmIHlvdSBoYXZlIDRHQgppbnN0YWxsZWQgdGhlIHVwcGVyIDFHQiBvZiBEUkFNIGlzIG9u
bHkgYWNjZXNzaWJsZSB0byB0aGUgQ1BVLiBCdXQgdGhpcwpyZXN0cmljdGlvbiBpcyBhbHJlYWR5
IHByb3Blcmx5IGNvbW11bmljYXRlZCB0byB0aGUgTGludXggRE1BIGZyYW1ld29yawpieSB0aGUg
ZG1hLXJhbmdlcyBpbiB0aGUgdG9wIGxldmVsIFNvQyBidXMgbm9kZSBpbiB0aGUgRFQsIHNvIEkg
ZG9uJ3QKdGhpbmsgdGhpcyBDTUEgc2V0dXAgaXMgbmVjZXNzYXJ5LgoKUmVnYXJkcywKTHVjYXMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
