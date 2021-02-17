Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1A531E00E
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 21:15:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 938958561D;
	Wed, 17 Feb 2021 20:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ih4rqSG1msKN; Wed, 17 Feb 2021 20:15:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5AED08511F;
	Wed, 17 Feb 2021 20:15:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D5611BF3AB
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29C54863D5
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 20:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w90IAkddVXWK for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 20:15:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1877C863EE
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 20:15:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E92FB1F40F2C
Message-ID: <9d0ddec3cc244e36483abb28b54053fa02babb5c.camel@collabora.com>
Subject: Re: [PATCH v1 07/18] media: hantro: Add a field to distinguish the
 hardware versions
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:15:27 -0300
In-Reply-To: <20210217080306.157876-8-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-8-benjamin.gaignard@collabora.com>
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

T24gV2VkLCAyMDIxLTAyLTE3IGF0IDA5OjAyICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBEZWNvZGVycyBoYXJkd2FyZSBibG9ja3MgY291bGQgZXhpc3QgaW4gbXVsdGlwbGUgdmVy
c2lvbnM6IGFkZAo+IGEgZmllbGQgdG8gZGlzdGluZ3Vpc2ggdGhlbSBhdCBydW50aW1lLgo+IEtl
ZXAgdGhlIGRlZmF1bHQgYmVoYXZvaXIgdG8gYmUgRzEgaGFyZHdhcmUuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEFkcmlhbiBSYXRpdSA8YWRyaWFuLnJhdGl1QGNvbGxhYm9yYS5j
b20+Cj4gLS0tCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5owqDCoMKg
wqAgfCA1ICsrKysrCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYu
YyB8IDIgKysKPiDCoDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmggYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4gaW5kZXggYmRlNjUyMzFmMjJmLi4yYTU2NmRm
YzJmZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8u
aAo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmgKPiBAQCAtMzYs
NiArMzYsOSBAQCBzdHJ1Y3QgaGFudHJvX2NvZGVjX29wczsKPiDCoCNkZWZpbmUgSEFOVFJPX0gy
NjRfREVDT0RFUsKgwqDCoMKgQklUKDE4KQo+IMKgI2RlZmluZSBIQU5UUk9fREVDT0RFUlPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDB4ZmZmZjAwMDAKPiDCoAo+ICsjZGVmaW5lIEhB
TlRST19HMV9SRVbCoMKgwqDCoMKgwqDCoMKgwqDCoDB4NjczMQo+ICsjZGVmaW5lIEhBTlRST19H
Ml9SRVbCoMKgwqDCoMKgwqDCoMKgwqDCoDB4NjczMgo+ICsKPiDCoC8qKgo+IMKgICogc3RydWN0
IGhhbnRyb19pcnEgLSBpcnEgaGFuZGxlciBhbmQgbmFtZQo+IMKgICoKPiBAQCAtMTcwLDYgKzE3
Myw3IEBAIGhhbnRyb192ZGV2X3RvX2Z1bmMoc3RydWN0IHZpZGVvX2RldmljZSAqdmRldikKPiDC
oCAqIEBlbmNfYmFzZTrCoMKgwqDCoMKgwqDCoMKgwqDCoE1hcHBlZCBhZGRyZXNzIG9mIFZQVSBl
bmNvZGVyIHJlZ2lzdGVyIGZvciBjb252ZW5pZW5jZS4KPiDCoCAqIEBkZWNfYmFzZTrCoMKgwqDC
oMKgwqDCoMKgwqDCoE1hcHBlZCBhZGRyZXNzIG9mIFZQVSBkZWNvZGVyIHJlZ2lzdGVyIGZvciBj
b252ZW5pZW5jZS4KPiDCoCAqIEBjdHJsX2Jhc2U6wqDCoMKgwqDCoMKgwqDCoMKgTWFwcGVkIGFk
ZHJlc3Mgb2YgVlBVIGNvbnRyb2wgYmxvY2suCj4gKyAqIEBjb3JlX2h3X2RlY19yZXbCoMKgwqDC
oFJ1bnRpbWUgZGV0ZWN0ZWQgSFcgZGVjb2RlciBjb3JlIHJldmlzaW9uCj4gwqAgKiBAdnB1X211
dGV4OsKgwqDCoMKgwqDCoMKgwqDCoE11dGV4IHRvIHN5bmNocm9uaXplIFY0TDIgY2FsbHMuCj4g
wqAgKiBAaXJxbG9jazrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgU3BpbmxvY2sgdG8gc3luY2hyb25p
emUgYWNjZXNzIHRvIGRhdGEgc3RydWN0dXJlcwo+IMKgICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzaGFyZWQgd2l0aCBpbnRlcnJ1cHQgaGFuZGxlcnMuCj4gQEAg
LTE4OSw2ICsxOTMsNyBAQCBzdHJ1Y3QgaGFudHJvX2RldiB7Cj4gwqDCoMKgwqDCoMKgwqDCoHZv
aWQgX19pb21lbSAqZW5jX2Jhc2U7Cj4gwqDCoMKgwqDCoMKgwqDCoHZvaWQgX19pb21lbSAqZGVj
X2Jhc2U7Cj4gwqDCoMKgwqDCoMKgwqDCoHZvaWQgX19pb21lbSAqY3RybF9iYXNlOwo+ICvCoMKg
wqDCoMKgwqDCoHUzMiBjb3JlX2h3X2RlY19yZXY7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgc3Ry
dWN0IG11dGV4IHZwdV9tdXRleDvCoC8qIHZpZGVvX2RldmljZSBsb2NrICovCj4gwqDCoMKgwqDC
oMKgwqDCoHNwaW5sb2NrX3QgaXJxbG9jazsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYwo+IGluZGV4IDA1NzAwNDdjN2ZhMC4uZTE0NDNjMzk0ZjYyIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiBAQCAtODQwLDYgKzg0
MCw4IEBAIHN0YXRpYyBpbnQgaGFudHJvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoMKgwqDCoMKgwqDCoMKgdnB1LT5lbmNfYmFzZSA9
IHZwdS0+cmVnX2Jhc2VzWzBdICsgdnB1LT52YXJpYW50LT5lbmNfb2Zmc2V0Owo+IMKgwqDCoMKg
wqDCoMKgwqB2cHUtPmRlY19iYXNlID0gdnB1LT5yZWdfYmFzZXNbMF0gKyB2cHUtPnZhcmlhbnQt
PmRlY19vZmZzZXQ7Cj4gK8KgwqDCoMKgwqDCoMKgLyogYnkgZGVmYXVsdCBkZWNvZGVyIGlzIEcx
ICovCj4gK8KgwqDCoMKgwqDCoMKgdnB1LT5jb3JlX2h3X2RlY19yZXYgPSBIQU5UUk9fRzFfUkVW
Owo+IMKgCgpXaGF0J3MgdGhlIHVzZSBvZiB0aGlzIGZpZWxkPyBDYW4ndCB3ZSBzaW1wbHkgcmVs
eSBvbiB0aGUgY29tcGF0aWJsZSBzdHJpbmc/CgpUaGFua3MsCkV6ZXF1aWVsCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
