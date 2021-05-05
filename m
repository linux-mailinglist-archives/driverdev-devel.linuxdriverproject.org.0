Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0D4373E65
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 May 2021 17:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57B5D40646;
	Wed,  5 May 2021 15:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cw-M8VpBQmer; Wed,  5 May 2021 15:21:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4881B402BA;
	Wed,  5 May 2021 15:21:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E4D51BF3AD
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 15:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A703606EF
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 15:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WUmZOMzjoZ2 for <devel@linuxdriverproject.org>;
 Wed,  5 May 2021 15:20:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A5E86065C
 for <devel@driverdev.osuosl.org>; Wed,  5 May 2021 15:20:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 77D441F42D0C
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, ezequiel@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
Date: Wed, 5 May 2021 17:20:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
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
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 cphealy@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDA1LzA1LzIwMjEgw6AgMTY6NTUsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDIw
LzA0LzIwMjEgMTQ6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBUaGUgSEVWQyBIQU5U
Uk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBiaXRzIHRvIHNraXAgYXQKPj4g
dGhlIGJlZ2lubmluZyBvZiB0aGUgc2xpY2UgaGVhZGVyLgo+PiBUaGF0IGlzIGEgaGFyZHdhcmUg
c3BlY2lmaWMgcmVxdWlyZW1lbnQgc28gY3JlYXRlIGEgZGVkaWNhdGVkIGNvbnRyb2wKPj4gZm9y
IHRoaXMgcHVycG9zZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiAgIC4uLi91c2Vyc3BhY2Ut
YXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdCAgICB8IDE5ICsrKysrKysrKysrKysrKysrKysK
Pj4gICAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdCAgICAgfCAgMSAr
Cj4+ICAgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggICAgICAgICAgICAgICAgICAgIHwgMTMg
KysrKysrKysrKysrKwo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKQo+PiAg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJp
dmVycy9oYW50cm8ucnN0Cj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2Ut
YXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBp
bmRleCAwMDAwMDAwMDAwMDAuLmNkOTc1NGI0ZTAwNQo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBi
L0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPj4g
QEAgLTAsMCArMSwxOSBAQAo+PiArLi4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAK
Pj4gKwo+PiArSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyCj4+ICs9PT09PT09PT09PT09PT09
PT09PT09PT09PT0KPj4gKwo+PiArVGhlIEhhbnRybyB2aWRlbyBkZWNvZGVyIGRyaXZlciBpbXBs
ZW1lbnRzIHRoZSBmb2xsb3dpbmcgZHJpdmVyLXNwZWNpZmljIGNvbnRyb2xzOgo+PiArCj4+ICtg
YFY0TDJfQ0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURFUl9TS0lQIChpbnRlZ2VyKWBgCj4+ICsg
ICAgU3BlY2lmaWVzIHRvIEhhbnRybyBIRVZDIHZpZGVvIGRlY29kZXIgZHJpdmVyIHRoZSBudW1i
ZXIgb2YgZGF0YSAoaW4gYml0cykgdG8KPj4gKyAgICBza2lwIGluIHRoZSBzbGljZSBzZWdtZW50
IGhlYWRlci4KPj4gKyAgICBJZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZy
b20gc3ludGF4IGVsZW1lbnQgInBpY19vdXRwdXRfZmxhZyIKPj4gKyAgICB0byBiZWZvcmUgc3lu
dGF4IGVsZW1lbnQgInNsaWNlX3RlbXBvcmFsX212cF9lbmFibGVkX2ZsYWciLgo+PiArICAgIElm
IElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUganVzdCAicGljX291dHB1dF9mbGFnIgo+PiArICAg
IChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxhZyBpcyBub3Qgc3VwcG9ydGVkKS4KPiBJJ20gbm90
IHZlcnkga2VlbiBvbiB0aGlzLiBXaXRob3V0IHRoaXMgaW5mb3JtYXRpb24gdGhlIHZpZGVvIGRh
dGEgY2Fubm90IGJlCj4gZGVjb2RlZCwgb3Igd2lsbCBpdCBqdXN0IGJlIHN1Ym9wdGltYWw/CgpX
aXRob3V0IHRoYXQgaW5mb3JtYXRpb24gdGhlIHZpZGVvIGNhbid0IGJlIGRlY29kZWQuCgo+Cj4g
VGhlIHByb2JsZW0gaXMgdGhhdCBhIGdlbmVyaWMgZGVjb2RlciB3b3VsZCBoYXZlIHRvIGtub3cg
dGhhdCB0aGUgSFcgaXMgYSBoYW50cm8sCj4gYW5kIHRoZW4gY2FsbCB0aGlzIGNvbnRyb2wuIElm
IHRoZXkgZG9uJ3QgKGFuZCBhcmUgdGVzdGluZyBvbiBub24taGFudHJvIEhXKSwgdGhlbgo+IGl0
IHdvbid0IHdvcmssIHRodXMgZGVmZWF0aW5nIHRoZSBwdXJwb3NlIG9mIHRoZSBIVyBpbmRlcGVu
ZGVudCBkZWNvZGVyIEFQSS4KPgo+IFNpbmNlIGhhbnRybyBpcyB3aWRlbHkgdXNlZCwgYW5kIGlm
IHRoZXJlIGlzIG5vIG90aGVyIHdheSB0byBkbyB0aGlzIGJlc2lkZSBleHBsaXRlbHkKPiBzZXR0
aW5nIHRoaXMgY29udHJvbCwgdGhlbiBwZXJoYXBzIHRoaXMgc2hvdWxkIGJlIHBhcnQgb2YgdGhl
IHN0YW5kYXJkIEhFVkMgQVBJLgo+IE5vbi1oYW50cm8gZHJpdmVycyB0aGF0IGRvIG5vdCBuZWVk
IHRoaXMgY2FuIGp1c3Qgc2tpcCBpdC4KCkV2ZW4gaWYgSSBwdXQgdGhpcyBwYXJhbWV0ZXIgaW4g
ZGVjb2RlX3BhcmFtcyBzdHJ1Y3R1cmUgdGhhdCB3b3VsZCBtZWFucyB0aGF0IGEgZ2VuZXJpYwp1
c2VybGFuZCBkZWNvZGVyIHdpbGwgaGF2ZSB0byBrbm93IGhvdyB0aGUgY29tcHV0ZSB0aGlzIHZh
bHVlIGZvciBoYW50cm8gSFcgc2luY2UgaXQKaXNuJ3Qgc29tZXRoaW5nIHRoYXQgY291bGQgYmUg
ZG9uZSBvbiBrZXJuZWwgc2lkZS4KCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+IFJlZ2FyZHMsCj4K
PiAJSGFucwo+Cj4+ICsKPj4gKy4uIG5vdGU6Ogo+PiArCj4+ICsgICAgICAgIFRoaXMgY29udHJv
bCBpcyBub3QgeWV0IHBhcnQgb2YgdGhlIHB1YmxpYyBrZXJuZWwgQVBJIGFuZAo+PiArICAgICAg
ICBpdCBpcyBleHBlY3RlZCB0byBjaGFuZ2UuCj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QgYi9Eb2N1bWVudGF0aW9uL3Vz
ZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPj4gaW5kZXggMWE5MDM4ZjVmOWZh
Li4xMmUzYzUxMmQ3MTggMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFw
aS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPj4gQEAgLTMzLDYgKzMzLDcgQEAgRm9yIG1v
cmUgZGV0YWlscyBzZWUgdGhlIGZpbGUgQ09QWUlORyBpbiB0aGUgc291cmNlIGRpc3RyaWJ1dGlv
biBvZiBMaW51eC4KPj4gICAKPj4gICAJY2NzCj4+ICAgCWN4MjM0MXgtdWFwaQo+PiArICAgICAg
ICBoYW50cm8KPj4gICAJaW14LXVhcGkKPj4gICAJbWF4MjE3NQo+PiAgIAltZXllLXVhcGkKPj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oIGIvaW5jbHVkZS9tZWRpYS9o
ZXZjLWN0cmxzLmgKPj4gaW5kZXggOGUwMTA5ZWVhNDU0Li5iNzEzZWVlZDE5MTUgMTAwNjQ0Cj4+
IC0tLSBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4+ICsrKyBiL2luY2x1ZGUvbWVkaWEv
aGV2Yy1jdHJscy5oCj4+IEBAIC0yMjQsNCArMjI0LDE3IEBAIHN0cnVjdCB2NGwyX2N0cmxfaGV2
Y19kZWNvZGVfcGFyYW1zIHsKPj4gICAJX191NjQJZmxhZ3M7Cj4+ICAgfTsKPj4gICAKPj4gKy8q
ICBNUEVHLWNsYXNzIGNvbnRyb2wgSURzIHNwZWNpZmljIHRvIHRoZSBIYW50cm8gZHJpdmVyIGFz
IGRlZmluZWQgYnkgVjRMMiAqLwo+PiArI2RlZmluZSBWNEwyX0NJRF9DT0RFQ19IQU5UUk9fQkFT
RQkJCQkoVjRMMl9DVFJMX0NMQVNTX0NPREVDIHwgMHgxMjAwKQo+PiArLyoKPj4gKyAqIFY0TDJf
Q0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURFUl9TS0lQIC0KPj4gKyAqIHRoZSBudW1iZXIgb2Yg
ZGF0YSAoaW4gYml0cykgdG8gc2tpcCBpbiB0aGUKPj4gKyAqIHNsaWNlIHNlZ21lbnQgaGVhZGVy
Lgo+PiArICogSWYgbm9uLUlEUiwgdGhlIGJpdHMgdG8gYmUgc2tpcHBlZCBnbyBmcm9tIHN5bnRh
eCBlbGVtZW50ICJwaWNfb3V0cHV0X2ZsYWciCj4+ICsgKiB0byBiZWZvcmUgc3ludGF4IGVsZW1l
bnQgInNsaWNlX3RlbXBvcmFsX212cF9lbmFibGVkX2ZsYWciLgo+PiArICogSWYgSURSLCB0aGUg
c2tpcHBlZCBiaXRzIGFyZSBqdXN0ICJwaWNfb3V0cHV0X2ZsYWciCj4+ICsgKiAoc2VwYXJhdGVf
Y29sb3VyX3BsYW5lX2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4+ICsgKi8KPj4gKyNkZWZpbmUg
VjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAJKFY0TDJfQ0lEX0NPREVDX0hB
TlRST19CQVNFICsgMCkKPj4gKwo+PiAgICNlbmRpZgo+Pgo+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
