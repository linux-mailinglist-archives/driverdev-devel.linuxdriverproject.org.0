Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A1015577
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 23:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 53EFB85EC4;
	Mon,  6 May 2019 21:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GvC3VzNDC-T9; Mon,  6 May 2019 21:25:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35F1E85E13;
	Mon,  6 May 2019 21:25:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 436461BF96A
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 21:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3BD4F26B0A
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 21:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9n6HK7B8FML for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 21:25:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by silver.osuosl.org (Postfix) with ESMTPS id 30EC926808
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 21:25:41 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2D96E50A5;
 Mon,  6 May 2019 23:25:39 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 2bdbf77d;
 Mon, 6 May 2019 23:25:38 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH net-next v2 3/4] staging: octeon-ethernet: Fix
 of_get_mac_address ERR_PTR check
Date: Mon,  6 May 2019 23:24:46 +0200
Message-Id: <1557177887-30446-4-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557177887-30446-1-git-send-email-ynezz@true.cz>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
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
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q29tbWl0IDI4NGViMTYwNjgxYyAoInN0YWdpbmc6IG9jdGVvbi1ldGhlcm5ldDogc3VwcG9ydApv
Zl9nZXRfbWFjX2FkZHJlc3MgbmV3IEVSUl9QVFIgZXJyb3IiKSBoYXMgaW50cm9kdWNlZCBjaGVj
a2luZyBmb3IKRVJSX1BUUiBlbmNvZGVkIGVycm9yIHZhbHVlIGZyb20gb2ZfZ2V0X21hY19hZGRy
ZXNzIHdpdGggSVNfRVJSIG1hY3JvLAp3aGljaCBpcyBub3Qgc3VmZmljaWVudCBpbiB0aGlzIGNh
c2UsIGFzIHRoZSBtYWMgdmFyaWFibGUgaXMgc2V0IHRvIE5VTEwKaW5pdGlhbHkgYW5kIGlmIHRo
ZSBrZXJuZWwgaXMgY29tcGlsZWQgd2l0aG91dCBEVCBzdXBwb3J0IHRoaXMgTlVMTAp3b3VsZCBn
ZXQgcGFzc2VkIHRvIElTX0VSUiwgd2hpY2ggd291bGQgbGVhZCB0byB0aGUgd3JvbmcgZGVjaXNp
b24gYW5kCndvdWxkIHBhc3MgdGhhdCBOVUxMIHBvaW50ZXIgYW5kIGludmFsaWQgTUFDIGFkZHJl
c3MgZnVydGhlci4KCkZpeGVzOiAyODRlYjE2MDY4MWMgKCJzdGFnaW5nOiBvY3Rlb24tZXRoZXJu
ZXQ6IHN1cHBvcnQgb2ZfZ2V0X21hY19hZGRyZXNzIG5ldyBFUlJfUFRSIGVycm9yIikKU2lnbmVk
LW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvb2N0ZW9uL2V0aGVybmV0LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0
aGVybmV0LmMgYi9kcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LmMKaW5kZXggMmIwMzAx
OC4uODg0N2ExMWMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0
LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL29jdGVvbi9ldGhlcm5ldC5jCkBAIC00MjEsNyArNDIx
LDcgQEAgaW50IGN2bV9vY3RfY29tbW9uX2luaXQoc3RydWN0IG5ldF9kZXZpY2UgKmRldikKIAlp
ZiAocHJpdi0+b2Zfbm9kZSkKIAkJbWFjID0gb2ZfZ2V0X21hY19hZGRyZXNzKHByaXYtPm9mX25v
ZGUpOwogCi0JaWYgKCFJU19FUlIobWFjKSkKKwlpZiAoIUlTX0VSUl9PUl9OVUxMKG1hYykpCiAJ
CWV0aGVyX2FkZHJfY29weShkZXYtPmRldl9hZGRyLCBtYWMpOwogCWVsc2UKIAkJZXRoX2h3X2Fk
ZHJfcmFuZG9tKGRldik7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
