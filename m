Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 043E71514CE
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 05:02:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECD3B2051E;
	Tue,  4 Feb 2020 04:02:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40F2L9veO-2M; Tue,  4 Feb 2020 04:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E40462050E;
	Tue,  4 Feb 2020 04:02:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00C131BF94B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 04:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE8CF20513
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 04:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WpjNzW+ge0qg for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 04:02:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 11AC32050E
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 04:02:19 +0000 (UTC)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 71FD4886BF;
 Tue,  4 Feb 2020 17:02:16 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1580788936;
 bh=GVICFMVv+OG1qT2yIAqlw6peE0/CznmHrqPWWkf8h6o=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=vME2AL3ujpzy3c6aaagAT2oJhN1OjcA175utdGlwIT+Pa6BGGWWxA3olMu9YV1UYa
 e292mzhmQpIpGBxoNFNsGYvYOqPhtFLtczbQ0fhrddYgI+qUjUGMm/UhGA8DvpzvRG
 s6OcF1omO2MRsa0ShP8H+38GpCTspbC0I9LTOxye4frC0MllOPkV4VmVS3VcvD5MkQ
 zAorIQo50I1UGhmDYNAyEhGNN7hmls/AjLv8QOww6jeg83hF690hsKR4rG5qw684f3
 0k1PeHYNLzRx1q2O83et+q0GEhm9KqTKBahBuz1HqBG2qYEtuEbmtg40kAK5f/mHzf
 M6My3vvUJz59w==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e38ecc80000>; Tue, 04 Feb 2020 17:02:16 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1473.3; Tue, 4 Feb 2020 17:02:16 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1473.005; Tue, 4 Feb 2020 17:02:16 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linux@roeck-us.net" <linux@roeck-us.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Thread-Topic: [PATCH 1/2] staging: octeon: delete driver
Thread-Index: AQHV2w/iRX+gXMaeSEy4Ak2F6OvwOw==
Date: Tue, 4 Feb 2020 04:02:15 +0000
Message-ID: <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
In-Reply-To: <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:4cc:2ac4:9aa5:522d]
Content-ID: <271EE2F0515A624EA1A9CE5E1BE0D5DE@atlnz.lc>
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
Cc: "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
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
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SSdsbCBwaXBlIHVwIG9uIHRoaXMgdGhyZWFkIHRvbw0KDQpPbiBUdWUsIDIwMTktMTItMTAgYXQg
MDI6NDIgLTA4MDAsIEd1ZW50ZXIgUm9lY2sgd3JvdGU6DQo+IE9uIDEyLzEwLzE5IDE6MTUgQU0s
IEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToNCj4gPiBUaGlzIGRyaXZlciBoYXMgYmVlbiBpbiB0
aGUgdHJlZSBzaW5jZSAyMDA5IHdpdGggbm8gcmVhbCBtb3ZlbWVudCB0byBnZXQNCj4gPiBpdCBv
dXQuICBOb3cgaXQgaXMgc3RhcnRpbmcgdG8gY2F1c2UgYnVpbGQgaXNzdWVzIGFuZCBvdGhlciBw
cm9ibGVtcyBmb3INCj4gPiBwZW9wbGUgd2hvIHdhbnQgdG8gZml4IGNvZGluZyBzdHlsZSBwcm9i
bGVtcywgYnV0IGNhbiBub3QgYWN0dWFsbHkgYnVpbGQNCj4gPiBpdC4NCj4gPiANCj4gPiBBcyBu
b3RoaW5nIGlzIGhhcHBlbmluZyBoZXJlLCBqdXN0IGRlbGV0ZSB0aGUgbW9kdWxlIGVudGlyZWx5
Lg0KPiA+IA0KPiA+IFJlcG9ydGVkLWJ5OiBHdWVudGVyIFJvZWNrIDxsaW51eEByb2Vjay11cy5u
ZXQ+DQo+ID4gQ2M6IERhdmlkIERhbmV5IDxkZGFuZXlAY2F2aXVtbmV0d29ya3MuY29tPg0KPiA+
IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4NCj4gPiBDYzogIk1h
dHRoZXcgV2lsY294IChPcmFjbGUpIiA8d2lsbHlAaW5mcmFkZWFkLm9yZz4NCj4gPiBDYzogR3Vl
bnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pg0KPiA+IENjOiBZdWVIYWliaW5nIDx5dWVo
YWliaW5nQGh1YXdlaS5jb20+DQo+ID4gQ2M6IEFhcm8gS29za2luZW4gPGFhcm8ua29za2luZW5A
aWtpLmZpPg0KPiA+IENjOiBXYW1idWkgS2FydWdhIDx3YW1idWkua2FydWdheEBnbWFpbC5jb20+
DQo+ID4gQ2M6IEp1bGlhIExhd2FsbCA8anVsaWEubGF3YWxsQGxpcDYuZnI+DQo+ID4gQ2M6IEZs
b3JpYW4gV2VzdHBoYWwgPGZ3QHN0cmxlbi5kZT4NCj4gPiBDYzogR2VlcnQgVXl0dGVyaG9ldmVu
IDxnZWVydEBsaW51eC1tNjhrLm9yZz4NCj4gPiBDYzogQnJhbmRlbiBCb25hYnkgPGJyYW5kb25i
b25hYnk5NEBnbWFpbC5jb20+DQo+ID4gQ2M6ICJQZXRyIMWgdGV0aWFyIiA8eW5lenpAdHJ1ZS5j
ej4NCj4gPiBDYzogU2FuZHJvIFZvbGVyeSA8c2FuZHJvQHZvbGVyeS5jb20+DQo+ID4gQ2M6IFBh
dWwgQnVydG9uIDxwYXVsYnVydG9uQGtlcm5lbC5vcmc+DQo+ID4gQ2M6IERhbiBDYXJwZW50ZXIg
PGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4NCj4gPiBDYzogR2lvdmFubmkgR2hlcmRvdmljaCA8
Ym9iZGM5NjY0QHNlem5hbS5jej4NCj4gPiBDYzogVmFsZXJ5IEl2YW5vdiA8aXZhbGVyeTExMUBn
bWFpbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4NCj4gDQo+IEFja2VkLWJ5OiBHdWVudGVyIFJvZWNrIDxsaW51
eEByb2Vjay11cy5uZXQ+DQoNClBsZWFzZSBjYW4gd2Uga2VlcCB0aGlzIGRyaXZlci4gV2UgZG8g
aGF2ZSBwbGF0Zm9ybXMgdXNpbmcgaXQgYW5kIHdlDQp3b3VsZCBsaWtlIGl0IHRvIHN0YXkgYXJv
dW5kLg0KDQpDbGVhcmx5IHdlJ2xsIG5lZWQgdG8gc29ydCB0aGluZ3Mgb3V0IHRvIGEgcG9pbnQg
d2hlcmUgdGhleSBidWlsZA0Kc3VjY2Vzc2Z1bGx5LiBXZSd2ZSBiZWVuIGhvcGluZyB0byBzZWUg
dGhpcyBtb3ZlIG91dCBvZiBzdGFnaW5nIGV2ZXINCnNpbmNlIHdlIHNlbGVjdGVkIENhdml1bSBh
cyBhIHZlbmRvci4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
