Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE17158CC6
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 11:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86111855DF;
	Tue, 11 Feb 2020 10:35:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VcGG7Vb22bX; Tue, 11 Feb 2020 10:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 262FE85629;
	Tue, 11 Feb 2020 10:35:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA4951BF982
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B5AAE85585
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G0rSFWaWigg0 for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 10:35:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 66F2183773
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 10:35:07 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GzgC5kMmz20v;
 Tue, 11 Feb 2020 11:35:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581417303; bh=raqJPwQCWLMgqidgr8190O09gGllM1uWjbFerVN4PWE=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=fkEanw0CAzq99Uei3PXZe2fn+lVKe252S8tSkylJ9mEZ6ELkT+IgKko4Uc3CVOEY7
 mBBna3sZFrFripKqpUdmDO85DZOqBXAcLdutYhsoTS3ApG0mDefMzQQuXYNs/aO2FM
 swOnPrF4hAwVMKQt2NQrcxE7udhpn95NrylX1ehvyCVvDJVEnrcYXkMziszqzeHw2t
 B66dwWAZivXiHE8gzRMh+b2agZqShSwQivGRArtyABNmeSVmKJxjOFZH9537U8rXLl
 de7n60mTkyVDdBsVFjT+oYEDsu0J1sGWBFyy4AX0bTpZbjyGlf5Mt7WCZi1ounB+Io
 GRttimZWNKxnw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 11:35:03 +0100
Message-Id: <cb19e7c521712d5a166e0b7e9cac4450798fdce0.1581416843.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v2 5/6] staging: wfx: use sleeping gpio accessors
MIME-Version: 1.0
To: =?UTF-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RHJpdmVyIGNhbGxzIEdQSU8gZ2V0L3NldCBvbmx5IGZyb20gbm9uLWF0b21pYyBjb250ZXh0IGFu
ZCBzbyBjYW4gdXNlIGFueQpHUElPcy4KClNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgTWlyb3PFgmF3
IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMg
ICAgICB8IDYgKysrLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYyB8IDQgKystLQog
ZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMgICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2JoLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMKaW5kZXggOTgzYzQxZDFmZTdj
Li5jNjMxOWFiN2U3MWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYmguYworKysg
Yi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMKQEAgLTIwLDEwICsyMCwxMCBAQCBzdGF0aWMgdm9p
ZCBkZXZpY2Vfd2FrZXVwKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQogewogCWlmICghd2Rldi0+cGRh
dGEuZ3Bpb193YWtldXApCiAJCXJldHVybjsKLQlpZiAoZ3Bpb2RfZ2V0X3ZhbHVlKHdkZXYtPnBk
YXRhLmdwaW9fd2FrZXVwKSkKKwlpZiAoZ3Bpb2RfZ2V0X3ZhbHVlX2NhbnNsZWVwKHdkZXYtPnBk
YXRhLmdwaW9fd2FrZXVwKSkKIAkJcmV0dXJuOwogCi0JZ3Bpb2Rfc2V0X3ZhbHVlKHdkZXYtPnBk
YXRhLmdwaW9fd2FrZXVwLCAxKTsKKwlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAod2Rldi0+cGRh
dGEuZ3Bpb193YWtldXAsIDEpOwogCWlmICh3ZnhfYXBpX29sZGVyX3RoYW4od2RldiwgMSwgNCkp
IHsKIAkJaWYgKCFjb21wbGV0aW9uX2RvbmUoJndkZXYtPmhpZi5jdHJsX3JlYWR5KSkKIAkJCXVk
ZWxheSgyMDAwKTsKQEAgLTQ1LDcgKzQ1LDcgQEAgc3RhdGljIHZvaWQgZGV2aWNlX3JlbGVhc2Uo
c3RydWN0IHdmeF9kZXYgKndkZXYpCiAJaWYgKCF3ZGV2LT5wZGF0YS5ncGlvX3dha2V1cCkKIAkJ
cmV0dXJuOwogCi0JZ3Bpb2Rfc2V0X3ZhbHVlKHdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwLCAwKTsK
KwlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAod2Rldi0+cGRhdGEuZ3Bpb193YWtldXAsIDApOwog
fQogCiBzdGF0aWMgaW50IHJ4X2hlbHBlcihzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwgc2l6ZV90IHJl
YWRfbGVuLCBpbnQgKmlzX2NuZikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVz
X3NwaS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMKaW5kZXggZDZhNzViZDYxNTk1
Li5lM2NkMTI1OTI2NjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5j
CisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCkBAIC0yMTAsOSArMjEwLDkgQEAg
c3RhdGljIGludCB3Znhfc3BpX3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpmdW5jKQogCX0gZWxz
ZSB7CiAJCWlmIChzcGlfZ2V0X2RldmljZV9pZChmdW5jKS0+ZHJpdmVyX2RhdGEgJiBXRlhfUkVT
RVRfSU5WRVJURUQpCiAJCQlncGlvZF90b2dnbGVfYWN0aXZlX2xvdyhidXMtPmdwaW9fcmVzZXQp
OwotCQlncGlvZF9zZXRfdmFsdWUoYnVzLT5ncGlvX3Jlc2V0LCAxKTsKKwkJZ3Bpb2Rfc2V0X3Zh
bHVlX2NhbnNsZWVwKGJ1cy0+Z3Bpb19yZXNldCwgMSk7CiAJCXVkZWxheSgxMDApOwotCQlncGlv
ZF9zZXRfdmFsdWUoYnVzLT5ncGlvX3Jlc2V0LCAwKTsKKwkJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNs
ZWVwKGJ1cy0+Z3Bpb19yZXNldCwgMCk7CiAJCXVkZWxheSgyMDAwKTsKIAl9CiAKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWlu
LmMKaW5kZXggNzZiMmZmN2ZjN2ZlLi4zYzRjMjQwMjI5YWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvbWFpbi5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCkBAIC00
MjUsNyArNDI1LDcgQEAgaW50IHdmeF9wcm9iZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKIAkJCSJl
bmFibGUgJ3F1aWVzY2VudCcgcG93ZXIgbW9kZSB3aXRoIGdwaW8gJWQgYW5kIFBEUyBmaWxlICVz
XG4iLAogCQkJZGVzY190b19ncGlvKHdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwKSwKIAkJCXdkZXYt
PnBkYXRhLmZpbGVfcGRzKTsKLQkJZ3Bpb2Rfc2V0X3ZhbHVlKHdkZXYtPnBkYXRhLmdwaW9fd2Fr
ZXVwLCAxKTsKKwkJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHdkZXYtPnBkYXRhLmdwaW9fd2Fr
ZXVwLCAxKTsKIAkJY29udHJvbF9yZWdfd3JpdGUod2RldiwgMCk7CiAJCWhpZl9zZXRfb3BlcmF0
aW9uYWxfbW9kZSh3ZGV2LCBISUZfT1BfUE9XRVJfTU9ERV9RVUlFU0NFTlQpOwogCX0gZWxzZSB7
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
