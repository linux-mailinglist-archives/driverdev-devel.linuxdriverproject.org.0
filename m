Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 965A8352AA6
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Apr 2021 14:27:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC1F0418D6;
	Fri,  2 Apr 2021 12:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bJBXOxIlF7NJ; Fri,  2 Apr 2021 12:27:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0A2B418D1;
	Fri,  2 Apr 2021 12:27:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB67A1BF2B4
 for <devel@linuxdriverproject.org>; Fri,  2 Apr 2021 12:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA02E84CA5
 for <devel@linuxdriverproject.org>; Fri,  2 Apr 2021 12:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzWqbqpbig-1 for <devel@linuxdriverproject.org>;
 Fri,  2 Apr 2021 12:27:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7C9A84CA3
 for <devel@driverdev.osuosl.org>; Fri,  2 Apr 2021 12:27:42 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5C3AE1F442CC
Message-ID: <5674859659f93ba547cad43528ac94ef145347b3.camel@collabora.com>
Subject: Re: [PATCH v8 09/13] media: uapi: Add a control for HANTRO driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Date: Fri, 02 Apr 2021 09:27:28 -0300
In-Reply-To: <20210401160003.88803-10-benjamin.gaignard@collabora.com>
References: <20210401160003.88803-1-benjamin.gaignard@collabora.com>
 <20210401160003.88803-10-benjamin.gaignard@collabora.com>
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

