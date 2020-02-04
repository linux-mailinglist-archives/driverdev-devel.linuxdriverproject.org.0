Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D62152164
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 21:06:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 48A3085735;
	Tue,  4 Feb 2020 20:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6dtfDuwSkAM; Tue,  4 Feb 2020 20:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 185CE8568D;
	Tue,  4 Feb 2020 20:06:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5178B1BF3BA
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 20:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4956E8402A
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 20:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUpNh-0KKOgv for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 20:06:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 757A183F06
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 20:06:18 +0000 (UTC)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id D46AC891AA;
 Wed,  5 Feb 2020 09:06:14 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1580846775;
 bh=a5bfvDdo0Iqxg0a4W2z8IHYNemytdwyb6t4ZT4MRLj4=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=07viXVKp27/AA5RPnjepV3g/WZmnN+Rkcfv9A4clTh2tSXSh4ad0/IDHZ/XkwFBat
 fgSmTcFLBG55YB5/UgE5lew5uDU0Nw/Oj3y6zqvUD7d8a4Z1EDoLivE1Cj8vQWOaEA
 WAb+Jzg2azE257jdrlIZ2tg+dCkNc6oq5N2AZuWWAAbtruIXshp8KGJN7/yXZenyvY
 uNHlkIG4vrGt6fSRZeqVH5fLAPvmnjXbaB9z/oMhrXBvQp1tIdZ/Q9sg5YtFYP+9sG
 za/ncyEQ+EoB6eATAKSKlKgWOb2dmsIri/CIp3QL7tAHv8c7K9VFjfyxlEQQU9foRb
 XERISzL1nHSHQ==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e39ceb60000>; Wed, 05 Feb 2020 09:06:14 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 5 Feb 2020 09:06:14 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1473.005; Wed, 5 Feb 2020 09:06:14 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Thread-Topic: [PATCH 1/2] staging: octeon: delete driver
Thread-Index: AQHV2w/iRX+gXMaeSEy4Ak2F6OvwO6gJxAWAgADZBoA=
Date: Tue, 4 Feb 2020 20:06:14 +0000
Message-ID: <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
In-Reply-To: <20200204070927.GA966981@kroah.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:f95d:4478:4d90:53fe]
Content-ID: <40E690E094F8DD41988D46F5A075A46C@atlnz.lc>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>, "fw@strlen.de" <fw@strlen.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>,
 "sandro@volery.com" <sandro@volery.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCAyMDIwLTAyLTA0IGF0IDA3OjA5ICswMDAwLCBncmVna2hAbGludXhmb3VuZGF0aW9u
