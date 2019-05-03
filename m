Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CB813021
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 16:27:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5987086972;
	Fri,  3 May 2019 14:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CmbX19t1p1cZ; Fri,  3 May 2019 14:27:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAAEB8697D;
	Fri,  3 May 2019 14:27:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49AD91BF350
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 14:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 472E622CCE
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 14:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QlfoRfpJNnZR for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 14:27:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by silver.osuosl.org (Postfix) with ESMTPS id 05F9620794
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 14:27:51 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EA69D4AD5;
 Fri,  3 May 2019 16:27:47 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 27d916b3;
 Fri, 3 May 2019 16:27:47 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 08/10] staging: octeon-ethernet: support of_get_mac_address
 new ERR_PTR error
Date: Fri,  3 May 2019 16:27:13 +0200
Message-Id: <1556893635-18549-9-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556893635-18549-1-git-send-email-ynezz@true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
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
CiBkcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvb2N0ZW9uL2V0aGVybmV0LmMgYi9kcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0
LmMKaW5kZXggOTg2ZGI3Ni4uMmIwMzAxOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL29j
dGVvbi9ldGhlcm5ldC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQuYwpA
QCAtNDIxLDcgKzQyMSw3IEBAIGludCBjdm1fb2N0X2NvbW1vbl9pbml0KHN0cnVjdCBuZXRfZGV2
aWNlICpkZXYpCiAJaWYgKHByaXYtPm9mX25vZGUpCiAJCW1hYyA9IG9mX2dldF9tYWNfYWRkcmVz
cyhwcml2LT5vZl9ub2RlKTsKIAotCWlmIChtYWMpCisJaWYgKCFJU19FUlIobWFjKSkKIAkJZXRo
ZXJfYWRkcl9jb3B5KGRldi0+ZGV2X2FkZHIsIG1hYyk7CiAJZWxzZQogCQlldGhfaHdfYWRkcl9y
YW5kb20oZGV2KTsKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
