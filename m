Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ED256BE9
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 16:29:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A0FE321FA9;
	Wed, 26 Jun 2019 14:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXRd8ALIMUq9; Wed, 26 Jun 2019 14:29:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D2B3203A8;
	Wed, 26 Jun 2019 14:29:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D75E1BF312
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 14:29:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 39D422155F
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 14:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUEegj5YN7GV for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 14:29:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mailout2n.rrzn.uni-hannover.de (mailout2n.rrzn.uni-hannover.de
 [130.75.2.113])
 by silver.osuosl.org (Postfix) with ESMTPS id 86E3C203A8
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 14:29:24 +0000 (UTC)
Received: from h2730561.stratoserver.net (h2730561.stratoserver.net
 [85.214.29.144])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout2n.rrzn.uni-hannover.de (Postfix) with ESMTPSA id 27A291F42E;
 Wed, 26 Jun 2019 16:29:23 +0200 (CEST)
From: =?UTF-8?q?Tobias=20Nie=C3=9Fen?= <tobias.niessen@stud.uni-hannover.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rts5208: Rewrite redundant if statement to
 improve code style
Date: Wed, 26 Jun 2019 16:28:56 +0200
Message-Id: <20190626142857.30155-2-tobias.niessen@stud.uni-hannover.de>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190626142857.30155-1-tobias.niessen@stud.uni-hannover.de>
References: <20190626142857.30155-1-tobias.niessen@stud.uni-hannover.de>
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
Cc: devel@driverdev.osuosl.org,
 =?UTF-8?q?Tobias=20Nie=C3=9Fen?= <tobias.niessen@stud.uni-hannover.de>,
 Sabrina Gaube <sabrina-gaube@web.de>, linux-kernel@vger.kernel.org,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhpcyBjb21taXQgdXNlcyB0aGUgZmFjdCB0aGF0CgogICAgaWYgKGEpIHsKICAgICAgICAgICAg
aWYgKGIpIHsKICAgICAgICAgICAgICAgICAgICAuLi4KICAgICAgICAgICAgfQogICAgfQoKY2Fu
IGluc3RlYWQgYmUgd3JpdHRlbiBhcwoKICAgIGlmIChhICYmIGIpIHsKICAgICAgICAgICAgLi4u
CiAgICB9Cgp3aXRob3V0IGFueSBjaGFuZ2UgaW4gYmVoYXZpb3IsIGFsbG93aW5nIHRvIGRlY3Jl
YXNlIHRoZSBpbmRlbnRhdGlvbgpvZiB0aGUgY29udGFpbmVkIGNvZGUgYmxvY2sgYW5kIHRodXMg
cmVkdWNpbmcgdGhlIGF2ZXJhZ2UgbGluZSBsZW5ndGguCgpTaWduZWQtb2ZmLWJ5OiBUb2JpYXMg
Tmllw59lbiA8dG9iaWFzLm5pZXNzZW5Ac3R1ZC51bmktaGFubm92ZXIuZGU+ClNpZ25lZC1vZmYt
Ynk6IFNhYnJpbmEgR2F1YmUgPHNhYnJpbmEtZ2F1YmVAd2ViLmRlPgotLS0KIGRyaXZlcnMvc3Rh
Z2luZy9ydHM1MjA4L3NkLmMgfCAyMyArKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9ydHM1MjA4L3NkLmMgYi9kcml2ZXJzL3N0YWdpbmcvcnRzNTIwOC9zZC5j
CmluZGV4IGIzZjgyOWVkMTAxOS4uYTA2MDQ1MzQ0MzAxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0
YWdpbmcvcnRzNTIwOC9zZC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydHM1MjA4L3NkLmMKQEAg
LTQ1MDcsMjAgKzQ1MDcsMTkgQEAgaW50IHNkX2V4ZWN1dGVfd3JpdGVfZGF0YShzdHJ1Y3Qgc2Nz
aV9jbW5kICpzcmIsIHN0cnVjdCBydHN4X2NoaXAgKmNoaXApCiAJCQlzZF9sb2NrX3N0YXRlLCBz
ZF9jYXJkLT5zZF9sb2NrX3N0YXR1cyk7CiAJCWlmIChzZF9sb2NrX3N0YXRlIF4gKHNkX2NhcmQt
PnNkX2xvY2tfc3RhdHVzICYgU0RfTE9DS0VEKSkgewogCQkJc2RfY2FyZC0+c2RfbG9ja19ub3Rp
ZnkgPSAxOwotCQkJaWYgKHNkX2xvY2tfc3RhdGUpIHsKLQkJCQlpZiAoc2RfY2FyZC0+c2RfbG9j
a19zdGF0dXMgJiBTRF9MT0NLXzFCSVRfTU9ERSkgewotCQkJCQlzZF9jYXJkLT5zZF9sb2NrX3N0
YXR1cyB8PSAoCi0JCQkJCQlTRF9VTkxPQ0tfUE9XX09OIHwgU0RfU0RSX1JTVCk7Ci0JCQkJCWlm
IChDSEtfU0Qoc2RfY2FyZCkpIHsKLQkJCQkJCXJldHZhbCA9IHJlc2V0X3NkKGNoaXApOwotCQkJ
CQkJaWYgKHJldHZhbCAhPSBTVEFUVVNfU1VDQ0VTUykgewotCQkJCQkJCXNkX2NhcmQtPnNkX2xv
Y2tfc3RhdHVzICY9IH4oU0RfVU5MT0NLX1BPV19PTiB8IFNEX1NEUl9SU1QpOwotCQkJCQkJCWdv
dG8gc2RfZXhlY3V0ZV93cml0ZV9jbWRfZmFpbGVkOwotCQkJCQkJfQorCQkJaWYgKHNkX2xvY2tf
c3RhdGUgJiYKKwkJCSAgICAoc2RfY2FyZC0+c2RfbG9ja19zdGF0dXMgJiBTRF9MT0NLXzFCSVRf
TU9ERSkpIHsKKwkJCQlzZF9jYXJkLT5zZF9sb2NrX3N0YXR1cyB8PSAoCisJCQkJCVNEX1VOTE9D
S19QT1dfT04gfCBTRF9TRFJfUlNUKTsKKwkJCQlpZiAoQ0hLX1NEKHNkX2NhcmQpKSB7CisJCQkJ
CXJldHZhbCA9IHJlc2V0X3NkKGNoaXApOworCQkJCQlpZiAocmV0dmFsICE9IFNUQVRVU19TVUND
RVNTKSB7CisJCQkJCQlzZF9jYXJkLT5zZF9sb2NrX3N0YXR1cyAmPSB+KFNEX1VOTE9DS19QT1df
T04gfCBTRF9TRFJfUlNUKTsKKwkJCQkJCWdvdG8gc2RfZXhlY3V0ZV93cml0ZV9jbWRfZmFpbGVk
OwogCQkJCQl9Ci0KLQkJCQkJc2RfY2FyZC0+c2RfbG9ja19zdGF0dXMgJj0gfihTRF9VTkxPQ0tf
UE9XX09OIHwgU0RfU0RSX1JTVCk7CiAJCQkJfQorCisJCQkJc2RfY2FyZC0+c2RfbG9ja19zdGF0
dXMgJj0gfihTRF9VTkxPQ0tfUE9XX09OIHwgU0RfU0RSX1JTVCk7CiAJCQl9CiAJCX0KIAl9Ci0t
IAoyLjE3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
