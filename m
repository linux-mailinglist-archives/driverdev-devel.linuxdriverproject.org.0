Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F6C83AD2
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 23:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D1D3522176;
	Tue,  6 Aug 2019 21:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w8-BIf-Xq9ew; Tue,  6 Aug 2019 21:11:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 06DD622122;
	Tue,  6 Aug 2019 21:11:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 837971BF372
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 21:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 807CB86084
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 21:11:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id avNdE2rIry1N for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 21:11:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA4ED8607D
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 21:11:34 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 953EE12661549;
 Tue,  6 Aug 2019 14:11:33 -0700 (PDT)
Date: Tue, 06 Aug 2019 14:11:33 -0700 (PDT)
Message-Id: <20190806.141133.1365654857955536268.davem@davemloft.net>
To: natechancellor@gmail.com
Subject: Re: [PATCH v2] net: mdio-octeon: Fix Kconfig warnings and build errors
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190803060155.89548-1-natechancellor@gmail.com>
References: <20190731185023.20954-1-natechancellor@gmail.com>
 <20190803060155.89548-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 06 Aug 2019 14:11:34 -0700 (PDT)
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4NCkRhdGU6
IEZyaSwgIDIgQXVnIDIwMTkgMjM6MDE6NTYgLTA3MDANCg0KPiBBZnRlciBjb21taXQgMTcxYTli
YWU2OGM3ICgic3RhZ2luZy9vY3Rlb246IEFsbG93IHRlc3QgYnVpbGQgb24NCj4gIU1JUFMiKSwg
dGhlIGZvbGxvd2luZyBjb21iaW5hdGlvbiBvZiBjb25maWdzIGNhdXNlIGEgZmV3IEtjb25maWcN
Cj4gd2FybmluZ3MgYW5kIGJ1aWxkIGVycm9ycyAoZGlzdGlsbGVkIGZyb20gYXJtIGFsbHllc2Nv
bmZpZyBhbmQgUmFuZHkncw0KPiByYW5kY29uZmlnIGJ1aWxkcyk6DQo+IA0KPiAgICAgQ09ORklH
X05FVERFVklDRVM9eQ0KPiAgICAgQ09ORklHX1NUQUdJTkc9eQ0KPiAgICAgQ09ORklHX0NPTVBJ
TEVfVEVTVD15DQo+IA0KPiBhbmQgQ09ORklHX09DVEVPTl9FVEhFUk5FVCBhcyBlaXRoZXIgYSBt
b2R1bGUgb3IgYnVpbHQtaW4uDQo+IA0KPiBXQVJOSU5HOiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5j
aWVzIGRldGVjdGVkIGZvciBNRElPX09DVEVPTg0KPiAgIERlcGVuZHMgb24gW25dOiBORVRERVZJ
Q0VTIFs9eV0gJiYgTURJT19ERVZJQ0UgWz15XSAmJiBNRElPX0JVUyBbPXldDQo+ICYmIDY0QklU
IFs9bl0gJiYgSEFTX0lPTUVNIFs9eV0gJiYgT0ZfTURJTyBbPW5dDQo+ICAgU2VsZWN0ZWQgYnkg
W3ldOg0KPiAgIC0gT0NURU9OX0VUSEVSTkVUIFs9eV0gJiYgU1RBR0lORyBbPXldICYmIChDQVZJ
VU1fT0NURU9OX1NPQyB8fA0KPiBDT01QSUxFX1RFU1QgWz15XSkgJiYgTkVUREVWSUNFUyBbPXld
DQo+IA0KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tb2N0
ZW9uLmM6MTQ6DQo+IC4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5oOjExMTozNjogZXJy
b3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mDQo+IGZ1bmN0aW9uIKF3cml0ZXGiOyBkaWQgeW91
IG1lYW4goXdyaXRlbKI/DQo+IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9u
XQ0KPiAgIDExMSB8ICNkZWZpbmUgb2N0X21kaW9fd3JpdGVxKHZhbCwgYWRkcikgd3JpdGVxKHZh
bCwgKHZvaWQgKilhZGRyKQ0KPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXn5+fn5+DQo+IA0KPiBDT05GSUdfNjRCSVQgaXMgbm90IHN0cmljdGx5IG5lY2Vzc2Fy
eSBpZiB0aGUgcHJvcGVyIHJlYWRxL3dyaXRlcQ0KPiBkZWZpbml0aW9ucyBhcmUgaW5jbHVkZWQg
ZnJvbSBpby02NC1ub25hdG9taWMtbG8taGkuaC4NCj4gDQo+IENPTkZJR19PRl9NRElPIGlzIG5v
dCBuZWVkZWQgd2hlbiBDT05GSUdfQ09NUElMRV9URVNUIGlzIGVuYWJsZWQgYmVjYXVzZQ0KPiBv
ZiBjb21taXQgZjlkYzlhYzUxNjEwICgib2YvbWRpbzogQWRkIGR1bW15IGZ1bmN0aW9ucyBpbiBv
Zl9tZGlvLmguIikuDQo+IA0KPiBGaXhlczogMTcxYTliYWU2OGM3ICgic3RhZ2luZy9vY3Rlb246
IEFsbG93IHRlc3QgYnVpbGQgb24gIU1JUFMiKQ0KPiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qg
cm9ib3QgPGxrcEBpbnRlbC5jb20+DQo+IFJlcG9ydGVkLWJ5OiBNYXJrIEJyb3duIDxicm9vbmll
QGtlcm5lbC5vcmc+DQo+IFJlcG9ydGVkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFk
ZWFkLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2Vs
bG9yQGdtYWlsLmNvbT4NCg0KQXBwbGllZCB0byBuZXQtbmV4dC4NCg0KUGxlYXNlIG1ha2UgaXQg
Y2xlYXIgd2hhdCB0cmVlIHlvdXIgY2hhbmdlcyBhcmUgdGFyZ2V0dGluZyBpbiB0aGUgZnV0dXJl
LA0KdGhhbmsgeW91Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
