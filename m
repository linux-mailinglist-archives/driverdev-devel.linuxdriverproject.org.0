Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304DE1556F
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 23:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5348A87B1D;
	Mon,  6 May 2019 21:25:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DF1gVBcH0oRt; Mon,  6 May 2019 21:25:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8485878E5;
	Mon,  6 May 2019 21:25:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 497211BF8C7
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 21:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 459D585721
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 21:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ffgpOIryo-Pm for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 21:25:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F5B18272B
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 21:25:35 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 96A1D50A4;
 Mon,  6 May 2019 23:25:33 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d3e8320a;
 Mon, 6 May 2019 23:25:32 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH net-next v2 2/4] net: dsa: support of_get_mac_address new
 ERR_PTR error
Date: Mon,  6 May 2019 23:24:45 +0200
Message-Id: <1557177887-30446-3-git-send-email-ynezz@true.cz>
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
Cc: devel@driverdev.osuosl.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Frank Rowand <frowand.list@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlcmUgd2FzIE5WTUVNIHN1cHBvcnQgYWRkZWQgdG8gb2ZfZ2V0X21hY19hZGRyZXNzLCBzbyBp
dCBjb3VsZCBub3cKcmV0dXJuIEVSUl9QVFIgZW5jb2RlZCBlcnJvciB2YWx1ZXMsIHNvIHdlIG5l
ZWQgdG8gYWRqdXN0IGFsbCBjdXJyZW50CnVzZXJzIG9mIG9mX2dldF9tYWNfYWRkcmVzcyB0byB0
aGlzIG5ldyBmYWN0LgoKV2hpbGUgYXQgaXQsIHJlbW92ZSBzdXBlcmZsdW91cyBpc192YWxpZF9l
dGhlcl9hZGRyIGFzIHRoZSBNQUMgYWRkcmVzcwpyZXR1cm5lZCBmcm9tIG9mX2dldF9tYWNfYWRk
cmVzcyBpcyBhbHdheXMgdmFsaWQgYW5kIGNoZWNrZWQgYnkKaXNfdmFsaWRfZXRoZXJfYWRkciBh
bnl3YXkuCgpGaXhlczogZDAxZjQ0OWMwMDhhICgib2ZfbmV0OiBhZGQgTlZNRU0gc3VwcG9ydCB0
byBvZl9nZXRfbWFjX2FkZHJlc3MiKQpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6
ekB0cnVlLmN6PgotLS0KIG5ldC9kc2Evc2xhdmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL25ldC9kc2Evc2xhdmUu
YyBiL25ldC9kc2Evc2xhdmUuYwppbmRleCAzMTZiY2U5Li5mZTdiNmE2IDEwMDY0NAotLS0gYS9u
ZXQvZHNhL3NsYXZlLmMKKysrIGIvbmV0L2RzYS9zbGF2ZS5jCkBAIC0xNDE4LDcgKzE0MTgsNyBA
QCBpbnQgZHNhX3NsYXZlX2NyZWF0ZShzdHJ1Y3QgZHNhX3BvcnQgKnBvcnQpCiAJCQkJTkVUSUZf
Rl9IV19WTEFOX0NUQUdfRklMVEVSOwogCXNsYXZlX2Rldi0+aHdfZmVhdHVyZXMgfD0gTkVUSUZf
Rl9IV19UQzsKIAlzbGF2ZV9kZXYtPmV0aHRvb2xfb3BzID0gJmRzYV9zbGF2ZV9ldGh0b29sX29w
czsKLQlpZiAocG9ydC0+bWFjICYmIGlzX3ZhbGlkX2V0aGVyX2FkZHIocG9ydC0+bWFjKSkKKwlp
ZiAoIUlTX0VSUl9PUl9OVUxMKHBvcnQtPm1hYykpCiAJCWV0aGVyX2FkZHJfY29weShzbGF2ZV9k
ZXYtPmRldl9hZGRyLCBwb3J0LT5tYWMpOwogCWVsc2UKIAkJZXRoX2h3X2FkZHJfaW5oZXJpdChz
bGF2ZV9kZXYsIG1hc3Rlcik7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
