Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DA837541D
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 May 2021 14:50:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82FE6608B5;
	Thu,  6 May 2021 12:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nYpm8wxYFGJF; Thu,  6 May 2021 12:50:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64B07605BD;
	Thu,  6 May 2021 12:50:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A8621C1178
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 12:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 66DAB83BF3
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 12:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=xs4all.nl
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GH2vXoXTp_F6 for <devel@linuxdriverproject.org>;
 Thu,  6 May 2021 12:50:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net
 [194.109.24.28])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F85B83BED
 for <devel@driverdev.osuosl.org>; Thu,  6 May 2021 12:50:25 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id edSMlv6XlyEWwedSPl13Vh; Thu, 06 May 2021 14:50:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1620305423; bh=K3TQ5Oicz5+r8i9gQQfd6zKGle8y9tYgH8kJCMW3wQA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=upNhIkExWaYt/ZamhrevHvQuMgs1byprylVgRr/tpAjFlnWoMd/AUlWiumNKVyvnR
 e/0U+1ITfU8dgewhUOB1d2PLI8a10stFl40PVAIVInApepr3fkPtl83nE66oOW7Hog
 WktGd6eSQT2OyNwCdMrKf8Xt7BMbpa03sK8XqtQSqaLo/WpBsuFRGlWalFX2NFCwfM
 1aqAAKG+fJ4aZiKgJdXP9+V4CS4lItqpCP3V64dDIpMmLI7BZ+i0ED1JpMvYMfIGM5
 dL3K593JiMe3UTT2RgVpeOZxvv4TzqpSRD9BvVggbVPiI3PNlcVeSgI4fxc6DPgDm0
 1/D/S3UBgeGCg==
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
 <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
Date: Thu, 6 May 2021 14:50:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfA5gObUZRMJwL5EnKYVFy/jiVJqnngBoF/9iy18Nv4sm6KyMRzVLHtlecWB6vedDmmkD3Hr/vNGWrhY35jPviUP/UOOQ3CTEQc9eiXjLz87VRCfw3XYS
 aisdRTuwTDonFmIVnD8MDEqTEAMRefT0fMVvjWfTXQCMM/s/ups6+CuHvRznpoT1CYHWlo4BtF2OgRufynbJke4G6FbtBZJ35V1wVHaB0x7EwkX3h7v7qIkJ
 OXAa7bTbcmfEM4XwYKOyiGCpVrIbRK4J5EPlf3VKpg5ifNNRLKT8SFey8J7TV+YqTOTKApEFc98vS64sQW9XPiMSNf/JEVu3qP5ZksSMXHAYTDmx5sc9JEkK
 U2CMVkK3cdx04U8881cyMiFyHf5azKxXem1fTfzrcf3Kf59A5CdVmLJbp+JwaXdEJv+KKk7GzNPMT3MUKBqbewHNP8SKopS7DPB6bPGC+6VNFKlu29W+mEMb
 JIg57vF1qWcb09EHvwgPuoope1dqi4F15/W+hRLUklkPi7xF3xlo9+wBJ06LrTC4LmkqGxd9UC7XQiROP+EI92KXJDCkLTMlwjqqtD80XzdN+QtIB1Fe+mqh
 N7+JRS8nD2BUpqY3mOiK+jiRCeNP2LpECcRan2Twt2rvt7ISlglW2Y5WPda0Dl29nAmJXqGHbHM/2wr0geSxUIOB3BL7RcRJ6reeNYKowgLDW+shUpBqSMMP
 KhAluwQ88AJGoRmx4/P0T9Iiuny8T8tMtBeC0c9ZAlz23COKxM8jUaj/dfNYK7q/eNUrHWlbzaMJQygDb4/0aoQBTMqkzrmf/TR5glBRjGN0J/1p3zUz/ytp
 WrrU/WPemDB7AtqmR0wWyPl9zv8S5vHB9EH6cXrZ+tILSvCLYTn8htfJha43b9UmyPUEkgPUDfoEQHgOirXel62JfV7tLYzhBx/FtghjuCKWcX6oq+pp7R44
 zIMcdKwO2/aPI98nfCG3r16uXELuczGuaew4ogdZ+Ls05h6xy3KWsjbO+uQSSQcWCOQO1DUFCum8i3ytDtJZAvkPG+5t2Ybped0+urU0i+M4UdqN
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

