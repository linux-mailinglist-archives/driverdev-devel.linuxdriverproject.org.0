Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1B4147F4
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 11:59:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7FD685534;
	Mon,  6 May 2019 09:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S_rM-6s9F9qV; Mon,  6 May 2019 09:59:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D52684492;
	Mon,  6 May 2019 09:59:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6EA461BF96A
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 09:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CCDE28552C
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 09:59:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nso34AYHaRXi for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 09:59:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 36EF58550C
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 09:59:26 +0000 (UTC)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 632803859;
 Mon,  6 May 2019 11:59:24 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f49d01de;
 Mon, 6 May 2019 11:59:23 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH net-next 2/3] net: dsa: support of_get_mac_address new ERR_PTR
 error
Date: Mon,  6 May 2019 11:58:36 +0200
Message-Id: <1557136717-531-3-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557136717-531-1-git-send-email-ynezz@true.cz>
References: <1557136717-531-1-git-send-email-ynezz@true.cz>
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
 netdev@vger.kernel.org, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
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
bnl3YXkuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0K
IG5ldC9kc2Evc2xhdmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL25ldC9kc2Evc2xhdmUuYyBiL25ldC9kc2Evc2xh
dmUuYwppbmRleCAzMTZiY2U5Li4yZTFkZWVmIDEwMDY0NAotLS0gYS9uZXQvZHNhL3NsYXZlLmMK
KysrIGIvbmV0L2RzYS9zbGF2ZS5jCkBAIC0xNDE4LDcgKzE0MTgsNyBAQCBpbnQgZHNhX3NsYXZl
X2NyZWF0ZShzdHJ1Y3QgZHNhX3BvcnQgKnBvcnQpCiAJCQkJTkVUSUZfRl9IV19WTEFOX0NUQUdf
RklMVEVSOwogCXNsYXZlX2Rldi0+aHdfZmVhdHVyZXMgfD0gTkVUSUZfRl9IV19UQzsKIAlzbGF2
ZV9kZXYtPmV0aHRvb2xfb3BzID0gJmRzYV9zbGF2ZV9ldGh0b29sX29wczsKLQlpZiAocG9ydC0+
bWFjICYmIGlzX3ZhbGlkX2V0aGVyX2FkZHIocG9ydC0+bWFjKSkKKwlpZiAoIUlTX0VSUl9PUl9O
VUxMKHBvcnQtPm1hYykpCiAJCWV0aGVyX2FkZHJfY29weShzbGF2ZV9kZXYtPmRldl9hZGRyLCBw
b3J0LT5tYWMpOwogCWVsc2UKIAkJZXRoX2h3X2FkZHJfaW5oZXJpdChzbGF2ZV9kZXYsIG1hc3Rl
cik7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
