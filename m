Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFD031DFFE
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 21:11:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 190BD86F5E;
	Wed, 17 Feb 2021 20:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dYAFMMYPdZpi; Wed, 17 Feb 2021 20:11:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 916C586187;
	Wed, 17 Feb 2021 20:11:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 670141BF3AB
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 610AF6058F
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MmDB66OSFOz7 for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 20:11:45 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 2042F60595; Wed, 17 Feb 2021 20:11:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F33B6058F
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 20:11:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D312B1F45878
Message-ID: <361ec02b1af1093684dfd33806025f3d044fc6e2.camel@collabora.com>
Subject: Re: [PATCH v1 06/18] media: hantro: Make sure that ctx->codex_ops
 is set
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:11:28 -0300
In-Reply-To: <20210217080306.157876-7-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-7-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAyMDIxLTAyLTE3IGF0IDA5OjAyICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBEbyBub3QgdHJ5IHRvIGNhbGwgY3R4LT5jb2RlY19vcHMtPmRvbmUgaWYgY3R4LT5jb2Rl
Y19vcHMgaXMgbm90IHNldC4KPiAKCklmIGNvZGVjX29wcyBpcyBub3Qgc2V0IGZvciBhIGNvZGVj
IHZhcmlhbnQsCnRoaW5ncyB3aWxsIGdvIHNvdXRoIHJlYWxseSBmYXN0LiBTZWUgaGFudHJvX3N0
YXJ0X3N0cmVhbWluZwpmb3IgaW5zdGFuY2UuCgpJIHRoaW5rIHlvdSBjYW4ganVzdCBkcm9wIHRo
aXMgcGF0Y2guCgpUaGFua3MsCkV6ZXF1aWVsCgo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBBZHJpYW4gUmF0aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+IMKgZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgfCAzICsrLQo+IMKgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gaW5kZXggMGQ1ODIwOWZjNTVjLi4wNTcw
MDQ3YzdmYTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50
cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYu
Ywo+IEBAIC05Myw3ICs5Myw4IEBAIHZvaWQgaGFudHJvX2lycV9kb25lKHN0cnVjdCBoYW50cm9f
ZGV2ICp2cHUsCj4gwqDCoMKgwqDCoMKgwqDCoCAqIGFuZCB3aWxsIHRha2UgY2FyZSBvZiBmaW5p
c2hpbmcgdGhlIGpvYi4KPiDCoMKgwqDCoMKgwqDCoMKgICovCj4gwqDCoMKgwqDCoMKgwqDCoGlm
IChjYW5jZWxfZGVsYXllZF93b3JrKCZ2cHUtPndhdGNoZG9nX3dvcmspKSB7Cj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChyZXN1bHQgPT0gVkIyX0JVRl9TVEFURV9ET05FICYm
IGN0eC0+Y29kZWNfb3BzLT5kb25lKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
ZiAocmVzdWx0ID09IFZCMl9CVUZfU1RBVEVfRE9ORSAmJgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY3R4LT5jb2RlY19vcHMgJiYgY3R4LT5jb2RlY19vcHMtPmRvbmUp
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3R4LT5j
b2RlY19vcHMtPmRvbmUoY3R4KTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGhh
bnRyb19qb2JfZmluaXNoKHZwdSwgY3R4LCByZXN1bHQpOwo+IMKgwqDCoMKgwqDCoMKgwqB9CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
