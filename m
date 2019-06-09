Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D593A3A500
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 13:06:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D74F85CC7;
	Sun,  9 Jun 2019 11:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ROUZ9kGD8YBC; Sun,  9 Jun 2019 11:06:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CF7E85C3B;
	Sun,  9 Jun 2019 11:06:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB2B61BF41B
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 11:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A76E3220A9
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 11:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lodjfCIHUmM8 for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 11:06:01 +0000 (UTC)
X-Greylist: delayed 00:05:09 by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by silver.osuosl.org (Postfix) with ESMTPS id 58FEF2036E
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 11:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1560078357;
 bh=5KM3c4fDB8CweaH+p6a3cb0q/2aj01VmFRK+2KetZQc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=QGpSAs5eKjb+cY1Jl2SYcHEwFTdCju9XbeKz+u7aiJ+EFgbn7kAAMH8cQBmx+M20q
 stSRaDvE3Pi5FEQYS5JNb4Sr2Pw92+rAk/OlGTKY6P9ZUF8aIVYlqqMkVc2RKsb/oC
 hP3r5R4u13NV0so4goCcM4wHRbtXzai+nCy6yVUs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([109.190.112.71]) by mail.gmx.com
 (mrgmx101 [212.227.17.174]) with ESMTPSA (Nemesis) id
 0M5Z5A-1gcLkz3uXI-00xXI6; Sun, 09 Jun 2019 13:00:46 +0200
From: =?UTF-8?q?Harold=20Andr=C3=A9?= <harold.andre@gmx.fr>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: ralink-gdma: fixed a brace coding style issue
Date: Sun,  9 Jun 2019 12:58:46 +0200
Message-Id: <20190609105846.27225-1-harold.andre@gmx.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Ulm5W9TTIpjxLNJFVhxZb0dxFMToHBP20liPUIJ/8FS2W+be7HY
 pEtq4jcLckGkMvGYNfhqgHd6OdeWrgN805NtYEpvSHI2da6aAnUW+1T8ZkrTDhm6Mkk4Tkb
 RG6IP/RgpH6VjQnF72prxz85ee0r61Sy8KtDSSJ6n4GU1J0Iriy2MMYvtEzzYy1WhU8bHg3
 BMGFYVGAfXORHV8WZx2tA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:S5W5KLtYOUg=:wlOi5ad6OGiSiTrjYBOkGT
 60oyya6/L5vseG+gu9dZoxDqEDTR2xhZSTm8m80pSkfD5TUndTJxiZz1FoK2i5/IqjGs3qOR1
 LJnCIWWVATZtPeHzEA4sBxPOZMkAePKtCPaefwuWZbTfIovMzbbGsgcdV8X5TnTwCAUXr6Shh
 kWScbAO0pes1OPupEckJHo06qMZIU/MM+B1H3zb37++0dooUIQlrUmAg1pXbfZ2Z5S+yikZ+M
 Fx2CCZ4dJF8FEqnfLzK06V3UDrf2kjs6CiCVQGArSw4fgaDT4EJvkYqmtMu+tdU6X0+ucokbF
 M8oxTkTa8hj3mbduq88kvpTl9DqJfu21Nqb/6i8inczlS2LONEjH3CPZPE/W3BMSLPkvL1nOy
 YbkdmOFk08X7fr9TpJu9jafPuAWyFwTfnhI/uASCrpII6KEylSHLXHxM+1lKSHzAoxsGjAmy4
 sJPYiHZsqidV/yYwSzZkmf28mT4blZRlIHFtmXcOvlrmCN+39YMPrnIbykWSkCEGGGXLZWQQR
 mHKg+4RfYT9uqKUnt6JT4pblZXxrZ7UrliABZjBrOqbT1iA6s9WvHxtOofhgahtilV1Iqqhud
 pfUlqlkqRMLBa06w1fl3Iciz7PSSe0CrsZCxyoibeo510EcEX3pglKx2/GOh+Bv6el4N3FtLF
 PQHuUoPYcLdUhEfP+TQWQEcuyv/ZHNenhOwcvC3UjkNNmZJysHI9ubXSn+NiwZd0PAvWTQBwt
 FePynjDVacx+WGGwG4bcBBReEkwNoPJxGGRKgDasSIPVtXd1311LHrqbL8NLWOxS9gOLX/28A
 vCIMUjP2fcZsV1qX5zYMRwDm2PRXCdzQY7mD58g5KD6iV3xnM5LXd676Wvk7iQWvgkouxhYt3
 PtlqBvW7wKSWwORwgzMifIsvgWG98/sllLmsxxSii4RmuzqmvLrqNdaX2/k+67Iyn/esWFFAa
 3LE8sLSC+NLpx40luDiE8FBKlhmswwz/AIaaht2l6rY1JX/X5iwntVbmbFc1n2jGP29h90S69
 7g==
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Harold=20Andr=C3=A9?= <harold.andre@gmx.fr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZWQgYSBjb2Rpbmcgc3R5bGUgaXNzdWUuCgpTaWduZWQtb2ZmLWJ5OiBIYXJvbGQgQW5kcsOp
IDxoYXJvbGQuYW5kcmVAZ214LmZyPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9yYWxpbmstZ2RtYS9y
YWxpbmstZ2RtYS5jIHwgMyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcmFsaW5rLWdkbWEvcmFs
aW5rLWdkbWEuYyBiL2RyaXZlcnMvc3RhZ2luZy9yYWxpbmstZ2RtYS9yYWxpbmstZ2RtYS5jCmlu
ZGV4IGRlM2UzNTdiMjY0MC4uNTg1NDU1MWQwYTUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdp
bmcvcmFsaW5rLWdkbWEvcmFsaW5rLWdkbWEuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvcmFsaW5r
LWdkbWEvcmFsaW5rLWdkbWEuYwpAQCAtODE0LDkgKzgxNCw4IEBAIHN0YXRpYyBpbnQgZ2RtYV9k
bWFfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlkbWFfZGV2ID0gZGV2bV9r
emFsbG9jKCZwZGV2LT5kZXYsCiAJCQkgICAgICAgc3RydWN0X3NpemUoZG1hX2RldiwgY2hhbiwg
ZGF0YS0+Y2hhbmNudCksCiAJCQkgICAgICAgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFkbWFfZGV2KSB7
CisJaWYgKCFkbWFfZGV2KQogCQlyZXR1cm4gLUVJTlZBTDsKLQl9CiAJZG1hX2Rldi0+ZGF0YSA9
IGRhdGE7CgogCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01F
TSwgMCk7Ci0tCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
