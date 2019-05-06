Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC66D150E5
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 18:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29DC1870C7;
	Mon,  6 May 2019 16:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id deNO1GEL+o+i; Mon,  6 May 2019 16:09:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52F5287100;
	Mon,  6 May 2019 16:09:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2923F1BF8C7
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 16:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1C98F86786
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 16:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZFWkJnnZcNhJ for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 16:09:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3468380781
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 16:09:00 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B7E5243D8;
 Mon,  6 May 2019 18:08:56 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 49140d29;
 Mon, 6 May 2019 18:08:55 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH RESEND net-next 0/3] of_get_mac_address ERR_PTR fixes
Date: Mon,  6 May 2019 18:08:37 +0200
Message-Id: <1557158920-31586-1-git-send-email-ynezz@true.cz>
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
X05VTEwgaW5zdGVhZC4KCkNoZWVycywKClBldHIKClBldHIgxaB0ZXRpYXIgKDMpOgogIG5ldDog
ZXRoZXJuZXQ6IHN1cHBvcnQgb2ZfZ2V0X21hY19hZGRyZXNzIG5ldyBFUlJfUFRSIGVycm9yCiAg
bmV0OiBkc2E6IHN1cHBvcnQgb2ZfZ2V0X21hY19hZGRyZXNzIG5ldyBFUlJfUFRSIGVycm9yCiAg
c3RhZ2luZzogb2N0ZW9uLWV0aGVybmV0OiBGaXggb2ZfZ2V0X21hY19hZGRyZXNzIEVSUl9QVFIg
Y2hlY2sKCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9hZXJvZmxleC9ncmV0aC5jICAgICAgICAgICAg
ICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2FsbHdpbm5lci9zdW40aS1lbWFjLmMg
ICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvYWx0ZXJhL2FsdGVyYV90c2Vf
bWFpbi5jICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9hcmMvZW1hY19tYWlu
LmMgICAgICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2F1cm9yYS9u
Yjg4MDAuYyAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJv
YWRjb20vYmNtc3lzcG9ydC5jICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9icm9hZGNvbS9iZ21hYy1iY21hLmMgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2Jyb2FkY29tL2JnbWFjLXBsYXRmb3JtLmMgICAgICAgIHwgMiArLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvYnJvYWRjb20vZ2VuZXQvYmNtZ2VuZXQuYyAgICAgICAgfCAyICstCiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9jYXZpdW0vb2N0ZW9uL29jdGVvbl9tZ210LmMgICAgICB8IDIgKy0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2Nhdml1bS90aHVuZGVyL3RodW5kZXJfYmd4LmMgICAgIHwg
MiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZGF2aWNvbS9kbTkwMDAuYyAgICAgICAgICAgICAg
ICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9ldGhvYy5jICAgICAgICAgICAgICAgICAg
ICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2V6Y2hpcC9ucHNfZW5ldC5jICAg
ICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL2ZlY19t
YWluLmMgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUv
ZmVjX21wYzUyeHguYyAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVz
Y2FsZS9mbWFuL21hYy5jICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
ZnJlZXNjYWxlL2ZzX2VuZXQvZnNfZW5ldC1tYWluLmMgfCAyICstCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9mcmVlc2NhbGUvZ2lhbmZhci5jICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ZyZWVzY2FsZS91Y2NfZ2V0aC5jICAgICAgICAgICAgIHwgMiArLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaGlzaWxpY29uL2hpc2lfZmVtYWMuYyAgICAgICAgICAgfCAyICstCiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9oaXNpbGljb24vaGl4NWhkMl9nbWFjLmMgICAgICAgICB8IDIg
Ky0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2xhbnRpcV94cngyMDAuYyAgICAgICAgICAgICAgICAg
IHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9tdjY0M3h4X2V0aC5jICAgICAg
ICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tYXJ2ZWxsL212bmV0YS5jICAgICAg
ICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21hcnZlbGwvcHhhMTY4X2V0
aC5jICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9za3ky
LmMgICAgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRl
ay9tdGtfZXRoX3NvYy5jICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21p
Y3JlbC9rczg4NTEuYyAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJu
ZXQvbWljcmVsL2tzODg1MV9tbGwuYyAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9ueHAvbHBjX2V0aC5jICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L3F1YWxjb21tL3FjYV9zcGkuYyAgICAgICAgICAgICAgIHwgMiArLQogZHJp
dmVycy9uZXQvZXRoZXJuZXQvcXVhbGNvbW0vcWNhX3VhcnQuYyAgICAgICAgICAgICAgfCAyICst
CiBkcml2ZXJzL25ldC9ldGhlcm5ldC9yZW5lc2FzL3JhdmJfbWFpbi5jICAgICAgICAgICAgICB8
IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3JlbmVzYXMvc2hfZXRoLmMgICAgICAgICAgICAg
ICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvc2Ftc3VuZy9zeGdiZS9zeGdiZV9wbGF0
Zm9ybS5jICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9zb2Npb25leHQvc25pX2F2ZS5j
ICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFj
L3N0bW1hY19tYWluLmMgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvY3Bzdy5j
ICAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9u
ZXRjcF9jb3JlLmMgICAgICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0
L3dpem5ldC93NTEwMC5jICAgICAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvZXRo
ZXJuZXQveGlsaW54L2xsX3RlbWFjX21haW4uYyAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25l
dC9ldGhlcm5ldC94aWxpbngveGlsaW54X2F4aWVuZXRfbWFpbi5jICAgICB8IDIgKy0KIGRyaXZl
cnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xpdGUuYyAgICAgICAgIHwgMiArLQog
ZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jICAgICAgICAgICAgICAgICAgICAgfCAy
ICstCiBuZXQvZHNhL3NsYXZlLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDIgKy0KIG5ldC9ldGhlcm5ldC9ldGguYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgMiArLQogNDcgZmlsZXMgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgNDcgZGVs
ZXRpb25zKC0pCgotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
