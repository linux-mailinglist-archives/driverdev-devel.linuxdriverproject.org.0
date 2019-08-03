Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFFE807C4
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 20:34:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ACA02204B6;
	Sat,  3 Aug 2019 18:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5YZdUSC2lwW9; Sat,  3 Aug 2019 18:34:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4BD45204AD;
	Sat,  3 Aug 2019 18:34:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43FED1BF341
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 18:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3AD1C86C0E
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 18:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mcjzlIeqj4St for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 18:34:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 21DE186DC5
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 18:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9M2MLeUnlkFI+r7V5jW757xqZ1JZIPJo/ExJUeqgiJ0=; b=dhCjxP1ZD5hspyeRKNOBJahqAN
 SyZcXf2GlXCQZpho8ysccaeEPWQ9BQArXRLlFmSMaa7rJhAqFRaOMunEBlqkxe0NfCsB4rIB9r5C/
 6bOuh6s4Foanl+nGjiKbrsvtLdxpXs3RrUVHQ/W1PL2OAHi8NrkrGv9xaOplzAVz25dUFE1TNMWlE
 D5JhvdOaEEzCiOBuaJkpWkVpzeYSRxgiKyz23ijfHuA8i7tnn95UxIogpRybJqFzm0ncEPtLW9rcc
 Wg8dsq1Y1qQueayrEyWt/ZftqASLsN1wbCUlhBqWuzTtskV/sS2zVLuBwLvtwpQaJGv50sdk5Rtp4
 hSaqRpwA==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=[192.168.1.17])
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htyrE-00072c-JW; Sat, 03 Aug 2019 18:34:20 +0000
Subject: Re: [PATCH v2] net: mdio-octeon: Fix Kconfig warnings and build errors
To: Nathan Chancellor <natechancellor@gmail.com>
References: <20190731185023.20954-1-natechancellor@gmail.com>
 <20190803060155.89548-1-natechancellor@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <11bf2f76-1487-7831-e6df-dbec632b3f34@infradead.org>
