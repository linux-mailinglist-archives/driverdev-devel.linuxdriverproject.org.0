Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D1B3749C9
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 May 2021 23:01:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80A3A40248;
	Wed,  5 May 2021 21:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fLIywdLcRn6W; Wed,  5 May 2021 21:01:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1381C40244;
	Wed,  5 May 2021 21:01:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4B631BF34F
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 21:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9321740244
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 21:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4tgHhKdFZdzh for <devel@linuxdriverproject.org>;
 Wed,  5 May 2021 21:01:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE27D401F5
 for <devel@driverdev.osuosl.org>; Wed,  5 May 2021 21:01:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D21551F4322A
Message-ID: <f5d194db2bb70237c8b3b5072daac2d7ad404b84.camel@collabora.com>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org,  robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  festevam@gmail.com, lee.jones@linaro.org,
 gregkh@linuxfoundation.org,  mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org,  jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com
Date: Wed, 05 May 2021 18:01:25 -0300
In-Reply-To: <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
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
 cphealy@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAyMDIxLTA1LTA1IGF0IDE2OjU1ICswMjAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4g
T24gMjAvMDQvMjAyMSAxNDoxMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiBUaGUgSEVW
QyBIQU5UUk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBiaXRzIHRvIHNraXAg
YXQKPiA+IHRoZSBiZWdpbm5pbmcgb2YgdGhlIHNsaWNlIGhlYWRlci4KPiA+IFRoYXQgaXMgYSBo
YXJkd2FyZSBzcGVjaWZpYyByZXF1aXJlbWVudCBzbyBjcmVhdGUgYSBkZWRpY2F0ZWQgY29udHJv
bAo+ID4gZm9yIHRoaXMgcHVycG9zZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4g
R2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+IMKg
Li4uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0wqDCoMKgIHwgMTkgKysr
KysrKysrKysrKysrKysrKwo+ID4gwqAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2lu
ZGV4LnJzdMKgwqDCoMKgIHzCoCAxICsKPiA+IMKgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmjC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEzICsrKysrKysrKysrKysK
PiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspCj4gPiDCoGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8u
cnN0Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVk
aWEvZHJpdmVycy9oYW50cm8ucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlh
L2RyaXZlcnMvaGFudHJvLnJzdAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAw
MDAwMDAwMDAwMC4uY2Q5NzU0YjRlMDA1Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4gPiBAQCAt
MCwwICsxLDE5IEBACj4gPiArLi4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+
ICsKPiA+ICtIYW50cm8gdmlkZW8gZGVjb2RlciBkcml2ZXIKPiA+ICs9PT09PT09PT09PT09PT09
PT09PT09PT09PT0KPiA+ICsKPiA+ICtUaGUgSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyIGlt
cGxlbWVudHMgdGhlIGZvbGxvd2luZyBkcml2ZXItc3BlY2lmaWMgY29udHJvbHM6Cj4gPiArCj4g
PiArYGBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElDRV9IRUFERVJfU0tJUCAoaW50ZWdlcilgYAo+
ID4gK8KgwqDCoCBTcGVjaWZpZXMgdG8gSGFudHJvIEhFVkMgdmlkZW8gZGVjb2RlciBkcml2ZXIg
dGhlIG51bWJlciBvZiBkYXRhIChpbiBiaXRzKSB0bwo+ID4gK8KgwqDCoCBza2lwIGluIHRoZSBz
bGljZSBzZWdtZW50IGhlYWRlci4KPiA+ICvCoMKgwqAgSWYgbm9uLUlEUiwgdGhlIGJpdHMgdG8g
YmUgc2tpcHBlZCBnbyBmcm9tIHN5bnRheCBlbGVtZW50ICJwaWNfb3V0cHV0X2ZsYWciCj4gPiAr
wqDCoMKgIHRvIGJlZm9yZSBzeW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxfbXZwX2VuYWJs
ZWRfZmxhZyIuCj4gPiArwqDCoMKgIElmIElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUganVzdCAi
cGljX291dHB1dF9mbGFnIgo+ID4gK8KgwqDCoCAoc2VwYXJhdGVfY29sb3VyX3BsYW5lX2ZsYWcg
aXMgbm90IHN1cHBvcnRlZCkuCj4gCj4gSSdtIG5vdCB2ZXJ5IGtlZW4gb24gdGhpcy4gV2l0aG91
dCB0aGlzIGluZm9ybWF0aW9uIHRoZSB2aWRlbyBkYXRhIGNhbm5vdCBiZQo+IGRlY29kZWQsIG9y
IHdpbGwgaXQganVzdCBiZSBzdWJvcHRpbWFsPwo+IAo+IFRoZSBwcm9ibGVtIGlzIHRoYXQgYSBn
ZW5lcmljIGRlY29kZXIgd291bGQgaGF2ZSB0byBrbm93IHRoYXQgdGhlIEhXIGlzIGEgaGFudHJv
LAoKQXBwbGljYXRpb25zIGNhbiBqdXN0IHF1ZXJ5IHdoaWNoIGNvbnRyb2xzIGFyZSBleHBvc2Vk
IGJ5IGEgdmlkZW8gZGV2aWNlLAphbmQgaWYgdGhpcyBjb250cm9sIGlzIGZvdW5kLCB0aGVuIGl0
IG1lYW5zIGl0IG5lZWRzIHRvIGJlIHNldC4KCj4gYW5kIHRoZW4gY2FsbCB0aGlzIGNvbnRyb2wu
IElmIHRoZXkgZG9uJ3QgKGFuZCBhcmUgdGVzdGluZyBvbiBub24taGFudHJvIEhXKSwgdGhlbgo+
IGl0IHdvbid0IHdvcmssIHRodXMgZGVmZWF0aW5nIHRoZSBwdXJwb3NlIG9mIHRoZSBIVyBpbmRl
cGVuZGVudCBkZWNvZGVyIEFQSS4KPiAKPiBTaW5jZSBoYW50cm8gaXMgd2lkZWx5IHVzZWQsIGFu
ZCBpZiB0aGVyZSBpcyBubyBvdGhlciB3YXkgdG8gZG8gdGhpcyBiZXNpZGUgZXhwbGl0ZWx5Cj4g
c2V0dGluZyB0aGlzIGNvbnRyb2wsIHRoZW4gcGVyaGFwcyB0aGlzIHNob3VsZCBiZSBwYXJ0IG9m
IHRoZSBzdGFuZGFyZCBIRVZDIEFQSS4KPiBOb24taGFudHJvIGRyaXZlcnMgdGhhdCBkbyBub3Qg
bmVlZCB0aGlzIGNhbiBqdXN0IHNraXAgaXQuCj4gCgpUaGUgZGVjaXNpb24gdG8gbW92ZSBpdCBv
dXQgb2YgdGhlIEhFVkMgQVBJIGlzIG5vdCByZWFsbHkgdG8gYXZvaWQgc2V0dGluZyBpdC4KSW4g
dGhlIGVuZCwgbW9zdC9hbGwgYXBwbGljYXRpb25zIHdpbGwgZW5kIHVwIHJlcXVpcmVkIHRvIHNl
dCB0aGlzIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
