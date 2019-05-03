Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA9513140
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 17:33:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82CA487ADD;
	Fri,  3 May 2019 15:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mXWgRLQBL-rI; Fri,  3 May 2019 15:33:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6570A87AB8;
	Fri,  3 May 2019 15:33:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 421071BF5B5
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 15:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F68522FD5
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 15:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSetSYDZoz2p for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 15:32:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by silver.osuosl.org (Postfix) with ESMTPS id 00CFD228D1
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 15:32:57 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4B7154CAC;
 Fri,  3 May 2019 17:32:55 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 28cde553;
 Fri, 3 May 2019 17:32:53 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v5] staging: octeon-ethernet: support of_get_mac_address new
 ERR_PTR error
Date: Fri,  3 May 2019 17:32:47 +0200
Message-Id: <1556897567-22247-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
In-Reply-To: <1556893635-18549-9-git-send-email-ynezz@true.cz>
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
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlcmUgd2FzIE5WTUVNIHN1cHBvcnQgYWRkZWQgdG8gb2ZfZ2V0X21hY19hZGRyZXNzLCBzbyBp
dCBjb3VsZCBub3cgcmV0dXJuCkVSUl9QVFIgZW5jb2RlZCBlcnJvciB2YWx1ZXMsIHNvIHdlIG5l
ZWQgdG8gYWRqdXN0IGFsbCBjdXJyZW50IHVzZXJzIG9mCm9mX2dldF9tYWNfYWRkcmVzcyB0byB0
aGlzIG5ldyBmYWN0LgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4KLS0tCgogQ2hhbmdlcyBzaW5jZSB2MzoKCiAgKiBJU19FUlJfT1JfTlVMTCAtPiBJU19FUlIK
CiBDaGFuZ2VzIHNpbmNlIHY0OgoKICAqIEkndmUganVzdCBibGluZGx5IHJlcGxhY2VkIElTX0VS
Ul9PUl9OVUxMIHdpdGggSVNfRVJSIGluIHY0LCBidXQgdGhpcyB3YXMKICAgIHdyb25nLCBhcyBJ
J3ZlIGp1c3QgcmVhbGl6ZWQsIHRoYXQgd2Ugc3RpbGwgbmVlZCB0byBjaGVjayBmb3IgTlVMTCBp
biB0aGlzCiAgICBwYXJ0aWN1bGFyIGNhc2UgYXMgd2VsbCwgc28gSSd2ZSBhZGRlZCBiYWNrIElT
X0VSUl9PUl9OVUxMIGNoZWNrCgogZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jIGIvZHJpdmVycy9zdGFn
aW5nL29jdGVvbi9ldGhlcm5ldC5jCmluZGV4IDk4NmRiNzYuLjg4NDdhMTFjMiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jCisrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy9vY3Rlb24vZXRoZXJuZXQuYwpAQCAtNDIxLDcgKzQyMSw3IEBAIGludCBjdm1fb2N0X2NvbW1v
bl9pbml0KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpCiAJaWYgKHByaXYtPm9mX25vZGUpCiAJCW1h
YyA9IG9mX2dldF9tYWNfYWRkcmVzcyhwcml2LT5vZl9ub2RlKTsKIAotCWlmIChtYWMpCisJaWYg
KCFJU19FUlJfT1JfTlVMTChtYWMpKQogCQlldGhlcl9hZGRyX2NvcHkoZGV2LT5kZXZfYWRkciwg
bWFjKTsKIAllbHNlCiAJCWV0aF9od19hZGRyX3JhbmRvbShkZXYpOwotLSAKMS45LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
