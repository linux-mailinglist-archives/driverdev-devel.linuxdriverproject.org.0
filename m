Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7DD31E0A4
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 21:43:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A22DC605CB
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 20:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KVzuI7ksdnvB for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 20:43:07 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 55517605C8; Wed, 17 Feb 2021 20:43:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7376060598;
	Wed, 17 Feb 2021 20:42:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0761BF3AB
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D21B60598
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hsfQdUCtOgj2 for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 20:42:36 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 6A57D6059A; Wed, 17 Feb 2021 20:42:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CAA0360598
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 20:42:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id EC2C61F450C4
Message-ID: <c10b0612d6d624c37750b16d611e3554dc41f151.camel@collabora.com>
Subject: Re: [PATCH v1 11/18] media: hantro: Add helper function for
 auxiliary buffers allocation
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:42:21 -0300
In-Reply-To: <20210217080306.157876-12-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-12-benjamin.gaignard@collabora.com>
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

SGkgQmVuamFtaW4sCgpPbiBXZWQsIDIwMjEtMDItMTcgYXQgMDk6MDIgKzAxMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IEFkZCBoZWxwZXIgZnVuY3Rpb25zIHRvIGFsbG9jYXRlIGFuZCBm
cmVlIGF1eGlsaWFyeSBidWZmZXJzLgo+IFRoZXNlIGJ1ZmZlcnMgYXJlbid0IGZvciBmcmFtZXMg
YnV0IGFyZSBuZWVkZWQgYnkgdGhlIGhhcmR3YXJlCj4gdG8gc3RvcmUgc2NhbGluZyBtYXRyaXgs
IHRpbGVzIHNpemUsIGJvcmRlciBmaWx0ZXJzIGV0Yy4uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJl
bmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBBZHJpYW4gUmF0aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPgo+IC0t
LQo+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaCB8IDI0ICsrKysrKysr
KysrKysrKysrKysrKysrKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaCBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmgKPiBpbmRleCBhOWI4MGIyYzkxMjQu
LjdmODQyZWRiYzM0MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyby5oCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaAo+
IEBAIC00NDYsNiArNDQ2LDMwIEBAIGhhbnRyb19nZXRfZGVjX2J1ZihzdHJ1Y3QgaGFudHJvX2N0
eCAqY3R4LCBzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiB2
YjJfcGxhbmVfdmFkZHIodmIsIDApOwo+IMKgfQo+IMKgCj4gK3N0YXRpYyBpbmxpbmUgaW50Cj4g
K2hhbnRyb19hdXhfYnVmX2FsbG9jKHN0cnVjdCBoYW50cm9fZGV2ICp2cHUsCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBoYW50cm9fYXV4X2J1ZiAqYnVm
LCBzaXplX3Qgc2l6ZSkKPiArewoKQ2FuIHlvdSBhZGQgY29udmVydCB0aGUgZG1hX2FsbG9jXyBj
YWxscyBpbiB0aGUgZHJpdmVyLAphbmQgc3F1YXNoIGl0IGluIHRoaXMgcGF0Y2g/CgpJLmUuIGhh
bnRyb19oMjY0X2RlY19pbml0LCBoYW50cm9fdnA4X2RlY19pbml0LCBldGMuCgpUaGFua3MhCkV6
ZXF1aWVsCgo+ICvCoMKgwqDCoMKgwqDCoGJ1Zi0+Y3B1ID0gZG1hX2FsbG9jX2NvaGVyZW50KHZw
dS0+ZGV2LCBzaXplLCAmYnVmLT5kbWEsIEdGUF9LRVJORUwpOwo+ICvCoMKgwqDCoMKgwqDCoGlm
ICghYnVmLT5jcHUpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRU5P
TUVNOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBidWYtPnNpemUgPSBzaXplOwo+ICvCoMKgwqDCoMKg
wqDCoHJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW5saW5lIHZvaWQKPiAraGFudHJvX2F1
eF9idWZfZnJlZShzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGhhbnRyb19hdXhfYnVmICpidWYpCj4gK3sKPiArwqDC
oMKgwqDCoMKgwqBpZiAoYnVmLT5jcHUpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGRtYV9mcmVlX2NvaGVyZW50KHZwdS0+ZGV2LCBidWYtPnNpemUsIGJ1Zi0+Y3B1LCBidWYtPmRt
YSk7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGJ1Zi0+Y3B1ID0gTlVMTDsKPiArwqDCoMKgwqDCoMKg
wqBidWYtPmRtYSA9IDA7Cj4gK8KgwqDCoMKgwqDCoMKgYnVmLT5zaXplID0gMDsKPiArfQo+ICsK
PiDCoHZvaWQgaGFudHJvX3Bvc3Rwcm9jX2Rpc2FibGUoc3RydWN0IGhhbnRyb19jdHggKmN0eCk7
Cj4gwqB2b2lkIGhhbnRyb19wb3N0cHJvY19lbmFibGUoc3RydWN0IGhhbnRyb19jdHggKmN0eCk7
Cj4gwqB2b2lkIGhhbnRyb19wb3N0cHJvY19mcmVlKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpOwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
