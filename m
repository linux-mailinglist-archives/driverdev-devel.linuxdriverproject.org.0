Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E7231EB1E
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 15:52:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E00B872DC;
	Thu, 18 Feb 2021 14:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PhCpHktVIoo7; Thu, 18 Feb 2021 14:52:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BC596872D1;
	Thu, 18 Feb 2021 14:52:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52BBE1BF3C3
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 14:52:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 49DB360631
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 14:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UXGbqsHjcfle for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 14:52:05 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 6AB93605F9; Thu, 18 Feb 2021 14:52:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F43A605F9
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 14:52:03 +0000 (UTC)
Received: from [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e] (unknown
 [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 786EB1F45CD3;
 Thu, 18 Feb 2021 14:52:00 +0000 (GMT)
Subject: Re: [PATCH v1 11/18] media: hantro: Add helper function for auxiliary
 buffers allocation
To: Ezequiel Garcia <ezequiel@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-12-benjamin.gaignard@collabora.com>
 <c10b0612d6d624c37750b16d611e3554dc41f151.camel@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <9646b54e-786f-1f0b-9110-8e7b9b6cab93@collabora.com>
Date: Thu, 18 Feb 2021 15:51:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c10b0612d6d624c37750b16d611e3554dc41f151.camel@collabora.com>
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
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDE3LzAyLzIwMjEgw6AgMjE6NDIsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluLAo+Cj4gT24gV2VkLCAyMDIxLTAyLTE3IGF0IDA5OjAyICswMTAwLCBCZW5qYW1p
biBHYWlnbmFyZCB3cm90ZToKPj4gQWRkIGhlbHBlciBmdW5jdGlvbnMgdG8gYWxsb2NhdGUgYW5k
IGZyZWUgYXV4aWxpYXJ5IGJ1ZmZlcnMuCj4+IFRoZXNlIGJ1ZmZlcnMgYXJlbid0IGZvciBmcmFt
ZXMgYnV0IGFyZSBuZWVkZWQgYnkgdGhlIGhhcmR3YXJlCj4+IHRvIHN0b3JlIHNjYWxpbmcgbWF0
cml4LCB0aWxlcyBzaXplLCBib3JkZXIgZmlsdGVycyBldGMuLi4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4K
Pj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFJhdGl1IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNv
bT4KPj4gLS0tCj4+ICDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmggfCAy
NCArKysrKysrKysrKysrKysrKysrKysrKysKPj4gIMKgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2Vy
dGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvLmggYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4+IGluZGV4
IGE5YjgwYjJjOTEyNC4uN2Y4NDJlZGJjMzQxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvLmgKPj4gQEAgLTQ0Niw2ICs0NDYsMzAgQEAgaGFudHJvX2dldF9kZWNfYnVm
KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsIHN0cnVjdCB2YjJfYnVmZmVyICp2YikKPj4gIMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gdmIyX3BsYW5lX3ZhZGRyKHZiLCAwKTsKPj4gIMKgfQo+PiAgIAo+
PiArc3RhdGljIGlubGluZSBpbnQKPj4gK2hhbnRyb19hdXhfYnVmX2FsbG9jKHN0cnVjdCBoYW50
cm9fZGV2ICp2cHUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgaGFudHJvX2F1eF9idWYgKmJ1Ziwgc2l6ZV90IHNpemUpCj4+ICt7Cj4gQ2FuIHlvdSBh
ZGQgY29udmVydCB0aGUgZG1hX2FsbG9jXyBjYWxscyBpbiB0aGUgZHJpdmVyLAo+IGFuZCBzcXVh
c2ggaXQgaW4gdGhpcyBwYXRjaD8KPgo+IEkuZS4gaGFudHJvX2gyNjRfZGVjX2luaXQsIGhhbnRy
b192cDhfZGVjX2luaXQsIGV0Yy4KClN1cmUgSSB3aWxsIHRoYXQgaW4gdjIuCkJlbmphbWluCgo+
Cj4gVGhhbmtzIQo+IEV6ZXF1aWVsCj4KPj4gK8KgwqDCoMKgwqDCoMKgYnVmLT5jcHUgPSBkbWFf
YWxsb2NfY29oZXJlbnQodnB1LT5kZXYsIHNpemUsICZidWYtPmRtYSwgR0ZQX0tFUk5FTCk7Cj4+
ICvCoMKgwqDCoMKgwqDCoGlmICghYnVmLT5jcHUpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm4gLUVOT01FTTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqBidWYtPnNpemUg
PSBzaXplOwo+PiArwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPj4gK30KPj4gKwo+PiArc3RhdGlj
IGlubGluZSB2b2lkCj4+ICtoYW50cm9fYXV4X2J1Zl9mcmVlKHN0cnVjdCBoYW50cm9fZGV2ICp2
cHUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGhhbnRy
b19hdXhfYnVmICpidWYpCj4+ICt7Cj4+ICvCoMKgwqDCoMKgwqDCoGlmIChidWYtPmNwdSkKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYV9mcmVlX2NvaGVyZW50KHZwdS0+ZGV2
LCBidWYtPnNpemUsIGJ1Zi0+Y3B1LCBidWYtPmRtYSk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKg
YnVmLT5jcHUgPSBOVUxMOwo+PiArwqDCoMKgwqDCoMKgwqBidWYtPmRtYSA9IDA7Cj4+ICvCoMKg
wqDCoMKgwqDCoGJ1Zi0+c2l6ZSA9IDA7Cj4+ICt9Cj4+ICsKPj4gIMKgdm9pZCBoYW50cm9fcG9z
dHByb2NfZGlzYWJsZShzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KTsKPj4gIMKgdm9pZCBoYW50cm9f
cG9zdHByb2NfZW5hYmxlKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpOwo+PiAgwqB2b2lkIGhhbnRy
b19wb3N0cHJvY19mcmVlKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpOwo+Cj4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