T24gMDUvMDUvMjAyMSAxNzoyMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMDUv
MDUvMjAyMSDDoCAxNjo1NSwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+IE9uIDIwLzA0LzIw
MjEgMTQ6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gVGhlIEhFVkMgSEFOVFJPIGRy
aXZlciBuZWVkcyB0byBrbm93IHRoZSBudW1iZXIgb2YgYml0cyB0byBza2lwIGF0Cj4+PiB0aGUg
YmVnaW5uaW5nIG9mIHRoZSBzbGljZSBoZWFkZXIuCj4+PiBUaGF0IGlzIGEgaGFyZHdhcmUgc3Bl
Y2lmaWMgcmVxdWlyZW1lbnQgc28gY3JlYXRlIGEgZGVkaWNhdGVkIGNvbnRyb2wKPj4+IGZvciB0
aGlzIHB1cnBvc2UuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+ICAgLi4uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0ICAgIHwgMTkgKysrKysrKysrKysrKysrKysr
Kwo+Pj4gICAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdCAgICAgfCAg
MSArCj4+PiAgIGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oICAgICAgICAgICAgICAgICAgICB8
IDEzICsrKysrKysrKysrKysKPj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCsp
Cj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVk
aWEvZHJpdmVycy9oYW50cm8ucnN0Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
dXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QgYi9Eb2N1bWVudGF0aW9uL3Vz
ZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4+PiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi5jZDk3NTRiNGUwMDUKPj4+IC0tLSAvZGV2L251
bGwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hh
bnRyby5yc3QKPj4+IEBAIC0wLDAgKzEsMTkgQEAKPj4+ICsuLiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMAo+Pj4gKwo+Pj4gK0hhbnRybyB2aWRlbyBkZWNvZGVyIGRyaXZlcgo+Pj4g
Kz09PT09PT09PT09PT09PT09PT09PT09PT09PQo+Pj4gKwo+Pj4gK1RoZSBIYW50cm8gdmlkZW8g
ZGVjb2RlciBkcml2ZXIgaW1wbGVtZW50cyB0aGUgZm9sbG93aW5nIGRyaXZlci1zcGVjaWZpYyBj
b250cm9sczoKPj4+ICsKPj4+ICtgYFY0TDJfQ0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURFUl9T
S0lQIChpbnRlZ2VyKWBgCj4+PiArICAgIFNwZWNpZmllcyB0byBIYW50cm8gSEVWQyB2aWRlbyBk
ZWNvZGVyIGRyaXZlciB0aGUgbnVtYmVyIG9mIGRhdGEgKGluIGJpdHMpIHRvCj4+PiArICAgIHNr
aXAgaW4gdGhlIHNsaWNlIHNlZ21lbnQgaGVhZGVyLgo+Pj4gKyAgICBJZiBub24tSURSLCB0aGUg
Yml0cyB0byBiZSBza2lwcGVkIGdvIGZyb20gc3ludGF4IGVsZW1lbnQgInBpY19vdXRwdXRfZmxh
ZyIKPj4+ICsgICAgdG8gYmVmb3JlIHN5bnRheCBlbGVtZW50ICJzbGljZV90ZW1wb3JhbF9tdnBf
ZW5hYmxlZF9mbGFnIi4KPj4+ICsgICAgSWYgSURSLCB0aGUgc2tpcHBlZCBiaXRzIGFyZSBqdXN0
ICJwaWNfb3V0cHV0X2ZsYWciCj4+PiArICAgIChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxhZyBp
cyBub3Qgc3VwcG9ydGVkKS4KPj4gSSdtIG5vdCB2ZXJ5IGtlZW4gb24gdGhpcy4gV2l0aG91dCB0
aGlzIGluZm9ybWF0aW9uIHRoZSB2aWRlbyBkYXRhIGNhbm5vdCBiZQo+PiBkZWNvZGVkLCBvciB3
aWxsIGl0IGp1c3QgYmUgc3Vib3B0aW1hbD8KPiAKPiBXaXRob3V0IHRoYXQgaW5mb3JtYXRpb24g
dGhlIHZpZGVvIGNhbid0IGJlIGRlY29kZWQuCj4gCj4+Cj4+IFRoZSBwcm9ibGVtIGlzIHRoYXQg
YSBnZW5lcmljIGRlY29kZXIgd291bGQgaGF2ZSB0byBrbm93IHRoYXQgdGhlIEhXIGlzIGEgaGFu
dHJvLAo+PiBhbmQgdGhlbiBjYWxsIHRoaXMgY29udHJvbC4gSWYgdGhleSBkb24ndCAoYW5kIGFy
ZSB0ZXN0aW5nIG9uIG5vbi1oYW50cm8gSFcpLCB0aGVuCj4+IGl0IHdvbid0IHdvcmssIHRodXMg
ZGVmZWF0aW5nIHRoZSBwdXJwb3NlIG9mIHRoZSBIVyBpbmRlcGVuZGVudCBkZWNvZGVyIEFQSS4K
Pj4KPj4gU2luY2UgaGFudHJvIGlzIHdpZGVseSB1c2VkLCBhbmQgaWYgdGhlcmUgaXMgbm8gb3Ro
ZXIgd2F5IHRvIGRvIHRoaXMgYmVzaWRlIGV4cGxpdGVseQo+PiBzZXR0aW5nIHRoaXMgY29udHJv
bCwgdGhlbiBwZXJoYXBzIHRoaXMgc2hvdWxkIGJlIHBhcnQgb2YgdGhlIHN0YW5kYXJkIEhFVkMg
QVBJLgo+PiBOb24taGFudHJvIGRyaXZlcnMgdGhhdCBkbyBub3QgbmVlZCB0aGlzIGNhbiBqdXN0
IHNraXAgaXQuCj4gCj4gRXZlbiBpZiBJIHB1dCB0aGlzIHBhcmFtZXRlciBpbiBkZWNvZGVfcGFy
YW1zIHN0cnVjdHVyZSB0aGF0IHdvdWxkIG1lYW5zIHRoYXQgYSBnZW5lcmljCj4gdXNlcmxhbmQg
ZGVjb2RlciB3aWxsIGhhdmUgdG8ga25vdyBob3cgdGhlIGNvbXB1dGUgdGhpcyB2YWx1ZSBmb3Ig
aGFudHJvIEhXIHNpbmNlIGl0Cj4gaXNuJ3Qgc29tZXRoaW5nIHRoYXQgY291bGQgYmUgZG9uZSBv
biBrZXJuZWwgc2lkZS4KCkJ1dCBzaW5jZSBoYW50cm8gaXMgdmVyeSBjb21tb24sIGFueSB1c2Vy
bGFuZCBkZWNvZGVyIHdpbGwgbmVlZCB0byBjYWxjdWxhdGUgdGhpcyBhbnl3YXkuClNvIHBlcmhh
cHMgaXQgaXMgYmV0dGVyIHRvIGhhdmUgdGhpcyBhcyBwYXJ0IG9mIHRoZSBkZWNvZGVfcGFyYW1z
PwoKSSdkIGxpa2UgdG8ga25vdyB3aGF0IG90aGVycyB0aGluayBhYm91dCB0aGlzLgoKUmVnYXJk
cywKCglIYW5zCgo+IAo+IAo+IFJlZ2FyZHMsCj4gQmVuamFtaW4KPiAKPj4KPj4gUmVnYXJkcywK
Pj4KPj4gCUhhbnMKPj4KPj4+ICsKPj4+ICsuLiBub3RlOjoKPj4+ICsKPj4+ICsgICAgICAgIFRo
aXMgY29udHJvbCBpcyBub3QgeWV0IHBhcnQgb2YgdGhlIHB1YmxpYyBrZXJuZWwgQVBJIGFuZAo+
Pj4gKyAgICAgICAgaXQgaXMgZXhwZWN0ZWQgdG8gY2hhbmdlLgo+Pj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdCBiL0RvY3Vt
ZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdAo+Pj4gaW5kZXgg
MWE5MDM4ZjVmOWZhLi4xMmUzYzUxMmQ3MTggMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9u
L3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdAo+Pj4gQEAgLTMzLDYg
KzMzLDcgQEAgRm9yIG1vcmUgZGV0YWlscyBzZWUgdGhlIGZpbGUgQ09QWUlORyBpbiB0aGUgc291
cmNlIGRpc3RyaWJ1dGlvbiBvZiBMaW51eC4KPj4+ICAgCj4+PiAgIAljY3MKPj4+ICAgCWN4MjM0
MXgtdWFwaQo+Pj4gKyAgICAgICAgaGFudHJvCj4+PiAgIAlpbXgtdWFwaQo+Pj4gICAJbWF4MjE3
NQo+Pj4gICAJbWV5ZS11YXBpCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0
cmxzLmggYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+Pj4gaW5kZXggOGUwMTA5ZWVhNDU0
Li5iNzEzZWVlZDE5MTUgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMu
aAo+Pj4gKysrIGIvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPj4+IEBAIC0yMjQsNCArMjI0
LDE3IEBAIHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19kZWNvZGVfcGFyYW1zIHsKPj4+ICAgCV9fdTY0
CWZsYWdzOwo+Pj4gICB9Owo+Pj4gICAKPj4+ICsvKiAgTVBFRy1jbGFzcyBjb250cm9sIElEcyBz
cGVjaWZpYyB0byB0aGUgSGFudHJvIGRyaXZlciBhcyBkZWZpbmVkIGJ5IFY0TDIgKi8KPj4+ICsj
ZGVmaW5lIFY0TDJfQ0lEX0NPREVDX0hBTlRST19CQVNFCQkJCShWNEwyX0NUUkxfQ0xBU1NfQ09E
RUMgfCAweDEyMDApCj4+PiArLyoKPj4+ICsgKiBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElDRV9I
RUFERVJfU0tJUCAtCj4+PiArICogdGhlIG51bWJlciBvZiBkYXRhIChpbiBiaXRzKSB0byBza2lw
IGluIHRoZQo+Pj4gKyAqIHNsaWNlIHNlZ21lbnQgaGVhZGVyLgo+Pj4gKyAqIElmIG5vbi1JRFIs
IHRoZSBiaXRzIHRvIGJlIHNraXBwZWQgZ28gZnJvbSBzeW50YXggZWxlbWVudCAicGljX291dHB1
dF9mbGFnIgo+Pj4gKyAqIHRvIGJlZm9yZSBzeW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxf
bXZwX2VuYWJsZWRfZmxhZyIuCj4+PiArICogSWYgSURSLCB0aGUgc2tpcHBlZCBiaXRzIGFyZSBq
dXN0ICJwaWNfb3V0cHV0X2ZsYWciCj4+PiArICogKHNlcGFyYXRlX2NvbG91cl9wbGFuZV9mbGFn
IGlzIG5vdCBzdXBwb3J0ZWQpLgo+Pj4gKyAqLwo+Pj4gKyNkZWZpbmUgVjRMMl9DSURfSEFOVFJP
X0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAJKFY0TDJfQ0lEX0NPREVDX0hBTlRST19CQVNFICsgMCkK
Pj4+ICsKPj4+ICAgI2VuZGlmCj4+Pgo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