Lm9yZyB3cm90ZToNCj4gT24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDQ6MDI6MTVBTSArMDAwMCwg
Q2hyaXMgUGFja2hhbSB3cm90ZToNCj4gPiBJJ2xsIHBpcGUgdXAgb24gdGhpcyB0aHJlYWQgdG9v
DQo+ID4gDQo+ID4gT24gVHVlLCAyMDE5LTEyLTEwIGF0IDAyOjQyIC0wODAwLCBHdWVudGVyIFJv
ZWNrIHdyb3RlOg0KPiA+ID4gT24gMTIvMTAvMTkgMToxNSBBTSwgR3JlZyBLcm9haC1IYXJ0bWFu
IHdyb3RlOg0KPiA+ID4gPiBUaGlzIGRyaXZlciBoYXMgYmVlbiBpbiB0aGUgdHJlZSBzaW5jZSAy
MDA5IHdpdGggbm8gcmVhbCBtb3ZlbWVudCB0byBnZXQNCj4gPiA+ID4gaXQgb3V0LiAgTm93IGl0
IGlzIHN0YXJ0aW5nIHRvIGNhdXNlIGJ1aWxkIGlzc3VlcyBhbmQgb3RoZXIgcHJvYmxlbXMgZm9y
DQo+ID4gPiA+IHBlb3BsZSB3aG8gd2FudCB0byBmaXggY29kaW5nIHN0eWxlIHByb2JsZW1zLCBi
dXQgY2FuIG5vdCBhY3R1YWxseSBidWlsZA0KPiA+ID4gPiBpdC4NCj4gPiA+ID4gDQo+ID4gPiA+
IEFzIG5vdGhpbmcgaXMgaGFwcGVuaW5nIGhlcmUsIGp1c3QgZGVsZXRlIHRoZSBtb2R1bGUgZW50
aXJlbHkuDQo+ID4gPiA+IA0KPiA+ID4gPiBSZXBvcnRlZC1ieTogR3VlbnRlciBSb2VjayA8bGlu
dXhAcm9lY2stdXMubmV0Pg0KPiA+ID4gPiBDYzogRGF2aWQgRGFuZXkgPGRkYW5leUBjYXZpdW1u
ZXR3b3Jrcy5jb20+DQo+ID4gPiA+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1s
b2Z0Lm5ldD4NCj4gPiA+ID4gQ2M6ICJNYXR0aGV3IFdpbGNveCAoT3JhY2xlKSIgPHdpbGx5QGlu
ZnJhZGVhZC5vcmc+DQo+ID4gPiA+IENjOiBHdWVudGVyIFJvZWNrIDxsaW51eEByb2Vjay11cy5u
ZXQ+DQo+ID4gPiA+IENjOiBZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+DQo+ID4g
PiA+IENjOiBBYXJvIEtvc2tpbmVuIDxhYXJvLmtvc2tpbmVuQGlraS5maT4NCj4gPiA+ID4gQ2M6
IFdhbWJ1aSBLYXJ1Z2EgPHdhbWJ1aS5rYXJ1Z2F4QGdtYWlsLmNvbT4NCj4gPiA+ID4gQ2M6IEp1
bGlhIExhd2FsbCA8anVsaWEubGF3YWxsQGxpcDYuZnI+DQo+ID4gPiA+IENjOiBGbG9yaWFuIFdl
c3RwaGFsIDxmd0BzdHJsZW4uZGU+DQo+ID4gPiA+IENjOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdl
ZXJ0QGxpbnV4LW02OGsub3JnPg0KPiA+ID4gPiBDYzogQnJhbmRlbiBCb25hYnkgPGJyYW5kb25i
b25hYnk5NEBnbWFpbC5jb20+DQo+ID4gPiA+IENjOiAiUGV0ciDFoHRldGlhciIgPHluZXp6QHRy
dWUuY3o+DQo+ID4gPiA+IENjOiBTYW5kcm8gVm9sZXJ5IDxzYW5kcm9Adm9sZXJ5LmNvbT4NCj4g
PiA+ID4gQ2M6IFBhdWwgQnVydG9uIDxwYXVsYnVydG9uQGtlcm5lbC5vcmc+DQo+ID4gPiA+IENj
OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+DQo+ID4gPiA+IENjOiBH
aW92YW5uaSBHaGVyZG92aWNoIDxib2JkYzk2NjRAc2V6bmFtLmN6Pg0KPiA+ID4gPiBDYzogVmFs
ZXJ5IEl2YW5vdiA8aXZhbGVyeTExMUBnbWFpbC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+ID4gPiAN
Cj4gPiA+IEFja2VkLWJ5OiBHdWVudGVyIFJvZWNrIDxsaW51eEByb2Vjay11cy5uZXQ+DQo+ID4g
DQo+ID4gUGxlYXNlIGNhbiB3ZSBrZWVwIHRoaXMgZHJpdmVyLiBXZSBkbyBoYXZlIHBsYXRmb3Jt
cyB1c2luZyBpdCBhbmQgd2UNCj4gPiB3b3VsZCBsaWtlIGl0IHRvIHN0YXkgYXJvdW5kLg0KPiA+
IA0KPiA+IENsZWFybHkgd2UnbGwgbmVlZCB0byBzb3J0IHRoaW5ncyBvdXQgdG8gYSBwb2ludCB3
aGVyZSB0aGV5IGJ1aWxkDQo+ID4gc3VjY2Vzc2Z1bGx5LiBXZSd2ZSBiZWVuIGhvcGluZyB0byBz
ZWUgdGhpcyBtb3ZlIG91dCBvZiBzdGFnaW5nIGV2ZXINCj4gPiBzaW5jZSB3ZSBzZWxlY3RlZCBD
YXZpdW0gYXMgYSB2ZW5kb3IuDQo+IA0KPiBHcmVhdCwgY2FuIHlvdSBzZW5kIG1lIGEgcGF0Y2hz
ZXQgdGhhdCByZXZlcnRzIHRoaXMgYW5kIGZpeGVzIHRoZSBidWlsZA0KPiBpc3N1ZXMgYW5kIGFj
Y2VwdCBtYWludGFpbmVyc2hpcCBvZiB0aGUgY29kZT8NCj4gDQoNClllcCB3aWxsIGRvLg0KDQpP
biBUdWUsIDIwMjAtMDItMDQgYXQgMTA6MjEgKzAzMDAsIERhbiBDYXJwZW50ZXIgd3JvdGU6DQo+
IE15IGFkdmljZSBpcyB0byBkZWxldGUgYWxsIHRoZSBDT01QSUxFX1RFU1QgY29kZS4gIFRoYXQg
c3R1ZmYgd2FzIGENCj4gY29uc3RhbnQgc291cmNlIG9mIGNvbmZ1c2lvbiBhbmQgaGVhZGFjaGVz
Lg0KDQpJIHdhcyBhbHNvIGdvaW5nIHRvIHN1Z2dlc3QgdGhpcy4gU2luY2UgdGhlIENPTVBJTEVf
VEVTVCBoYXMgYmVlbiBhDQpzb3VyY2Ugb2YgdHJvdWJsZSBJIHdhcyBnb2luZyB0byBwcm9wb3Nl
IGRyb3BwaW5nIHRoZSB8fCBDT01QSUxFX1RFU1QNCmZyb20gdGhlIEtjb25maWcgZm9yIHRoZSBv
Y3Rlb24gZHJpdmVycy4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
