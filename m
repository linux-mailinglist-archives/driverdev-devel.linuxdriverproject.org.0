Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E8334D815
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 21:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE9F083A95;
	Mon, 29 Mar 2021 19:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMgXkhIE6_oH; Mon, 29 Mar 2021 19:28:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBC9A82BF5;
	Mon, 29 Mar 2021 19:28:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF42F1BF4D8
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 19:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E61F1607CF
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 19:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YcnxvKAER7WX for <devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 19:27:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6300607CC
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 19:27:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 577E61F454DE
Message-ID: <3e57b10998f610259d3d9702307ce30b744623a0.camel@collabora.com>
Subject: Re: [PATCH v7 04/13] media: hevc: Add fields and flags for hevc PPS
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Date: Mon, 29 Mar 2021 16:27:31 -0300
In-Reply-To: <20210329065743.11961-5-benjamin.gaignard@collabora.com>
References: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
 <20210329065743.11961-5-benjamin.gaignard@collabora.com>
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
ZToKPiBBZGQgZmllbGRzIGFuZCBmbGFncyBhcyB0aGV5IGFyZSBkZWZpbmVkIGluCj4gNy40LjMu
My4xICJHZW5lcmFsIHBpY3R1cmUgcGFyYW1ldGVyIHNldCBSQlNQIHNlbWFudGljcyBvZiB0aGUK
PiBILjI2NSBJVFUgc3BlY2lmaWNhdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBF
emVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IMKgLi4uL3Vz
ZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3TCoMKgwqAgfCAxNCArKysr
KysrKysrKysrKwo+IMKgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmjCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQgKysrKwo+IMKgMiBmaWxlcyBj
aGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
dXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCBiL0RvY3VtZW50YXRp
b24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdAo+IGluZGV4IDE4
OGFlZjhlNDBkMC4uOTIzMTRhZWM2NTVhIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vdXNl
cnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdAo+ICsrKyBiL0RvY3VtZW50
YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdAo+IEBAIC0y
OTY3LDYgKzI5NjcsMTIgQEAgZW51bSB2NGwyX21wZWdfdmlkZW9faGV2Y19zaXplX29mX2xlbmd0
aF9maWVsZCAtCj4gwqDCoMKgwqAgKiAtIF9fdTgKPiDCoMKgwqDCoMKgwqAgLSBgYG51bV9leHRy
YV9zbGljZV9oZWFkZXJfYml0c2BgCj4gwqDCoMKgwqDCoMKgIC0KPiArwqDCoMKgICogLSBfX3U4
Cj4gK8KgwqDCoMKgwqAgLSBgYG51bV9yZWZfaWR4X2wwX2RlZmF1bHRfYWN0aXZlX21pbnVzMWBg
Cj4gK8KgwqDCoMKgwqAgLSBTcGVjaWZpZXMgdGhlIGluZmVycmVkIHZhbHVlIG9mIG51bV9yZWZf
aWR4X2wwX2FjdGl2ZV9taW51czEKPiArwqDCoMKgICogLSBfX3U4Cj4gK8KgwqDCoMKgwqAgLSBg
YG51bV9yZWZfaWR4X2wxX2RlZmF1bHRfYWN0aXZlX21pbnVzMWBgCj4gK8KgwqDCoMKgwqAgLSBT
cGVjaWZpZXMgdGhlIGluZmVycmVkIHZhbHVlIG9mIG51bV9yZWZfaWR4X2wxX2FjdGl2ZV9taW51
czEKPiDCoMKgwqDCoCAqIC0gX19zOAo+IMKgwqDCoMKgwqDCoCAtIGBgaW5pdF9xcF9taW51czI2
YGAKPiDCoMKgwqDCoMKgwqAgLQo+IEBAIC0zMDc3LDYgKzMwODMsMTQgQEAgZW51bSB2NGwyX21w
ZWdfdmlkZW9faGV2Y19zaXplX29mX2xlbmd0aF9maWVsZCAtCj4gwqDCoMKgwqAgKiAtIGBgVjRM
Ml9IRVZDX1BQU19GTEFHX1NMSUNFX1NFR01FTlRfSEVBREVSX0VYVEVOU0lPTl9QUkVTRU5UYGAK
PiDCoMKgwqDCoMKgwqAgLSAweDAwMDQwMDAwCj4gwqDCoMKgwqDCoMKgIC0KPiArwqDCoMKgICog
LSBgYFY0TDJfSEVWQ19QUFNfRkxBR19ERUJMT0NLSU5HX0ZJTFRFUl9DT05UUk9MX1BSRVNFTlRg
YAo+ICvCoMKgwqDCoMKgIC0gMHgwMDA4MDAwMAo+ICvCoMKgwqDCoMKgIC0gU3BlY2lmaWVzIHRo
ZSBwcmVzZW5jZSBvZiBkZWJsb2NraW5nIGZpbHRlciBjb250cm9sIHN5bnRheCBlbGVtZW50cyBp
bgo+ICvCoMKgwqDCoMKgwqDCoCB0aGUgUFBTCj4gK8KgwqDCoCAqIC0gYGBWNEwyX0hFVkNfUFBT
X0ZMQUdfVU5JRk9STV9TUEFDSU5HYGAKPiArwqDCoMKgwqDCoCAtIDB4MDAxMDAwMDAKPiArwqDC
oMKgwqDCoCAtIFNwZWNpZmllcyB0aGF0IHRpbGUgY29sdW1uIGJvdW5kYXJpZXMgYW5kIGxpa2V3
aXNlIHRpbGUgcm93IGJvdW5kYXJpZXMKPiArwqDCoMKgwqDCoMKgwqAgYXJlIGRpc3RyaWJ1dGVk
IHVuaWZvcm1seSBhY3Jvc3MgdGhlIHBpY3R1cmUKPiDCoAo+IMKgLi4gcmF3OjogbGF0ZXgKPiDC
oAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaCBiL2luY2x1ZGUvbWVk
aWEvaGV2Yy1jdHJscy5oCj4gaW5kZXggYjRjYjJlZjAyZjE3Li4wMDNmODE5ZWNiMjYgMTAwNjQ0
Cj4gLS0tIGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPiArKysgYi9pbmNsdWRlL21lZGlh
L2hldmMtY3RybHMuaAo+IEBAIC0xMDAsMTAgKzEwMCwxNCBAQCBzdHJ1Y3QgdjRsMl9jdHJsX2hl
dmNfc3BzIHsKPiDCoCNkZWZpbmUgVjRMMl9IRVZDX1BQU19GTEFHX1BQU19ESVNBQkxFX0RFQkxP
Q0tJTkdfRklMVEVSwqDCoMKgwqDCoMKgwqAoMVVMTCA8PCAxNikKPiDCoCNkZWZpbmUgVjRMMl9I
RVZDX1BQU19GTEFHX0xJU1RTX01PRElGSUNBVElPTl9QUkVTRU5UwqDCoMKgwqDCoMKgwqDCoMKg
wqAoMVVMTCA8PCAxNykKPiDCoCNkZWZpbmUgVjRMMl9IRVZDX1BQU19GTEFHX1NMSUNFX1NFR01F
TlRfSEVBREVSX0VYVEVOU0lPTl9QUkVTRU5UICgxVUxMIDw8IDE4KQo+ICsjZGVmaW5lIFY0TDJf
SEVWQ19QUFNfRkxBR19ERUJMT0NLSU5HX0ZJTFRFUl9DT05UUk9MX1BSRVNFTlTCoMKgwqAoMVVM
TCA8PCAxOSkKPiArI2RlZmluZSBWNEwyX0hFVkNfUFBTX0ZMQUdfVU5JRk9STV9TUEFDSU5HwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKDFVTEwgPDwgMjApCj4gwqAK
PiDCoHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19wcHMgewo+IMKgwqDCoMKgwqDCoMKgwqAvKiBJU08v
SUVDIDIzMDA4LTIsIElUVS1UIFJlYy4gSC4yNjU6IFBpY3R1cmUgcGFyYW1ldGVyIHNldCAqLwo+
IMKgwqDCoMKgwqDCoMKgwqBfX3U4wqDCoMKgwqBudW1fZXh0cmFfc2xpY2VfaGVhZGVyX2JpdHM7
Cj4gK8KgwqDCoMKgwqDCoMKgX191OMKgwqDCoMKgbnVtX3JlZl9pZHhfbDBfZGVmYXVsdF9hY3Rp
dmVfbWludXMxOwo+ICvCoMKgwqDCoMKgwqDCoF9fdTjCoMKgwqDCoG51bV9yZWZfaWR4X2wxX2Rl
ZmF1bHRfYWN0aXZlX21pbnVzMTsKPiDCoMKgwqDCoMKgwqDCoMKgX19zOMKgwqDCoMKgaW5pdF9x
cF9taW51czI2Owo+IMKgwqDCoMKgwqDCoMKgwqBfX3U4wqDCoMKgwqBkaWZmX2N1X3FwX2RlbHRh
X2RlcHRoOwo+IMKgwqDCoMKgwqDCoMKgwqBfX3M4wqDCoMKgwqBwcHNfY2JfcXBfb2Zmc2V0OwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
