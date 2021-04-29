Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FB336EB79
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Apr 2021 15:43:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 281646F6EA;
	Thu, 29 Apr 2021 13:43:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oObomdwltRy2; Thu, 29 Apr 2021 13:43:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CFAF6069E;
	Thu, 29 Apr 2021 13:43:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 245661BF29A
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 13:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 131EA8466A
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 13:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9I2O2W_nH_wK for <devel@linuxdriverproject.org>;
 Thu, 29 Apr 2021 13:43:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6156184664
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 13:43:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0147E1F434AA
Message-ID: <47800413ff99225e39f46c841bfb8061aee6d1b6.camel@collabora.com>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Date: Thu, 29 Apr 2021 10:43:25 -0300
In-Reply-To: <20210420121046.181889-7-benjamin.gaignard@collabora.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
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

T24gVHVlLCAyMDIxLTA0LTIwIGF0IDE0OjEwICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBUaGUgSEVWQyBIQU5UUk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBi
aXRzIHRvIHNraXAgYXQKPiB0aGUgYmVnaW5uaW5nIG9mIHRoZSBzbGljZSBoZWFkZXIuCj4gVGhh
dCBpcyBhIGhhcmR3YXJlIHNwZWNpZmljIHJlcXVpcmVtZW50IHNvIGNyZWF0ZSBhIGRlZGljYXRl
ZCBjb250cm9sCj4gZm9yIHRoaXMgcHVycG9zZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1p
biBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5
OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IMKgLi4u
L3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0wqDCoMKgIHwgMTkgKysrKysr
KysrKysrKysrKysrKwo+IMKgLi4uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5y
c3TCoMKgwqDCoCB8wqAgMSArCj4gwqBpbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTMgKysrKysrKysrKysrKwo+IMKgMyBm
aWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspCj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+IAo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50
cm8ucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJv
LnJzdAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5jZDk3NTRi
NGUwMDUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+IEBAIC0wLDAgKzEsMTkgQEAKPiArLi4gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiArCj4gK0hhbnRybyB2aWRlbyBkZWNvZGVyIGRy
aXZlcgo+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiArCj4gK1RoZSBIYW50cm8gdmlk
ZW8gZGVjb2RlciBkcml2ZXIgaW1wbGVtZW50cyB0aGUgZm9sbG93aW5nIGRyaXZlci1zcGVjaWZp
YyBjb250cm9sczoKPiArCj4gK2BgVjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NL
SVAgKGludGVnZXIpYGAKPiArwqDCoMKgIFNwZWNpZmllcyB0byBIYW50cm8gSEVWQyB2aWRlbyBk
ZWNvZGVyIGRyaXZlciB0aGUgbnVtYmVyIG9mIGRhdGEgKGluIGJpdHMpIHRvCj4gK8KgwqDCoCBz
a2lwIGluIHRoZSBzbGljZSBzZWdtZW50IGhlYWRlci4KPiArwqDCoMKgIElmIG5vbi1JRFIsIHRo
ZSBiaXRzIHRvIGJlIHNraXBwZWQgZ28gZnJvbSBzeW50YXggZWxlbWVudCAicGljX291dHB1dF9m
bGFnIgo+ICvCoMKgwqAgdG8gYmVmb3JlIHN5bnRheCBlbGVtZW50ICJzbGljZV90ZW1wb3JhbF9t
dnBfZW5hYmxlZF9mbGFnIi4KPiArwqDCoMKgIElmIElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUg
anVzdCAicGljX291dHB1dF9mbGFnIgo+ICvCoMKgwqAgKHNlcGFyYXRlX2NvbG91cl9wbGFuZV9m
bGFnIGlzIG5vdCBzdXBwb3J0ZWQpLgo+ICsKPiArLi4gbm90ZTo6Cj4gKwo+ICvCoMKgwqDCoMKg
wqDCoCBUaGlzIGNvbnRyb2wgaXMgbm90IHlldCBwYXJ0IG9mIHRoZSBwdWJsaWMga2VybmVsIEFQ
SSBhbmQKPiArwqDCoMKgwqDCoMKgwqAgaXQgaXMgZXhwZWN0ZWQgdG8gY2hhbmdlLgo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5y
c3QgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QK
PiBpbmRleCAxYTkwMzhmNWY5ZmEuLjEyZTNjNTEyZDcxOCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPiArKysgYi9Eb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPiBAQCAtMzMs
NiArMzMsNyBAQCBGb3IgbW9yZSBkZXRhaWxzIHNlZSB0aGUgZmlsZSBDT1BZSU5HIGluIHRoZSBz
b3VyY2UgZGlzdHJpYnV0aW9uIG9mIExpbnV4Lgo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGNjcwo+
IMKgwqDCoMKgwqDCoMKgwqBjeDIzNDF4LXVhcGkKPiArwqDCoMKgwqDCoMKgwqAgaGFudHJvCj4g
wqDCoMKgwqDCoMKgwqDCoGlteC11YXBpCj4gwqDCoMKgwqDCoMKgwqDCoG1heDIxNzUKPiDCoMKg
wqDCoMKgwqDCoMKgbWV5ZS11YXBpCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1j
dHJscy5oIGIvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPiBpbmRleCA4ZTAxMDllZWE0NTQu
LmI3MTNlZWVkMTkxNSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+
ICsrKyBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4gQEAgLTIyNCw0ICsyMjQsMTcgQEAg
c3RydWN0IHY0bDJfY3RybF9oZXZjX2RlY29kZV9wYXJhbXMgewo+IMKgwqDCoMKgwqDCoMKgwqBf
X3U2NMKgwqDCoGZsYWdzOwo+IMKgfTsKPiDCoAo+ICsvKsKgIE1QRUctY2xhc3MgY29udHJvbCBJ
RHMgc3BlY2lmaWMgdG8gdGhlIEhhbnRybyBkcml2ZXIgYXMgZGVmaW5lZCBieSBWNEwyICovCj4g
KyNkZWZpbmUgVjRMMl9DSURfQ09ERUNfSEFOVFJPX0JBU0XCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKFY0TDJfQ1RSTF9DTEFTU19DT0RF
QyB8IDB4MTIwMCkKPiArLyoKPiArICogVjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVS
X1NLSVAgLQo+ICsgKiB0aGUgbnVtYmVyIG9mIGRhdGEgKGluIGJpdHMpIHRvIHNraXAgaW4gdGhl
Cj4gKyAqIHNsaWNlIHNlZ21lbnQgaGVhZGVyLgo+ICsgKiBJZiBub24tSURSLCB0aGUgYml0cyB0
byBiZSBza2lwcGVkIGdvIGZyb20gc3ludGF4IGVsZW1lbnQgInBpY19vdXRwdXRfZmxhZyIKPiAr
ICogdG8gYmVmb3JlIHN5bnRheCBlbGVtZW50ICJzbGljZV90ZW1wb3JhbF9tdnBfZW5hYmxlZF9m
bGFnIi4KPiArICogSWYgSURSLCB0aGUgc2tpcHBlZCBiaXRzIGFyZSBqdXN0ICJwaWNfb3V0cHV0
X2ZsYWciCj4gKyAqIChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxhZyBpcyBub3Qgc3VwcG9ydGVk
KS4KPiArICovCj4gKyNkZWZpbmUgVjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NL
SVDCoChWNEwyX0NJRF9DT0RFQ19IQU5UUk9fQkFTRSArIDApCj4gKwo+IMKgI2VuZGlmCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
