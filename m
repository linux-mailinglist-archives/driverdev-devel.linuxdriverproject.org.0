Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 553D931DFBA
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 20:40:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5EB2886700;
	Wed, 17 Feb 2021 19:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kCQvkpeP9aoS; Wed, 17 Feb 2021 19:40:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C47A866CA;
	Wed, 17 Feb 2021 19:40:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 689151BF3CA
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 19:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EA4C605B1
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 19:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h32x8s1gOCzm for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 19:40:32 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 6EF40605B3; Wed, 17 Feb 2021 19:40:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B62C605AF
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 19:40:08 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E062B1F45845
Message-ID: <ab14f5a0bde2bdcd4bb0128f76e5a3ba8e7b0894.camel@collabora.com>
Subject: Re: [PATCH v1 03/18] arm64: dts: imx8mq-evk: add reserve memory
 node for CMA region
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 16:39:49 -0300
In-Reply-To: <20210217080306.157876-4-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-4-benjamin.gaignard@collabora.com>
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
IEdhaWduYXJkIHdyb3RlOgo+IERlZmluZSBhbGxvY2F0aW9uIHJhbmdlIGZvciB0aGUgZGVmYXVs
dCBDTUEgcmVnaW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5q
YW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdh
cmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KCkRlc3BpdGUgaXQgc2VlbXMgbGlrZSBJIHNp
Z25lZC1vZmYgdGhpcyBvbmUuLi4KCj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFJhdGl1IDxhZHJp
YW4ucmF0aXVAY29sbGFib3JhLmNvbT4KPiAtLS0KPiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDhtcS1ldmsuZHRzIHwgMTUgKysrKysrKysrKysrKysrCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMTUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtcS1ldmsuZHRzCj4gaW5kZXggODViMDQ1MjUzYTBlLi4wNDdkZmQ0YTFmZmQgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWV2ay5kdHMK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLmR0cwo+IEBA
IC0yMSw2ICsyMSwyMSBAQCBtZW1vcnlANDAwMDAwMDAgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmVnID0gPDB4MDAwMDAwMDAgMHg0MDAwMDAwMCAwIDB4YzAwMDAwMDA+Owo+
IMKgwqDCoMKgwqDCoMKgwqB9Owo+IAo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgcmVzbWVtOiByZXNl
cnZlZC1tZW1vcnkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjYWRkcmVzcy1j
ZWxscyA9IDwyPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgI3NpemUtY2VsbHMg
PSA8Mj47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJhbmdlczsKPiArCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIGdsb2JhbCBhdXRvY29uZmlndXJlZCByZWdp
b24gZm9yIGNvbnRpZ3VvdXMgYWxsb2NhdGlvbnMgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgbGludXgsY21hIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAic2hhcmVkLWRtYS1wb29sIjsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldXNhYmxlOwo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2l6ZSA9IDwwIDB4M2MwMDAw
MDA+Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWxs
b2MtcmFuZ2VzID0gPDAgMHg0MDAwMDAwMCAwIDB4NDAwMDAwMDA+Owo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGludXgsY21hLWRlZmF1bHQ7Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH07CgouLi4gSSdtIG5vdCBhIGZhbiBvZiB0aGUg
Y2hhbmdlIDopCgpIb3BlZnVsbHkgc29tZW9uZSBmcm9tIE5YUCBjYW4gcHJvdmlkZSBzb21lIGlu
c2lnaHQgaGVyZT8KCklmIGl0J3MgYWJzb2x1dGVseSBuZWVkZWQgZm9yIHRoZSBWUFUsIHRoZW4g
SSBndWVzcyBpdCBzaG91bGQKYmUgMSkgdmVyeSB3ZWxsIGRvY3VtZW50ZWQgYW5kIDIpIG1vdmVk
IHRvIHRoZSB0b3AtbG92ZWwgZHRzaS4KCkJ1dCBpZiB3ZSBjYW4gZHJvcCBpdCwgdGhhdCdkIGJl
IG5pY2VyLgoKVGhhbmtzLApFemVxdWllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
