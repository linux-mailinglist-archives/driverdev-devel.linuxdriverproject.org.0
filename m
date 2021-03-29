Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C5B34D832
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 21:29:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 591F2402C4;
	Mon, 29 Mar 2021 19:29:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V-zDTJjjTXKs; Mon, 29 Mar 2021 19:29:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9072D402A6;
	Mon, 29 Mar 2021 19:29:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9619B1BF4D8
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 19:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8530A401FD
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 19:29:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoKFS9mmWbRT for <devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 19:28:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CA6F401FA
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 19:28:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3F7AA1F45515
Message-ID: <97b3722e5be95d269ebb57f85ac0318cc2c3f54e.camel@collabora.com>
Subject: Re: [PATCH v7 10/13] media: hantro: handle V4L2_PIX_FMT_HEVC_SLICE
 control
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Date: Mon, 29 Mar 2021 16:28:46 -0300
In-Reply-To: <20210329065743.11961-11-benjamin.gaignard@collabora.com>
References: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
 <20210329065743.11961-11-benjamin.gaignard@collabora.com>
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
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCAyMDIxLTAzLTI5IGF0IDA4OjU3ICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBNYWtlIHN1cmUgdGhhdCBWNEwyX1BJWF9GTVRfSEVWQ19TTElDRSBpcyBjb3JyZWN0bHkg
aGFuZGxlIGJ5IHY0bDIKPiBvZiB0aGUgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQt
Ynk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gwqBk
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMgfCAxICsKPiDCoDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFu
dHJvL2hhbnRyb192NGwyLmMKPiBpbmRleCA3N2Q3ZmU2MmNlODEuLjA2NTUzMjRmZDBkNCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiBAQCAtMzky
LDYgKzM5Miw3IEBAIGhhbnRyb191cGRhdGVfcmVxdWlyZXNfcmVxdWVzdChzdHJ1Y3QgaGFudHJv
X2N0eCAqY3R4LCB1MzIgZm91cmNjKQo+IMKgwqDCoMKgwqDCoMKgwqBjYXNlIFY0TDJfUElYX0ZN
VF9NUEVHMl9TTElDRToKPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSBWNEwyX1BJWF9GTVRfVlA4X0ZS
QU1FOgo+IMKgwqDCoMKgwqDCoMKgwqBjYXNlIFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNFOgo+ICvC
oMKgwqDCoMKgwqDCoGNhc2UgVjRMMl9QSVhfRk1UX0hFVkNfU0xJQ0U6Cj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBjdHgtPmZoLm0ybV9jdHgtPm91dF9xX2N0eC5xLnJlcXVpcmVz
X3JlcXVlc3RzID0gdHJ1ZTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFr
Owo+IMKgwqDCoMKgwqDCoMKgwqBkZWZhdWx0OgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