SGkgQmVuamFtaW4sCgpUaGFua3MgZm9yIHRoZSBwYXRjaC4KCk9uIFRodSwgMjAyMS0wNC0wMSBh
dCAxNzo1OSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gVGhlIEhFVkMgSEFOVFJP
IGRyaXZlciBuZWVkcyB0byBrbm93IHRoZSBudW1iZXIgb2YgYml0cyB0byBza2lwIGF0Cj4gdGhl
IGJlZ2lubmluZyBvZiB0aGUgc2xpY2UgaGVhZGVyLgo+IFRoYXQgaXMgYSBoYXJkd2FyZSBzcGVj
aWZpYyByZXF1aXJlbWVudCBzbyBjcmVhdGUgYSBkZWRpY2F0ZWQgY29udHJvbAo+IHRoYXQgdGhp
cyBwdXJwb3NlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1p
bi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+IHZlcnNpb24gNToKPiDCoC0gQmUgZXZl
biBtb3JlIHZlcmJvc2UgaW4gY29udHJvbCBkb2N1bWVudGF0aW9uLgo+IMKgLSBEbyBub3QgY3Jl
YXRlIGNsYXNzIGZvciB0aGUgY29udHJvbC4KPiB2ZXJzaW9uIDQ6Cj4gLSBUaGUgY29udHJvbCBp
cyBub3cgYW4gaW50ZWdlciB3aGljaCBpcyBlbm91Z2ggdG8gcHJvdmlkZSB0aGUgbnVtYmVycwo+
IMKgIG9mIGJpdHMgdG8gc2tpcC4KPiB2ZXJzaW9uIDM6Cj4gLSBGaXggdHlwbyBpbiBmaWVsZCBu
YW1lCj4gCj4gwqAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3TCoMKg
wqDCoMKgwqDCoMKgIHwgMTQgKysrKysrKysrKysrKysKPiDCoC4uLi91c2Vyc3BhY2UtYXBpL21l
ZGlhL2RyaXZlcnMvaW5kZXgucnN0wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxICsKPiDCoGluY2x1
ZGUvdWFwaS9saW51eC92NGwyLWNvbnRyb2xzLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8IDEzICsrKysrKysrKysrKysKPiDCoDMgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9u
cygrKQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9t
ZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91
c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdCBiL0RvY3VtZW50YXRpb24vdXNl
cnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzhkY2QyYTQ0YTAzCj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QK
PiBAQCAtMCwwICsxLDE0IEBACj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
Cj4gKwo+ICtIYW50cm8gdmlkZW8gZGVjb2RlciBkcml2ZXIKPiArPT09PT09PT09PT09PT09PT09
PT09PT09PT09Cj4gKwo+ICtUaGUgSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyIGltcGxlbWVu
dHMgdGhlIGZvbGxvd2luZyBkcml2ZXItc3BlY2lmaWMgY29udHJvbHM6Cj4gKwo+ICtgYFY0TDJf
Q0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURFUl9TS0lQIChpbnRlZ2VyKWBgCj4gK8KgwqDCoCBT
cGVjaWZpZXMgdG8gSGFudHJvIEhFVkMgdmlkZW8gZGVjb2RlciBkcml2ZXIgdGhlIG51bWJlciBv
ZiBkYXRhIChpbiBiaXRzKSB0bwo+ICvCoMKgwqAgc2tpcCBpbiB0aGUgc2xpY2Ugc2VnbWVudCBo
ZWFkZXIuCj4gK8KgwqDCoCBJZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZy
b20gc3ludGF4IGVsZW1lbnQgInBpY19vdXRwdXRfZmxhZyIKPiArwqDCoMKgIHRvIGJlZm9yZSBz
eW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxfbXZwX2VuYWJsZWRfZmxhZyIuCj4gK8KgwqDC
oCBJZiBJRFIsIHRoZSBza2lwcGVkIGJpdHMgYXJlIGp1c3QgInBpY19vdXRwdXRfZmxhZyIKPiAr
wqDCoMKgIChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxhZyBpcyBub3Qgc3VwcG9ydGVkKS4KPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5k
ZXgucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgu
cnN0Cj4gaW5kZXggMWE5MDM4ZjVmOWZhLi4xMmUzYzUxMmQ3MTggMTAwNjQ0Cj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4gKysrIGIv
RG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4gQEAg
LTMzLDYgKzMzLDcgQEAgRm9yIG1vcmUgZGV0YWlscyBzZWUgdGhlIGZpbGUgQ09QWUlORyBpbiB0
aGUgc291cmNlIGRpc3RyaWJ1dGlvbiBvZiBMaW51eC4KPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBj
Y3MKPiDCoMKgwqDCoMKgwqDCoMKgY3gyMzQxeC11YXBpCj4gK8KgwqDCoMKgwqDCoMKgIGhhbnRy
bwo+IMKgwqDCoMKgwqDCoMKgwqBpbXgtdWFwaQo+IMKgwqDCoMKgwqDCoMKgwqBtYXgyMTc1Cj4g
wqDCoMKgwqDCoMKgwqDCoG1leWUtdWFwaQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGlu
dXgvdjRsMi1jb250cm9scy5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaAo+
IGluZGV4IGYzMzc2YWFmZWE2NS4uMWRmYjg3NGI2MjcyIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUv
dWFwaS9saW51eC92NGwyLWNvbnRyb2xzLmgKPiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvdjRs
Mi1jb250cm9scy5oCj4gQEAgLTg2OSw2ICs4NjksMTkgQEAgZW51bSB2NGwyX21wZWdfbWZjNTFf
dmlkZW9fZm9yY2VfZnJhbWVfdHlwZSB7Cj4gwqAjZGVmaW5lIFY0TDJfQ0lEX01QRUdfTUZDNTFf
VklERU9fSDI2NF9BREFQVElWRV9SQ19TVEFUSUPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
KFY0TDJfQ0lEX0NPREVDX01GQzUxX0JBU0UrNTMpCj4gwqAjZGVmaW5lIFY0TDJfQ0lEX01QRUdf
TUZDNTFfVklERU9fSDI2NF9OVU1fUkVGX1BJQ19GT1JfUMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoChWNEwyX0NJRF9DT0RFQ19NRkM1MV9CQVNFKzU0KQo+IMKgCj4gKy8qwqAgTVBFRy1j
bGFzcyBjb250cm9sIElEcyBzcGVjaWZpYyB0byB0aGUgSGFudHJvIGRyaXZlciBhcyBkZWZpbmVk
IGJ5IFY0TDIgKi8KCldlIGFyZSBtb3ZpbmcgYXdheSBmcm9tICJNUEVHIiB0ZXJtaW5vbG9neSBm
b3IgY29kZWNzLgoKPiArI2RlZmluZSBWNEwyX0NJRF9DT0RFQ19IQU5UUk9fQkFTRcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoVjRMMl9D
VFJMX0NMQVNTX0NPREVDIHwgMHgxMjAwKQoKVXNpbmcgVjRMMl9DVFJMX0NMQVNTX0NPREVDX1NU
QVRFTEVTUyBpcyBJTU8gYmV0dGVyLApzaW5jZSB0aGlzIGJlbG9uZ3MgdG8gYSBzdGF0ZWxlc3Mg
ZGVjb2Rlci4KCkFuZCBhbHNvLCBzaW5jZSB3ZSBhcmUgc3RpbGwgYSBiaXQgdW5zdXJlIGFib3V0
IHRoZQpzeW50YXggb2YgdGhpcyBwYXJhbWV0ZXIgKGdpdmVuIGl0J3Mgbm90IGRvY3VtZW50ZWQp
OgoKaG93IGFib3V0IGtlZXBpbmcgdGhlIFY0TDJfQ0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURF
Ul9TS0lQCmRlZmluaXRpb24gaW4gZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8u
aCA/CgpUaGlzIHdvdWxkIGJlIGEgaGludCBmb3IgYXBwbGljYXRpb25zIHRoYXQgdGhpcyBjb250
cm9sCmlzIGEgcXVpcmsuCgpIYW5zLCBQaGlsaXBwLCBhbnkgdGhvdWdodHMgb24gdGhpcz8KClJl
Z2FyZHMsCkV6ZXF1aWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
