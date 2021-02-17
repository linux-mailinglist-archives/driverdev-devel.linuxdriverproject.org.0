Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A85731E061
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 21:31:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72DAF8633B;
	Wed, 17 Feb 2021 20:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c93TlfmTOVXK; Wed, 17 Feb 2021 20:31:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3C1C85A4B;
	Wed, 17 Feb 2021 20:31:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4238D1BF3AB
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E71C85187
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:31:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9HyHsCt_z8Rz for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 20:31:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 675D280ED1
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 20:31:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2B31F1F449DA
Message-ID: <339018869585eb2eb92cf16b765724a047eaef53.camel@collabora.com>
Subject: Re: [PATCH v1 10/18] media: hantro: Add helper functions for buffer
 information
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:31:30 -0300
In-Reply-To: <20210217080306.157876-11-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-11-benjamin.gaignard@collabora.com>
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
IEdhaWduYXJkIHdyb3RlOgo+IEFkZCBoZWxwIGZ1bmN0aW9ucyB0byByZXRyaWV2ZSBidWZmZXIg
YWRkcmVzcyBhbmQgc2l6ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8
YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBFemVxdWll
bCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQWRyaWFu
IFJhdGl1IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmggfCAxNiArKysrKysrKysrKysrKysrCj4gwqAxIGZp
bGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm8uaAo+IGluZGV4IDI1MjNjMGQwMTBkZi4uYTliODBiMmM5MTI0IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmgKPiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4gQEAgLTQzMCw2ICs0MzAsMjIgQEAgaGFu
dHJvX2dldF9kZWNfYnVmX2FkZHIoc3RydWN0IGhhbnRyb19jdHggKmN0eCwgc3RydWN0IHZiMl9i
dWZmZXIgKnZiKQo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdmIyX2RtYV9jb250aWdfcGxhbmVf
ZG1hX2FkZHIodmIsIDApOwo+IMKgfQo+IMKgCj4gK3N0YXRpYyBpbmxpbmUgc2l6ZV90Cj4gK2hh
bnRyb19nZXRfZGVjX2J1Zl9zaXplKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsIHN0cnVjdCB2YjJf
YnVmZmVyICp2YikKPiArewo+ICvCoMKgwqDCoMKgwqDCoGlmIChoYW50cm9fbmVlZHNfcG9zdHBy
b2MoY3R4LCBjdHgtPnZwdV9kc3RfZm10KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGN0eC0+cG9zdHByb2MuZGVjX3FbdmItPmluZGV4XS5zaXplOwo+ICvCoMKgwqDC
oMKgwqDCoHJldHVybiB2YjJfcGxhbmVfc2l6ZSh2YiwgMCk7Cj4gK30KPiArCj4gK3N0YXRpYyBp
bmxpbmUgdm9pZCAqCj4gK2hhbnRyb19nZXRfZGVjX2J1ZihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4
LCBzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gK3sKPiArwqDCoMKgwqDCoMKgwqBpZiAoaGFudHJv
X25lZWRzX3Bvc3Rwcm9jKGN0eCwgY3R4LT52cHVfZHN0X2ZtdCkpCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiBjdHgtPnBvc3Rwcm9jLmRlY19xW3ZiLT5pbmRleF0uY3B1
Owo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB2YjJfcGxhbmVfdmFkZHIodmIsIDApOwo+ICt9Cj4g
KwoKSXQgbWF5IHNvdW5kIGxpa2UgYSBuaXRwaWNrIGJ1dCBJIHRoaW5rIHlvdSBjb3VsZCBqdXN0
IHNxdWFzaCB0aGlzCmNoYW5nZSB3aGVyZSBpdCdzIG5lZWRlZC4gVGhhdCB3YXkgaXQncyBlYXNp
ZXIgdG8gcmV2aWV3IGFuZApzZWUgd2h5IHRoaXMgd2FzIGFkZGVkLgoKVGhhbmtzLApFemVxdWll
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
