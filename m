Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5301556A
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 23:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B78D626CAB;
	Mon,  6 May 2019 21:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wUcovxIzhM14; Mon,  6 May 2019 21:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A83E726673;
	Mon,  6 May 2019 21:25:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 565B71BF8C7
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 21:25:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 52B168272B
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 21:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kgYmvRCNuI8f for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 21:25:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB73D85721
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 21:25:12 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 058C75099;
 Mon,  6 May 2019 23:25:08 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a62b6721;
 Mon, 6 May 2019 23:25:07 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Date: Mon,  6 May 2019 23:24:43 +0200
Message-Id: <1557177887-30446-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
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
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgp0aGlzIHBhdGNoIHNlcmllcyBpcyBhbiBhdHRlbXB0IHRvIGZpeCB0aGUgbWVzcywgSSd2
ZSBzb21laG93IG1hbmFnZWQgdG8KaW50cm9kdWNlLgoKRmlyc3QgcGF0Y2ggaW4gdGhpcyBzZXJp
ZXMgaXMgZGVmYWN0byB2NSBvZiB0aGUgcHJldmlvdXMgMDUvMTAgcGF0Y2ggaW4gdGhlCnNlcmll
cywgYnV0IHNpbmNlIHRoZSB2NCBvZiB0aGlzIDA1LzEwIHBhdGNoIHdhc24ndCBwaWNrZWQgdXAg
YnkgdGhlCnBhdGNod29yayBmb3Igc29tZSB1bmtub3duIHJlYXNvbiwgdGhpcyBwYXRjaCB3YXNu
J3QgYXBwbGllZCB3aXRoIHRoZSBvdGhlcgo5IHBhdGNoZXMgaW4gdGhlIHNlcmllcywgc28gSSdt
IHJlc2VuZGluZyBpdCBhcyBhIHNlcGFyYXRlIHBhdGNoIG9mIHRoaXMKZml4dXAgc2VyaWVzIGFn
YWluLgoKU2Vjb25kIHBhdGNoIGlzIGEgcmVzdWx0IG9mIHRoaXMgcmViYXNlIGFnYWluc3QgbmV0
LW5leHQgdHJlZSwgd2hlcmUgSSB3YXMKY2hlY2tpbmcgYWdhaW4gYWxsIGN1cnJlbnQgdXNlcnMg
b2Ygb2ZfZ2V0X21hY19hZGRyZXNzIGFuZCBmb3VuZCBvdXQsIHRoYXQKdGhlcmUncyBuZXcgb25l
IGluIERTQSwgc28gSSd2ZSBjb252ZXJ0ZWQgdGhpcyB1c2VyIHRvIHRoZSBuZXcgRVJSX1BUUgpl
bmNvZGVkIGVycm9yIHZhbHVlIGFzIHdlbGwuCgpUaGlyZCBwYXRjaCB3aGljaCB3YXMgc2VudCBh
cyB2NSB3YXNuJ3QgY29uc2lkZXJlZCBmb3IgbWVyZ2UsIGJ1dCBJIHN0aWxsCnRoaW5rLCB0aGF0
IHdlIG5lZWQgdG8gY2hlY2sgZm9yIHBvc3NpYmxlIE5VTEwgdmFsdWUsIHRodXMgY3VycmVudCBJ
U19FUlIKY2hlY2sgaXNuJ3Qgc3VmZmljaWVudCBhbmQgd2UgbmVlZCB0byB1c2UgSVNfRVJSX09S
X05VTEwgaW5zdGVhZC4KCkZvdXJ0aCBwYXRjaCBmaXhlcyB3YXJuaW5nIHJlcG9ydGVkIGJ5IGti
dWlsZCB0ZXN0IHJvYm90LgoKQ2hlZXJzLAoKUGV0cgoKUGV0ciDFoHRldGlhciAoNCk6CiAgbmV0
OiBldGhlcm5ldDogc3VwcG9ydCBvZl9nZXRfbWFjX2FkZHJlc3MgbmV3IEVSUl9QVFIgZXJyb3IK
ICBuZXQ6IGRzYTogc3VwcG9ydCBvZl9nZXRfbWFjX2FkZHJlc3MgbmV3IEVSUl9QVFIgZXJyb3IK
ICBzdGFnaW5nOiBvY3Rlb24tZXRoZXJuZXQ6IEZpeCBvZl9nZXRfbWFjX2FkZHJlc3MgRVJSX1BU
UiBjaGVjawogIG5ldDogdXNiOiBzbXNjOiBmaXggd2FybmluZyByZXBvcnRlZCBieSBrYnVpbGQg
dGVzdCByb2JvdAoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2Flcm9mbGV4L2dyZXRoLmMgICAgICAg
ICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvYWxsd2lubmVyL3N1bjRpLWVt
YWMuYyAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9hbHRlcmEvYWx0ZXJh
X3RzZV9tYWluLmMgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2FyYy9lbWFj
X21haW4uYyAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvYXVy
b3JhL25iODgwMC5jICAgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9icm9hZGNvbS9iY21zeXNwb3J0LmMgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2Jyb2FkY29tL2JnbWFjLWJjbWEuYyAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvYnJvYWRjb20vYmdtYWMtcGxhdGZvcm0uYyAgICAgICAgfCAyICstCiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9icm9hZGNvbS9nZW5ldC9iY21nZW5ldC5jICAgICAgICB8IDIgKy0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2Nhdml1bS9vY3Rlb24vb2N0ZW9uX21nbXQuYyAgICAgIHwg
MiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2F2aXVtL3RodW5kZXIvdGh1bmRlcl9iZ3guYyAg
ICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9kYXZpY29tL2RtOTAwMC5jICAgICAgICAg
ICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2V0aG9jLmMgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZXpjaGlwL25wc19lbmV0
LmMgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUv
ZmVjX21haW4uYyAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVz
Y2FsZS9mZWNfbXBjNTJ4eC5jICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
ZnJlZXNjYWxlL2ZtYW4vbWFjLmMgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9mcmVlc2NhbGUvZnNfZW5ldC9mc19lbmV0LW1haW4uYyB8IDIgKy0KIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ZyZWVzY2FsZS9naWFuZmFyLmMgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL3VjY19nZXRoLmMgICAgICAgICAgICAgfCAyICstCiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9oaXNpbGljb24vaGlzaV9mZW1hYy5jICAgICAgICAgICB8IDIg
Ky0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2hpc2lsaWNvbi9oaXg1aGQyX2dtYWMuYyAgICAgICAg
IHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbGFudGlxX3hyeDIwMC5jICAgICAgICAgICAg
ICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tYXJ2ZWxsL212NjQzeHhfZXRoLmMg
ICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21hcnZlbGwvbXZuZXRhLmMg
ICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9weGEx
NjhfZXRoLmMgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tYXJ2ZWxs
L3NreTIuYyAgICAgICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21l
ZGlhdGVrL210a19ldGhfc29jLmMgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJu
ZXQvbWljcmVsL2tzODg1MS5jICAgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9taWNyZWwva3M4ODUxX21sbC5jICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L254cC9scGNfZXRoLmMgICAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJp
dmVycy9uZXQvZXRoZXJuZXQvcXVhbGNvbW0vcWNhX3NwaS5jICAgICAgICAgICAgICAgfCAyICst
CiBkcml2ZXJzL25ldC9ldGhlcm5ldC9xdWFsY29tbS9xY2FfdWFydC5jICAgICAgICAgICAgICB8
IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3JlbmVzYXMvcmF2Yl9tYWluLmMgICAgICAgICAg
ICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvcmVuZXNhcy9zaF9ldGguYyAgICAgICAg
ICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9zYW1zdW5nL3N4Z2JlL3N4Z2Jl
X3BsYXRmb3JtLmMgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3NvY2lvbmV4dC9zbmlf
YXZlLmMgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9z
dG1tYWMvc3RtbWFjX21haW4uYyAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9j
cHN3LmMgICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0
L3RpL25ldGNwX2NvcmUuYyAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRo
ZXJuZXQvd2l6bmV0L3c1MTAwLmMgICAgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25l
dC9ldGhlcm5ldC94aWxpbngvbGxfdGVtYWNfbWFpbi5jICAgICAgICAgICB8IDIgKy0KIGRyaXZl
cnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfYXhpZW5ldF9tYWluLmMgICAgIHwgMiArLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jICAgICAgICAgfCAy
ICstCiBkcml2ZXJzL25ldC91c2Ivc21zYzc1eHguYyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDIgKy0KIGRyaXZlcnMvbmV0L3VzYi9zbXNjOTV4eC5jICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgMiArLQogZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jICAgICAgICAg
ICAgICAgICAgICAgfCAyICstCiBuZXQvZHNhL3NsYXZlLmMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IDIgKy0KIG5ldC9ldGhlcm5ldC9ldGguYyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQogNDkgZmlsZXMgY2hhbmdlZCwgNDkgaW5zZXJ0
aW9ucygrKSwgNDkgZGVsZXRpb25zKC0pCgotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
