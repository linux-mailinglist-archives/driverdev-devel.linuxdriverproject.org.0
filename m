Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F9832EF2
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 13:49:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E69F82154A;
	Mon,  3 Jun 2019 11:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3MmPtzxs9wMx; Mon,  3 Jun 2019 11:49:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1365321FA8;
	Mon,  3 Jun 2019 11:49:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B67841BF287
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 11:49:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B39EB21FA8
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 11:49:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XptM3fEGCWtM for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 11:49:25 +0000 (UTC)
X-Greylist: delayed 00:05:11 by SQLgrey-1.7.6
Received: from mailout2n.rrzn.uni-hannover.de (mailout2n.rrzn.uni-hannover.de
 [130.75.2.113])
 by silver.osuosl.org (Postfix) with ESMTPS id 556102154A
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 11:49:25 +0000 (UTC)
Received: from h2730561.stratoserver.net (h2730561.stratoserver.net
 [85.214.29.144])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout2n.rrzn.uni-hannover.de (Postfix) with ESMTPSA id 90CDA1F41F;
 Mon,  3 Jun 2019 13:44:11 +0200 (CEST)
From: =?UTF-8?q?Tobias=20Nie=C3=9Fen?= <tobias.niessen@stud.uni-hannover.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Improve code style in drivers/staging/rts5208
Date: Mon,  3 Jun 2019 13:43:50 +0200
Message-Id: <20190603114350.32242-1-tobias.niessen@stud.uni-hannover.de>
X-Mailer: git-send-email 2.17.0
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

