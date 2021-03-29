Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A8B34D82E
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 21:29:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3459825D3;
	Mon, 29 Mar 2021 19:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qh0IpdF78v44; Mon, 29 Mar 2021 19:29:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 089C58305A;
	Mon, 29 Mar 2021 19:28:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 896D71BF4D8
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 19:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77CA3401E8
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 19:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jv_C6O3coaCB for <devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 19:28:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D99F40199
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 19:28:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 09D661F454DE
Message-ID: <aa7fad73a4f06d94273a1e26d36a96f51c477929.camel@collabora.com>
Subject: Re: [PATCH v7 08/13] media: hantro: Only use postproc when post
 processed formats are defined
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Date: Mon, 29 Mar 2021 16:28:35 -0300
In-Reply-To: <20210329065743.11961-9-benjamin.gaignard@collabora.com>
References: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
 <20210329065743.11961-9-benjamin.gaignard@collabora.com>
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
ZToKPiBJZiB0aGUgdmFyaWFudCBkb2Vzbid0IG9mZmVydCBwb3N0cHJvY2Vzc2VkIGZvcm1hdHMg
bWFrZSBzdXJlIGl0IHdpbGwKPiBiZSBvay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBF
emVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IMKgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgOCAr
Ky0tLS0tLQo+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fcG9zdHByb2Mu
YyB8IDE0ICsrKysrKysrKysrKysrCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb192NGwyLmPCoMKgwqDCoCB8wqAgNCArKystCj4gwqAzIGZpbGVzIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmggYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyby5oCj4gaW5kZXggZWRiNDU2MWE2ODg3Li43YTVhZDkzNDY2YzggMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaAo+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmgKPiBAQCAtNDE0LDEyICs0MTQsOCBAQCBoYW50
cm9fZ2V0X2RzdF9idWYoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIHY0bDJfbTJtX25leHRfZHN0X2J1ZihjdHgtPmZoLm0ybV9jdHgpOwo+IMKgfQo+IMKg
Cj4gLXN0YXRpYyBpbmxpbmUgYm9vbAo+IC1oYW50cm9fbmVlZHNfcG9zdHByb2MoY29uc3Qgc3Ry
dWN0IGhhbnRyb19jdHggKmN0eCwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdCAqZm10KQo+IC17Cj4gLcKgwqDCoMKgwqDC
oMKgcmV0dXJuICFjdHgtPmlzX2VuY29kZXIgJiYgZm10LT5mb3VyY2MgIT0gVjRMMl9QSVhfRk1U
X05WMTI7Cj4gLX0KPiArYm9vbCBoYW50cm9fbmVlZHNfcG9zdHByb2MoY29uc3Qgc3RydWN0IGhh
bnRyb19jdHggKmN0eCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKmZtdCk7Cj4gwqAKPiDCoHN0YXRp
YyBpbmxpbmUgZG1hX2FkZHJfdAo+IMKgaGFudHJvX2dldF9kZWNfYnVmX2FkZHIoc3RydWN0IGhh
bnRyb19jdHggKmN0eCwgc3RydWN0IHZiMl9idWZmZXIgKnZiKQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19wb3N0cHJvYy5jIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9oYW50cm9fcG9zdHByb2MuYwo+IGluZGV4IDZkMmE4ZjJhOGYwYi4u
ZWQ4OTE2Yzk1MGE0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX3Bvc3Rwcm9jLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19wb3N0cHJvYy5jCj4gQEAgLTUwLDYgKzUwLDIwIEBAIGNvbnN0IHN0cnVjdCBoYW50cm9f
cG9zdHByb2NfcmVncyBoYW50cm9fZzFfcG9zdHByb2NfcmVncyA9IHsKPiDCoMKgwqDCoMKgwqDC
oMKgLmRpc3BsYXlfd2lkdGggPSB7RzFfUkVHX1BQX0RJU1BMQVlfV0lEVEgsIDAsIDB4ZmZmfSwK
PiDCoH07Cj4gwqAKPiArYm9vbCBoYW50cm9fbmVlZHNfcG9zdHByb2MoY29uc3Qgc3RydWN0IGhh
bnRyb19jdHggKmN0eCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKmZtdCkKPiArewo+ICvCoMKgwqDC
oMKgwqDCoHN0cnVjdCBoYW50cm9fZGV2ICp2cHUgPSBjdHgtPmRldjsKPiArCj4gK8KgwqDCoMKg
wqDCoMKgaWYgKGN0eC0+aXNfZW5jb2RlcikKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGZhbHNlOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBpZiAoIXZwdS0+dmFyaWFudC0+
cG9zdHByb2NfZm10cykKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZh
bHNlOwo+ICsKPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gZm10LT5mb3VyY2MgIT0gVjRMMl9QSVhf
Rk1UX05WMTI7Cj4gK30KPiArCj4gwqB2b2lkIGhhbnRyb19wb3N0cHJvY19lbmFibGUoc3RydWN0
IGhhbnRyb19jdHggKmN0eCkKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGhhbnRyb19k
ZXYgKnZwdSA9IGN0eC0+ZGV2Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRy
b192NGwyLmMKPiBpbmRleCAxYmMxMThlMzc1YTEuLjc3ZDdmZTYyY2U4MSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiBAQCAtNTUsNyArNTUsOSBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKgo+IMKgaGFudHJvX2dldF9wb3N0cHJv
Y19mb3JtYXRzKGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCAqbnVt
X2ZtdHMpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgaWYgKGN0eC0+aXNfZW5jb2Rlcikgewo+ICvC
oMKgwqDCoMKgwqDCoHN0cnVjdCBoYW50cm9fZGV2ICp2cHUgPSBjdHgtPmRldjsKPiArCj4gK8Kg
wqDCoMKgwqDCoMKgaWYgKGN0eC0+aXNfZW5jb2RlciB8fCAhdnB1LT52YXJpYW50LT5wb3N0cHJv
Y19mbXRzKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAqbnVtX2ZtdHMgPSAw
Owo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIE5VTEw7Cj4gwqDCoMKg
wqDCoMKgwqDCoH0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
