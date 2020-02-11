Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62832158CC4
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 11:35:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BEE1855F6;
	Tue, 11 Feb 2020 10:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUkaaEd18-0L; Tue, 11 Feb 2020 10:35:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2AFF855CB;
	Tue, 11 Feb 2020 10:35:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 027FA1BF831
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F00C4204BC
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KlWZYvlSKPeQ for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 10:35:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E31320447
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 10:35:07 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GzgD2PKMz22X;
 Tue, 11 Feb 2020 11:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581417304; bh=Y/BhaKgufO/WllM1ns+0PP41KsNOl+WZqBMZudUzapE=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=YWVot15Ex/8hLXM0K/dIivih3pVRZnDcDgPU+Gwm6Ld/xcqE/sLbr/WyLqpAn2kaF
 XqMi76Pau1mcsbCM70cWAN+YpuVJgwcKItrHJzBOY+NnZoBZqqhYxbCCEjk504EvfW
 3BY8DTjIKBAZ2bm7kCOR13UMgiGQPCjrVHj48G1f3XZG5hh1Z8oMR+P476xeDRKsEZ
 vZrSuBg8ZYZpt/TfGxXhBqqa41/IlywkHMSiIT6Ot10ddXQFiQOl8Oa0uGt5B4xsoY
 pz7KQM1ecBBtcLGTfj6vpoP3CSGDaZAqfuWwXogpO6ztYWnwhL8q423trk//BGEopF
 z5I6diGdO1vqg==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 11:35:04 +0100
Message-Id: <59e1e4e5bd80c1879ef36eaa59916e47005dbb04.1581416843.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v2 6/6] staging: wfx: use more power-efficient sleep for reset
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

UmVwbGFjZSB1ZGVsYXkoKSB3aXRoIHVzbGVlcF9yYW5nZSgpIGFzIGFsbCB1c2VzIGFyZSBpbiBh
IHNsZWVwYWJsZSBjb250ZXh0LgoKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBNaXJvc8WCYXcgPG1p
cnEtbGludXhAcmVyZS5xbXFtLnBsPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYmguYyAgICAg
IHwgMiArLQogZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMgfCA0ICsrLS0KIGRyaXZlcnMv
c3RhZ2luZy93ZngvaHdpby5jICAgIHwgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9i
aC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jCmluZGV4IGM2MzE5YWI3ZTcxYS4uOWZjYWIw
MGEzNzMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMKKysrIGIvZHJpdmVy
cy9zdGFnaW5nL3dmeC9iaC5jCkBAIC0yNiw3ICsyNiw3IEBAIHN0YXRpYyB2b2lkIGRldmljZV93
YWtldXAoc3RydWN0IHdmeF9kZXYgKndkZXYpCiAJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHdk
ZXYtPnBkYXRhLmdwaW9fd2FrZXVwLCAxKTsKIAlpZiAod2Z4X2FwaV9vbGRlcl90aGFuKHdkZXYs
IDEsIDQpKSB7CiAJCWlmICghY29tcGxldGlvbl9kb25lKCZ3ZGV2LT5oaWYuY3RybF9yZWFkeSkp
Ci0JCQl1ZGVsYXkoMjAwMCk7CisJCQl1c2xlZXBfcmFuZ2UoMjAwMCwgMjUwMCk7CiAJfSBlbHNl
IHsKIAkJLy8gY29tcGxldGlvbi5oIGRvZXMgbm90IHByb3ZpZGUgYW55IGZ1bmN0aW9uIHRvIHdh
aXQKIAkJLy8gY29tcGxldGlvbiB3aXRob3V0IGNvbnN1bWUgaXQgKGEga2luZCBvZgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2J1c19zcGkuYwppbmRleCBlM2NkMTI1OTI2NjIuLjYxZTk5YjA5ZGVjYiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9i
dXNfc3BpLmMKQEAgLTIxMSw5ICsyMTEsOSBAQCBzdGF0aWMgaW50IHdmeF9zcGlfcHJvYmUoc3Ry
dWN0IHNwaV9kZXZpY2UgKmZ1bmMpCiAJCWlmIChzcGlfZ2V0X2RldmljZV9pZChmdW5jKS0+ZHJp
dmVyX2RhdGEgJiBXRlhfUkVTRVRfSU5WRVJURUQpCiAJCQlncGlvZF90b2dnbGVfYWN0aXZlX2xv
dyhidXMtPmdwaW9fcmVzZXQpOwogCQlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAoYnVzLT5ncGlv
X3Jlc2V0LCAxKTsKLQkJdWRlbGF5KDEwMCk7CisJCXVzbGVlcF9yYW5nZSgxMDAsIDE1MCk7CiAJ
CWdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcChidXMtPmdwaW9fcmVzZXQsIDApOwotCQl1ZGVsYXko
MjAwMCk7CisJCXVzbGVlcF9yYW5nZSgyMDAwLCAyNTAwKTsKIAl9CiAKIAlJTklUX1dPUksoJmJ1
cy0+cmVxdWVzdF9yeCwgd2Z4X3NwaV9yZXF1ZXN0X3J4KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvaHdpby5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9od2lvLmMKaW5kZXggNDdl
MDRjNTllZDkzLi5kM2ExNDFkOTVhMGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
aHdpby5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaHdpby5jCkBAIC0xNDIsNyArMTQyLDcg
QEAgc3RhdGljIGludCBpbmRpcmVjdF9yZWFkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgcmVn
LCB1MzIgYWRkciwgdm9pZCAqYnVmLAogCQkJZ290byBlcnI7CiAJCWlmICghKGNmZyAmIHByZWZl
dGNoKSkKIAkJCWJyZWFrOwotCQl1ZGVsYXkoMjAwKTsKKwkJdXNsZWVwX3JhbmdlKDIwMCwgMjUw
KTsKIAl9CiAJaWYgKGkgPT0gMjApIHsKIAkJcmV0ID0gLUVUSU1FRE9VVDsKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