Date: Sat, 3 Aug 2019 11:34:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190803060155.89548-1-natechancellor@gmail.com>
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 netdev@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOC8yLzE5IDExOjAxIFBNLCBOYXRoYW4gQ2hhbmNlbGxvciB3cm90ZToKPiBBZnRlciBjb21t
aXQgMTcxYTliYWU2OGM3ICgic3RhZ2luZy9vY3Rlb246IEFsbG93IHRlc3QgYnVpbGQgb24KPiAh
TUlQUyIpLCB0aGUgZm9sbG93aW5nIGNvbWJpbmF0aW9uIG9mIGNvbmZpZ3MgY2F1c2UgYSBmZXcg
S2NvbmZpZwo+IHdhcm5pbmdzIGFuZCBidWlsZCBlcnJvcnMgKGRpc3RpbGxlZCBmcm9tIGFybSBh
bGx5ZXNjb25maWcgYW5kIFJhbmR5J3MKPiByYW5kY29uZmlnIGJ1aWxkcyk6Cj4gCj4gICAgIENP
TkZJR19ORVRERVZJQ0VTPXkKPiAgICAgQ09ORklHX1NUQUdJTkc9eQo+ICAgICBDT05GSUdfQ09N
UElMRV9URVNUPXkKPiAKPiBhbmQgQ09ORklHX09DVEVPTl9FVEhFUk5FVCBhcyBlaXRoZXIgYSBt
b2R1bGUgb3IgYnVpbHQtaW4uCj4gCj4gV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2ll
cyBkZXRlY3RlZCBmb3IgTURJT19PQ1RFT04KPiAgIERlcGVuZHMgb24gW25dOiBORVRERVZJQ0VT
IFs9eV0gJiYgTURJT19ERVZJQ0UgWz15XSAmJiBNRElPX0JVUyBbPXldCj4gJiYgNjRCSVQgWz1u
XSAmJiBIQVNfSU9NRU0gWz15XSAmJiBPRl9NRElPIFs9bl0KPiAgIFNlbGVjdGVkIGJ5IFt5XToK
PiAgIC0gT0NURU9OX0VUSEVSTkVUIFs9eV0gJiYgU1RBR0lORyBbPXldICYmIChDQVZJVU1fT0NU
RU9OX1NPQyB8fAo+IENPTVBJTEVfVEVTVCBbPXldKSAmJiBORVRERVZJQ0VTIFs9eV0KPiAKPiBJ
biBmaWxlIGluY2x1ZGVkIGZyb20gLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tb2N0ZW9uLmM6MTQ6
Cj4gLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmg6MTExOjM2OiBlcnJvcjogaW1wbGlj
aXQgZGVjbGFyYXRpb24gb2YKPiBmdW5jdGlvbiDigJh3cml0ZXHigJk7IGRpZCB5b3UgbWVhbiDi
gJh3cml0ZWzigJk/Cj4gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4g
ICAxMTEgfCAjZGVmaW5lIG9jdF9tZGlvX3dyaXRlcSh2YWwsIGFkZHIpIHdyaXRlcSh2YWwsICh2
b2lkICopYWRkcikKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Xn5+fn5+Cj4gCj4gQ09ORklHXzY0QklUIGlzIG5vdCBzdHJpY3RseSBuZWNlc3NhcnkgaWYgdGhl
IHByb3BlciByZWFkcS93cml0ZXEKPiBkZWZpbml0aW9ucyBhcmUgaW5jbHVkZWQgZnJvbSBpby02
NC1ub25hdG9taWMtbG8taGkuaC4KPiAKPiBDT05GSUdfT0ZfTURJTyBpcyBub3QgbmVlZGVkIHdo
ZW4gQ09ORklHX0NPTVBJTEVfVEVTVCBpcyBlbmFibGVkIGJlY2F1c2UKPiBvZiBjb21taXQgZjlk
YzlhYzUxNjEwICgib2YvbWRpbzogQWRkIGR1bW15IGZ1bmN0aW9ucyBpbiBvZl9tZGlvLmguIiku
Cj4gCj4gRml4ZXM6IDE3MWE5YmFlNjhjNyAoInN0YWdpbmcvb2N0ZW9uOiBBbGxvdyB0ZXN0IGJ1
aWxkIG9uICFNSVBTIikKPiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRl
bC5jb20+Cj4gUmVwb3J0ZWQtYnk6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPiBS
ZXBvcnRlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+Cj4gU2lnbmVk
LW9mZi1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KCldv
cmtzIGZvciBtZS4gRml4ZXMgdGhlIHJlcG9ydGVkIGJ1aWxkIGVycm9ycy4gIFRoYW5rcy4KCkFj
a2VkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4gIyBidWlsZC10ZXN0
ZWQKCj4gLS0tCj4gCj4gdjEgLT4gdjI6Cj4gCj4gKiBBZGRyZXNzIFJhbmR5J3MgcmVwb3J0ZWQg
ZmFpbHVyZSBoZXJlOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvYjM0NDQyODMtN2E3
Ny1lY2U4LTdhYzYtNDE3NTZhYTdkYzYwQGluZnJhZGVhZC5vcmcvCj4gICBieSBub3QgcmVxdWly
aW5nIENPTkZJR19PRl9NRElPIHdoZW4gQ09ORklHX0NPTVBJTEVfVEVTVCBpcyBzZXQuCj4gCj4g
KiBJbXByb3ZlIGNvbW1pdCBtZXNzYWdlCj4gCj4gIGRyaXZlcnMvbmV0L3BoeS9LY29uZmlnICAg
ICAgIHwgNCArKy0tCj4gIGRyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5oIHwgMiArKwo+ICAy
IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L0tjb25maWcgYi9kcml2ZXJzL25ldC9waHkvS2NvbmZp
Zwo+IGluZGV4IDIwZjE0YzVmYmI3ZS4uMGUzZDllM2QzNTMzIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbmV0L3BoeS9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9uZXQvcGh5L0tjb25maWcKPiBAQCAt
MTU5LDggKzE1OSw4IEBAIGNvbmZpZyBNRElPX01TQ0NfTUlJTQo+ICAKPiAgY29uZmlnIE1ESU9f
T0NURU9OCj4gIAl0cmlzdGF0ZSAiT2N0ZW9uIGFuZCBzb21lIFRodW5kZXJYIFNPQ3MgTURJTyBi
dXNlcyIKPiAtCWRlcGVuZHMgb24gNjRCSVQKPiAtCWRlcGVuZHMgb24gSEFTX0lPTUVNICYmIE9G
X01ESU8KPiArCWRlcGVuZHMgb24gKDY0QklUICYmIE9GX01ESU8pIHx8IENPTVBJTEVfVEVTVAo+
ICsJZGVwZW5kcyBvbiBIQVNfSU9NRU0KPiAgCXNlbGVjdCBNRElPX0NBVklVTQo+ICAJaGVscAo+
ICAJICBUaGlzIG1vZHVsZSBwcm92aWRlcyBhIGRyaXZlciBmb3IgdGhlIE9jdGVvbiBhbmQgVGh1
bmRlclggTURJTwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9waHkvbWRpby1jYXZpdW0uaCBi
L2RyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5oCj4gaW5kZXggZWQ1ZjliYjU0NDhkLi5iN2Y4
OWFkMjc0NjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmgKPiAr
KysgYi9kcml2ZXJzL25ldC9waHkvbWRpby1jYXZpdW0uaAo+IEBAIC0xMDgsNiArMTA4LDggQEAg
c3RhdGljIGlubGluZSB1NjQgb2N0X21kaW9fcmVhZHEodTY0IGFkZHIpCj4gIAlyZXR1cm4gY3Zt
eF9yZWFkX2NzcihhZGRyKTsKPiAgfQo+ICAjZWxzZQo+ICsjaW5jbHVkZSA8bGludXgvaW8tNjQt
bm9uYXRvbWljLWxvLWhpLmg+Cj4gKwo+ICAjZGVmaW5lIG9jdF9tZGlvX3dyaXRlcSh2YWwsIGFk
ZHIpCXdyaXRlcSh2YWwsICh2b2lkICopYWRkcikKPiAgI2RlZmluZSBvY3RfbWRpb19yZWFkcShh
ZGRyKQkJcmVhZHEoKHZvaWQgKilhZGRyKQo+ICAjZW5kaWYKPiAKCgotLSAKflJhbmR5Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
