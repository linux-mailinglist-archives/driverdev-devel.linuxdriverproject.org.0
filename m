Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2385015576
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 23:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C146185DC4;
	Mon,  6 May 2019 21:25:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YN6qyiFJO9fX; Mon,  6 May 2019 21:25:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6AF8B859C1;
	Mon,  6 May 2019 21:25:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 786411BF95C
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 21:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7576D85721
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 21:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2pAX0bMFx0Me for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 21:25:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AC43D8272B
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 21:25:48 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BAD2F50A6;
 Mon,  6 May 2019 23:25:46 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 9ba474fd;
 Mon, 6 May 2019 23:25:45 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Steve Glendinning <steve.glendinning@shawell.net>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
Subject: [PATCH net-next v2 4/4] net: usb: smsc: fix warning reported by
 kbuild test robot
Date: Mon,  6 May 2019 23:24:47 +0200
Message-Id: <1557177887-30446-5-git-send-email-ynezz@true.cz>
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhpcyBwYXRjaCBmaXhlcyBmb2xsb3dpbmcgd2FybmluZyByZXBvcnRlZCBieSBrYnVpbGQgdGVz
dCByb2JvdDoKCiBJbiBmdW5jdGlvbiDigJhtZW1jcHnigJksCiAgICAgaW5saW5lZCBmcm9tIOKA
mHNtc2M3NXh4X2luaXRfbWFjX2FkZHJlc3PigJkgYXQgZHJpdmVycy9uZXQvdXNiL3Ntc2M3NXh4
LmM6Nzc4OjMsCiAgICAgaW5saW5lZCBmcm9tIOKAmHNtc2M3NXh4X2JpbmTigJkgYXQgZHJpdmVy
cy9uZXQvdXNiL3Ntc2M3NXh4LmM6MTUwMToyOgogLi9pbmNsdWRlL2xpbnV4L3N0cmluZy5oOjM1
NTo5OiB3YXJuaW5nOiBhcmd1bWVudCAyIG51bGwgd2hlcmUgbm9uLW51bGwgZXhwZWN0ZWQgWy1X
bm9ubnVsbF0KICAgcmV0dXJuIF9fYnVpbHRpbl9tZW1jcHkocCwgcSwgc2l6ZSk7CiAgICAgICAg
ICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiBkcml2ZXJzL25ldC91c2Ivc21zYzc1eHgu
YzogSW4gZnVuY3Rpb24g4oCYc21zYzc1eHhfYmluZOKAmToKIC4vaW5jbHVkZS9saW51eC9zdHJp
bmcuaDozNTU6OTogbm90ZTogaW4gYSBjYWxsIHRvIGJ1aWx0LWluIGZ1bmN0aW9uIOKAmF9fYnVp
bHRpbl9tZW1jcHnigJkKCkkndmUgcmVwbGFjZWQgdGhlIG9mZmVuZGluZyBtZW1jcHkgd2l0aCBl
dGhlcl9hZGRyX2NvcHksIGJlY2F1c2UgSSdtCjEwMCUgc3VyZSwgdGhhdCBvZl9nZXRfbWFjX2Fk
ZHJlc3MgY2FuJ3QgcmV0dXJuIE5VTEwgYXMgaXQgcmV0dXJucyB2YWxpZApwb2ludGVyIG9yIEVS
Ul9QVFIgZW5jb2RlZCB2YWx1ZSwgbm90aGluZyBlbHNlLgoKSSdtIGhlc2l0YW50IHRvIGp1c3Qg
Y2hhbmdlIElTX0VSUiBpbnRvIElTX0VSUl9PUl9OVUxMIGNoZWNrLCBhcyB0aGlzCndvdWxkIG1h
a2UgdGhlIHdhcm5pbmcgZGlzYXBwZWFyIGFsc28sIGJ1dCBpdCB3b3VsZCBiZSBjb25mdXNpbmcg
dG8KY2hlY2sgZm9yIGltcG9zc2libGUgcmV0dXJuIHZhbHVlIGp1c3QgdG8gbWFrZSBhIGNvbXBp
bGVyIGhhcHB5LgoKRml4ZXM6IGFkZmIzY2IyYzUyZSAoIm5ldDogdXNiOiBzdXBwb3J0IG9mX2dl
dF9tYWNfYWRkcmVzcyBuZXcgRVJSX1BUUiBlcnJvciIpClJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVz
dCByb2JvdCA8bGtwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5l
enpAdHJ1ZS5jej4KLS0tCiBkcml2ZXJzL25ldC91c2Ivc21zYzc1eHguYyB8IDIgKy0KIGRyaXZl
cnMvbmV0L3VzYi9zbXNjOTV4eC5jIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvdXNiL3Ntc2M3
NXh4LmMgYi9kcml2ZXJzL25ldC91c2Ivc21zYzc1eHguYwppbmRleCBkMjdiNjI3Li5lNGMyZjNh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC91c2Ivc21zYzc1eHguYworKysgYi9kcml2ZXJzL25l
dC91c2Ivc21zYzc1eHguYwpAQCAtNzc1LDcgKzc3NSw3IEBAIHN0YXRpYyB2b2lkIHNtc2M3NXh4
X2luaXRfbWFjX2FkZHJlc3Moc3RydWN0IHVzYm5ldCAqZGV2KQogCS8qIG1heWJlIHRoZSBib290
IGxvYWRlciBwYXNzZWQgdGhlIE1BQyBhZGRyZXNzIGluIGRldmljZXRyZWUgKi8KIAltYWNfYWRk
ciA9IG9mX2dldF9tYWNfYWRkcmVzcyhkZXYtPnVkZXYtPmRldi5vZl9ub2RlKTsKIAlpZiAoIUlT
X0VSUihtYWNfYWRkcikpIHsKLQkJbWVtY3B5KGRldi0+bmV0LT5kZXZfYWRkciwgbWFjX2FkZHIs
IEVUSF9BTEVOKTsKKwkJZXRoZXJfYWRkcl9jb3B5KGRldi0+bmV0LT5kZXZfYWRkciwgbWFjX2Fk
ZHIpOwogCQlyZXR1cm47CiAJfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC91c2Ivc21zYzk1
eHguYyBiL2RyaXZlcnMvbmV0L3VzYi9zbXNjOTV4eC5jCmluZGV4IGFiMjM5MTEuLmEwZTExOTkg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3VzYi9zbXNjOTV4eC5jCisrKyBiL2RyaXZlcnMvbmV0
L3VzYi9zbXNjOTV4eC5jCkBAIC05MTgsNyArOTE4LDcgQEAgc3RhdGljIHZvaWQgc21zYzk1eHhf
aW5pdF9tYWNfYWRkcmVzcyhzdHJ1Y3QgdXNibmV0ICpkZXYpCiAJLyogbWF5YmUgdGhlIGJvb3Qg
bG9hZGVyIHBhc3NlZCB0aGUgTUFDIGFkZHJlc3MgaW4gZGV2aWNldHJlZSAqLwogCW1hY19hZGRy
ID0gb2ZfZ2V0X21hY19hZGRyZXNzKGRldi0+dWRldi0+ZGV2Lm9mX25vZGUpOwogCWlmICghSVNf
RVJSKG1hY19hZGRyKSkgewotCQltZW1jcHkoZGV2LT5uZXQtPmRldl9hZGRyLCBtYWNfYWRkciwg
RVRIX0FMRU4pOworCQlldGhlcl9hZGRyX2NvcHkoZGV2LT5uZXQtPmRldl9hZGRyLCBtYWNfYWRk
cik7CiAJCXJldHVybjsKIAl9CiAKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
