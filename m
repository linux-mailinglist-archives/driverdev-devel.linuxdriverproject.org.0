Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E68931E004
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 21:14:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCFD486FBF;
	Wed, 17 Feb 2021 20:14:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LVypmIKiES0m; Wed, 17 Feb 2021 20:14:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F7F786FF9;
	Wed, 17 Feb 2021 20:14:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FF111BF3AB
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:14:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4CD0585188
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:14:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xcWjYhMLmWIu for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 20:14:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 82B1C8511F
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 20:14:03 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 56F9C1F40F2C
Message-ID: <022df43285f6b6dd6c6a5dfd4e80ac7694a5582e.camel@collabora.com>
Subject: Re: [PATCH v1 15/18] media: hantro: handle V4L2_PIX_FMT_HEVC_SLICE
 control
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:13:48 -0300
In-Reply-To: <20210217080306.157876-16-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-16-benjamin.gaignard@collabora.com>
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

T24gV2VkLCAyMDIxLTAyLTE3IGF0IDA5OjAzICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBNYWtlIHN1cmUgdGhhdCBWNEwyX1BJWF9GTVRfSEVWQ19TTElDRSBpcyBjb3JyZWN0bHkg
aGFuZGxlIGJ5IHY0bDIKPiBvZiB0aGUgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBBZHJpYW4gUmF0aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+
IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jIHwgMyArKy0KPiDC
oDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jCj4gaW5kZXggMWJjMTE4ZTM3
NWExLi4xNjA4YTNmNzhlYWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9oYW50cm9fdjRsMi5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fdjRsMi5jCj4gQEAgLTIzMiw3ICsyMzIsNyBAQCBzdGF0aWMgaW50IHZpZGlvY19nX2Zt
dF9jYXBfbXBsYW5lKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+IMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gMDsKPiDCoH0KPiDCoAo+IC1zdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNv
bnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gK3N0YXRpYyBpbnQgaGFudHJvX3RyeV9mbXQo
c3RydWN0IGhhbnRyb19jdHggKmN0eCwKClNwdXJpb3VzIGNoYW5nZT8KCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHY0bDJfcGl4X2Zv
cm1hdF9tcGxhbmUgKnBpeF9tcCwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBlbnVtIHY0bDJfYnVmX3R5cGUgdHlwZSkKPiDCoHsKPiBAQCAtMzkw
LDYgKzM5MCw3IEBAIGhhbnRyb191cGRhdGVfcmVxdWlyZXNfcmVxdWVzdChzdHJ1Y3QgaGFudHJv
X2N0eCAqY3R4LCB1MzIgZm91cmNjKQo+IMKgwqDCoMKgwqDCoMKgwqBjYXNlIFY0TDJfUElYX0ZN
VF9NUEVHMl9TTElDRToKPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSBWNEwyX1BJWF9GTVRfVlA4X0ZS
QU1FOgo+IMKgwqDCoMKgwqDCoMKgwqBjYXNlIFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNFOgo+ICvC
oMKgwqDCoMKgwqDCoGNhc2UgVjRMMl9QSVhfRk1UX0hFVkNfU0xJQ0U6Cj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBjdHgtPmZoLm0ybV9jdHgtPm91dF9xX2N0eC5xLnJlcXVpcmVz
X3JlcXVlc3RzID0gdHJ1ZTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFr
Owo+IMKgwqDCoMKgwqDCoMKgwqBkZWZhdWx0OgoKT3RoZXJ3aXNlIGxvb2tzIGdvb2QuCgpUaGFu
a3MsCkV6ZXF1aWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
