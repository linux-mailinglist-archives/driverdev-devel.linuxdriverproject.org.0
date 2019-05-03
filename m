Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C60801297B
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 10:05:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0BEC230AD4;
	Fri,  3 May 2019 08:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iuti7mKHUUZA; Fri,  3 May 2019 08:05:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B72C122C6B;
	Fri,  3 May 2019 08:05:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D5651BF976
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 08:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8AD52868A2
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 08:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0kp0RQzq8kgH for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 08:05:17 +0000 (UTC)
X-Greylist: delayed 00:08:23 by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2A5958688C
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 08:05:16 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 407293589;
 Fri,  3 May 2019 09:56:51 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 7b19b074;
 Fri, 3 May 2019 09:56:50 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 08/10] staging: octeon-ethernet: support of_get_mac_address
 new ERR_PTR error
Date: Fri,  3 May 2019 09:56:05 +0200
Message-Id: <1556870168-26864-9-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556870168-26864-1-git-send-email-ynezz@true.cz>
References: <1556870168-26864-1-git-send-email-ynezz@true.cz>
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
dCBjb3VsZCBub3cKcmV0dXJuIE5VTEwgYW5kIEVSUl9QVFIgZW5jb2RlZCBlcnJvciB2YWx1ZXMs
IHNvIHdlIG5lZWQgdG8gYWRqdXN0IGFsbApjdXJyZW50IHVzZXJzIG9mIG9mX2dldF9tYWNfYWRk
cmVzcyB0byB0aGlzIG5ldyBmYWN0LgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5l
enpAdHJ1ZS5jej4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LmMgYi9kcml2ZXJzL3N0YWdpbmcv
b2N0ZW9uL2V0aGVybmV0LmMKaW5kZXggOTg2ZGI3Ni4uODg0N2ExMWMyIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3N0YWdpbmcvb2N0ZW9uL2V0aGVybmV0LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL29j
dGVvbi9ldGhlcm5ldC5jCkBAIC00MjEsNyArNDIxLDcgQEAgaW50IGN2bV9vY3RfY29tbW9uX2lu
aXQoc3RydWN0IG5ldF9kZXZpY2UgKmRldikKIAlpZiAocHJpdi0+b2Zfbm9kZSkKIAkJbWFjID0g
b2ZfZ2V0X21hY19hZGRyZXNzKHByaXYtPm9mX25vZGUpOwogCi0JaWYgKG1hYykKKwlpZiAoIUlT
X0VSUl9PUl9OVUxMKG1hYykpCiAJCWV0aGVyX2FkZHJfY29weShkZXYtPmRldl9hZGRyLCBtYWMp
OwogCWVsc2UKIAkJZXRoX2h3X2FkZHJfcmFuZG9tKGRldik7Ci0tIAoxLjkuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