VGhlc2UgY2hhbmdlcyB0byBzZC5jIGFuZCB4ZC5jIHNsaWdodGx5IGltcHJvdmUgdGhlIGNvZGUg
c3R5bGUgYW5kCnJlZHVjZSB0aGUgb3ZlcmFsbCBsaW5lIGxlbmd0aC4KClNpZ25lZC1vZmYtYnk6
IFRvYmlhcyBOaWXDn2VuIDx0b2JpYXMubmllc3NlbkBzdHVkLnVuaS1oYW5ub3Zlci5kZT4KU2ln
bmVkLW9mZi1ieTogU2FicmluYSBHYXViZSA8c2FicmluYS1nYXViZUB3ZWIuZGU+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL3J0czUyMDgvc2QuYyB8IDIzICsrKysrKysrKysrLS0tLS0tLS0tLS0tCiBk
cml2ZXJzL3N0YWdpbmcvcnRzNTIwOC94ZC5jIHwgIDggKysrKy0tLS0KIDIgZmlsZXMgY2hhbmdl
ZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL3J0czUyMDgvc2QuYyBiL2RyaXZlcnMvc3RhZ2luZy9ydHM1MjA4L3NkLmMKaW5k
ZXggYzI1NmEyMzk4NjUxLi5kNjU0YTY5ODE0MmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy9ydHM1MjA4L3NkLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0czUyMDgvc2QuYwpAQCAtNDUx
MiwyMCArNDUxMiwxOSBAQCBpbnQgc2RfZXhlY3V0ZV93cml0ZV9kYXRhKHN0cnVjdCBzY3NpX2Nt
bmQgKnNyYiwgc3RydWN0IHJ0c3hfY2hpcCAqY2hpcCkKIAkJCXNkX2xvY2tfc3RhdGUsIHNkX2Nh
cmQtPnNkX2xvY2tfc3RhdHVzKTsKIAkJaWYgKHNkX2xvY2tfc3RhdGUgXiAoc2RfY2FyZC0+c2Rf
bG9ja19zdGF0dXMgJiBTRF9MT0NLRUQpKSB7CiAJCQlzZF9jYXJkLT5zZF9sb2NrX25vdGlmeSA9
IDE7Ci0JCQlpZiAoc2RfbG9ja19zdGF0ZSkgewotCQkJCWlmIChzZF9jYXJkLT5zZF9sb2NrX3N0
YXR1cyAmIFNEX0xPQ0tfMUJJVF9NT0RFKSB7Ci0JCQkJCXNkX2NhcmQtPnNkX2xvY2tfc3RhdHVz
IHw9ICgKLQkJCQkJCVNEX1VOTE9DS19QT1dfT04gfCBTRF9TRFJfUlNUKTsKLQkJCQkJaWYgKENI
S19TRChzZF9jYXJkKSkgewotCQkJCQkJcmV0dmFsID0gcmVzZXRfc2QoY2hpcCk7Ci0JCQkJCQlp
ZiAocmV0dmFsICE9IFNUQVRVU19TVUNDRVNTKSB7Ci0JCQkJCQkJc2RfY2FyZC0+c2RfbG9ja19z
dGF0dXMgJj0gfihTRF9VTkxPQ0tfUE9XX09OIHwgU0RfU0RSX1JTVCk7Ci0JCQkJCQkJZ290byBz
ZF9leGVjdXRlX3dyaXRlX2NtZF9mYWlsZWQ7Ci0JCQkJCQl9CisJCQlpZiAoc2RfbG9ja19zdGF0
ZSAmJgorCQkJICAgIChzZF9jYXJkLT5zZF9sb2NrX3N0YXR1cyAmIFNEX0xPQ0tfMUJJVF9NT0RF
KSkgeworCQkJCXNkX2NhcmQtPnNkX2xvY2tfc3RhdHVzIHw9ICgKKwkJCQkJU0RfVU5MT0NLX1BP
V19PTiB8IFNEX1NEUl9SU1QpOworCQkJCWlmIChDSEtfU0Qoc2RfY2FyZCkpIHsKKwkJCQkJcmV0
dmFsID0gcmVzZXRfc2QoY2hpcCk7CisJCQkJCWlmIChyZXR2YWwgIT0gU1RBVFVTX1NVQ0NFU1Mp
IHsKKwkJCQkJCXNkX2NhcmQtPnNkX2xvY2tfc3RhdHVzICY9IH4oU0RfVU5MT0NLX1BPV19PTiB8
IFNEX1NEUl9SU1QpOworCQkJCQkJZ290byBzZF9leGVjdXRlX3dyaXRlX2NtZF9mYWlsZWQ7CiAJ
CQkJCX0KLQotCQkJCQlzZF9jYXJkLT5zZF9sb2NrX3N0YXR1cyAmPSB+KFNEX1VOTE9DS19QT1df
T04gfCBTRF9TRFJfUlNUKTsKIAkJCQl9CisKKwkJCQlzZF9jYXJkLT5zZF9sb2NrX3N0YXR1cyAm
PSB+KFNEX1VOTE9DS19QT1dfT04gfCBTRF9TRFJfUlNUKTsKIAkJCX0KIAkJfQogCX0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9ydHM1MjA4L3hkLmMgYi9kcml2ZXJzL3N0YWdpbmcvcnRz
NTIwOC94ZC5jCmluZGV4IGM1ZWUwNGVjZDFjOS4uZjNkYzk2YTRjNTlkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3N0YWdpbmcvcnRzNTIwOC94ZC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydHM1MjA4
L3hkLmMKQEAgLTExNTUsMTAgKzExNTUsMTAgQEAgc3RhdGljIGludCB4ZF9jb3B5X3BhZ2Uoc3Ry
dWN0IHJ0c3hfY2hpcCAqY2hpcCwgdTMyIG9sZF9ibGssIHUzMiBuZXdfYmxrLAogCQkJCQlyZXR1
cm4gU1RBVFVTX0ZBSUw7CiAJCQkJfQogCi0JCQkJaWYgKCgocmVnICYgKFhEX0VDQzFfRVJST1Ig
fCBYRF9FQ0MxX1VOQ09SUkVDVEFCTEUpKSA9PQotCQkJCQkJKFhEX0VDQzFfRVJST1IgfCBYRF9F
Q0MxX1VOQ09SUkVDVEFCTEUpKSB8fAotCQkJCQkoKHJlZyAmIChYRF9FQ0MyX0VSUk9SIHwgWERf
RUNDMl9VTkNPUlJFQ1RBQkxFKSkgPT0KLQkJCQkJCShYRF9FQ0MyX0VSUk9SIHwgWERfRUNDMl9V
TkNPUlJFQ1RBQkxFKSkpIHsKKwkJCQlpZiAoKChyZWcgJiBYRF9FQ0MxX0VSUk9SKSAmJgorCQkJ
CSAgICAgKHJlZyAmIFhEX0VDQzFfVU5DT1JSRUNUQUJMRSkpIHx8CisJCQkJICAgICgocmVnICYg
WERfRUNDMl9FUlJPUikgJiYKKwkJCQkgICAgIChyZWcgJiBYRF9FQ0MyX1VOQ09SUkVDVEFCTEUp
KSkgewogCQkJCQlydHN4X3dyaXRlX3JlZ2lzdGVyKGNoaXAsCiAJCQkJCQkJICAgIFhEX1BBR0Vf
U1RBVFVTLAogCQkJCQkJCSAgICAweEZGLAotLSAKMi4xNy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
