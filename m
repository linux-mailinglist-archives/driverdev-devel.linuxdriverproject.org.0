Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 642AD2A111F
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 23:45:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC22A2E178;
	Fri, 30 Oct 2020 22:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oX5ylbdi2CWm; Fri, 30 Oct 2020 22:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BAAE2E16D;
	Fri, 30 Oct 2020 22:45:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C0571BF9BA
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 22:45:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4869286E6F
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 22:45:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xnpT2UEcUz1 for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 22:45:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8E5F386E6E
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 22:45:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id B9E141F4624F
Subject: Re: [PATCH 04/14] media: sun6i-csi: Fix the image storage bpp for
 10/12-bit Bayer formats
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-sunxi@googlegroups.com
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-5-paul.kocialkowski@bootlin.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <60fc4f85-e08f-fec6-5687-005add5cbeed@collabora.com>
Date: Fri, 30 Oct 2020 19:45:38 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-5-paul.kocialkowski@bootlin.com>
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
Cc: =?UTF-8?B?S8OpdmluIEwnaMO0cGl0YWw=?= <kevin.lhopital@bootlin.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgUGF1bCwKCk9uIDEwLzIzLzIwIDI6NDUgUE0sIFBhdWwgS29jaWFsa293c2tpIHdyb3RlOgo+
IEJvdGggMTAgYW5kIDEyLWJpdCBCYXllciBmb3JtYXRzIGFyZSBzdG9yZWQgYWxpZ25lZCBhcyAx
Ni1iaXQgdmFsdWVzCj4gaW4gbWVtb3J5LCBub3QgdW5hbGlnbmVkIDEwIG9yIDEyIGJpdHMuCj4g
Cj4gU2luY2UgdGhlIGN1cnJlbnQgY29kZSBmb3IgcmV0cmVpdmluZyB0aGUgYnBwIGlzIHVzZWQg
b25seSB0bwo+IGNhbGN1bGF0ZSB0aGUgbWVtb3J5IHN0b3JhZ2Ugc2l6ZSBvZiB0aGUgcGljdHVy
ZSAod2hpY2ggaXMgd2hhdAo+IHBpeGVsIGZvcm1hdHMgZGVzY3JpYmUsIHVubGlrZSBtZWRpYSBi
dXMgZm9ybWF0cyksIGZpeCBpdCB0aGVyZS4KPiAKPiBGaXhlczogNWNjNzUyMmQ4OTY1ICgibWVk
aWE6IHN1bjZpOiBBZGQgc3VwcG9ydCBmb3IgQWxsd2lubmVyIENTSSBWM3MiKQo+IENvLWRldmVs
b3BlZC1ieTogS8OpdmluIEwnaMO0cGl0YWwgPGtldmluLmxob3BpdGFsQGJvb3RsaW4uY29tPgo+
IFNpZ25lZC1vZmYtYnk6IEvDqXZpbiBMJ2jDtHBpdGFsIDxrZXZpbi5saG9waXRhbEBib290bGlu
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBQYXVsIEtvY2lhbGtvd3NraSA8cGF1bC5rb2NpYWxrb3dz
a2lAYm9vdGxpbi5jb20+Cj4gLS0tCj4gIC4uLi9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3Vu
NmlfY3NpLmggICAgICB8IDIwICsrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuaCBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZpX2NzaS5oCj4gaW5kZXggYzYyNjgy
MWFhZWRiLi43ZjJiZTcwYWU2NDEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmgKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuaAo+IEBAIC04Niw3ICs4Niw3IEBAIHZvaWQg
c3VuNmlfY3NpX3VwZGF0ZV9idWZfYWRkcihzdHJ1Y3Qgc3VuNmlfY3NpICpjc2ksIGRtYV9hZGRy
X3QgYWRkcik7Cj4gICAqLwo+ICB2b2lkIHN1bjZpX2NzaV9zZXRfc3RyZWFtKHN0cnVjdCBzdW42
aV9jc2kgKmNzaSwgYm9vbCBlbmFibGUpOwo+ICAKPiAtLyogZ2V0IGJwcCBmb3JtIHY0bDIgcGl4
Zm9ybWF0ICovCj4gKy8qIGdldCBtZW1vcnkgc3RvcmFnZSBicHAgZnJvbSB2NGwyIHBpeGZvcm1h
dCAqLwo+ICBzdGF0aWMgaW5saW5lIGludCBzdW42aV9jc2lfZ2V0X2JwcCh1bnNpZ25lZCBpbnQg
cGl4Zm9ybWF0KQo+ICB7Cj4gIAlzd2l0Y2ggKHBpeGZvcm1hdCkgewo+IEBAIC05NiwxNSArOTYs
NiBAQCBzdGF0aWMgaW5saW5lIGludCBzdW42aV9jc2lfZ2V0X2JwcCh1bnNpZ25lZCBpbnQgcGl4
Zm9ybWF0KQo+ICAJY2FzZSBWNEwyX1BJWF9GTVRfU1JHR0I4Ogo+ICAJY2FzZSBWNEwyX1BJWF9G
TVRfSlBFRzoKPiAgCQlyZXR1cm4gODsKPiAtCWNhc2UgVjRMMl9QSVhfRk1UX1NCR0dSMTA6Cj4g
LQljYXNlIFY0TDJfUElYX0ZNVF9TR0JSRzEwOgo+IC0JY2FzZSBWNEwyX1BJWF9GTVRfU0dSQkcx
MDoKPiAtCWNhc2UgVjRMMl9QSVhfRk1UX1NSR0dCMTA6Cj4gLQkJcmV0dXJuIDEwOwo+IC0JY2Fz
ZSBWNEwyX1BJWF9GTVRfU0JHR1IxMjoKPiAtCWNhc2UgVjRMMl9QSVhfRk1UX1NHQlJHMTI6Cj4g
LQljYXNlIFY0TDJfUElYX0ZNVF9TR1JCRzEyOgo+IC0JY2FzZSBWNEwyX1BJWF9GTVRfU1JHR0Ix
MjoKPiAgCWNhc2UgVjRMMl9QSVhfRk1UX0hNMTI6Cj4gIAljYXNlIFY0TDJfUElYX0ZNVF9OVjEy
Ogo+ICAJY2FzZSBWNEwyX1BJWF9GTVRfTlYyMToKPiBAQCAtMTIxLDYgKzExMiwxNSBAQCBzdGF0
aWMgaW5saW5lIGludCBzdW42aV9jc2lfZ2V0X2JwcCh1bnNpZ25lZCBpbnQgcGl4Zm9ybWF0KQo+
ICAJY2FzZSBWNEwyX1BJWF9GTVRfUkdCNTY1Ogo+ICAJY2FzZSBWNEwyX1BJWF9GTVRfUkdCNTY1
WDoKPiAgCQlyZXR1cm4gMTY7Cj4gKwljYXNlIFY0TDJfUElYX0ZNVF9TQkdHUjEwOgo+ICsJY2Fz
ZSBWNEwyX1BJWF9GTVRfU0dCUkcxMDoKPiArCWNhc2UgVjRMMl9QSVhfRk1UX1NHUkJHMTA6Cj4g
KwljYXNlIFY0TDJfUElYX0ZNVF9TUkdHQjEwOgo+ICsJY2FzZSBWNEwyX1BJWF9GTVRfU0JHR1Ix
MjoKPiArCWNhc2UgVjRMMl9QSVhfRk1UX1NHQlJHMTI6Cj4gKwljYXNlIFY0TDJfUElYX0ZNVF9T
R1JCRzEyOgo+ICsJY2FzZSBWNEwyX1BJWF9GTVRfU1JHR0IxMjoKPiArCQlyZXR1cm4gMTY7Cj4g
IAljYXNlIFY0TDJfUElYX0ZNVF9SR0IyNDoKPiAgCWNhc2UgVjRMMl9QSVhfRk1UX0JHUjI0Ogo+
ICAJCXJldHVybiAyNDsKPiAKCkluc3RlYWQgb2YgdXBkYXRpbmcgdGhpcyB0YWJsZSwgaG93IGFi
b3V0IHVzaW5nIHY0bDJfZm9ybWF0X2luZm8oKSBpbnN0ZWFkPwoKUmVnYXJkcywKSGVsZW4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
