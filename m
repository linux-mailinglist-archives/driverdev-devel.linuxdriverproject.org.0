Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E68275324
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 10:22:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 43A7086108;
	Wed, 23 Sep 2020 08:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BdZLZx3Bb14D; Wed, 23 Sep 2020 08:22:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A288985F57;
	Wed, 23 Sep 2020 08:22:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BA6F1BF289
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 08:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25C6E867E7
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 08:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yYf8oxq9BMRF for <devel@linuxdriverproject.org>;
 Wed, 23 Sep 2020 08:22:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 44170867F6
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 08:22:05 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c8.dynamic.kabel-deutschland.de
 [95.90.213.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C567A238A1;
 Wed, 23 Sep 2020 08:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600849325;
 bh=DmXoYTsrp+5X+VdcYTdixz0bMYx13NlME21W5hL9F0k=;
 h=From:To:Cc:Subject:Date:From;
 b=P5z88MhpNjVgVXiObYz3irhiottc6m/gxZCLppZ9IO1aU3TmCojaGwmOcVEXe+GTS
 HLKacSOzaqgbHwxfCeK2W32r0Dc0roB+V0a9yLUKL+18JNvpUnkBjfBA4bn3kyzS5P
 nQ/9A7ZS+ZRIKMqlxdVnksyasjb/yC4GOKkgZGmk=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kL02L-001F20-7o; Wed, 23 Sep 2020 10:22:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 1/2] media: atomisp: fix gcc warnings
Date: Wed, 23 Sep 2020 10:21:59 +0200
Message-Id: <8e3d5d4baf0781974a224e284e837665c0d26f92.1600849288.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, mauro.chehab@huawei.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVwZW5kaW5nIG9uIHRoZSBnY2MgdmVyc2lvbiwgYWZ0ZXIgY2hhbmdlc2V0CjcyYTlmZjNiZjdm
YiAoIm1lZGlhOiBhdG9taXNwOiBnZXQgcmlkIG9mIC1Xc3VnZ2VzdC1hdHRyaWJ1dGU9Zm9ybWF0
IHdhcm5pbmdzIiksCndlJ3JlIG5vdyBnZXR0aW5nIHR3byB3YXJuaW5ncywgd2hpY2ggYXJlIGJy
ZWFraW5nIHRoZSBKZW5raW5zCkNJIGluc3RhbmNlIGF0IGh0dHBzOi8vYnVpbGRlci5saW51eHR2
Lm9yZzoKCgkuLi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kvYXRvbWlzcF9jb21w
YXRfY3NzMjAuYzogSW4gZnVuY3Rpb24g4oCYX19zZXRfY3NzX3ByaW50X2VuduKAmToKCS4uL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwL3BjaS9hdG9taXNwX2NvbXBhdF9jc3MyMC5jOjg2
MDo1MDogZXJyb3I6IGFzc2lnbm1lbnQgdG8g4oCYaW50ICgqKShjb25zdCBjaGFyICosIGNoYXIg
KinigJkgZnJvbSBpbmNvbXBhdGlibGUgcG9pbnRlciB0eXBlIOKAmGludCAoX19hdHRyaWJ1dGVf
XygocmVncGFybSgwKSkpICopKGNvbnN0IGNoYXIgKiwgY2hhciAqKeKAmSBbLVdlcnJvcj1pbmNv
bXBhdGlibGUtcG9pbnRlci10eXBlc10KCSAgIGlzcC0+Y3NzX2Vudi5pc3BfY3NzX2Vudi5wcmlu
dF9lbnYuZGVidWdfcHJpbnQgPSB2cHJpbnRrOwoJICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBeCgkuLi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlz
cC9wY2kvYXRvbWlzcF9jb21wYXRfY3NzMjAuYzogSW4gZnVuY3Rpb24g4oCYYXRvbWlzcF9jc3Nf
bG9hZF9maXJtd2FyZeKAmToKCS4uL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwL3BjaS9h
dG9taXNwX2NvbXBhdF9jc3MyMC5jOjg5Mzo0OTogZXJyb3I6IGFzc2lnbm1lbnQgdG8g4oCYaW50
ICgqKShjb25zdCBjaGFyICosIGNoYXIgKinigJkgZnJvbSBpbmNvbXBhdGlibGUgcG9pbnRlciB0
eXBlIOKAmGludCAoX19hdHRyaWJ1dGVfXygocmVncGFybSgwKSkpICopKGNvbnN0IGNoYXIgKiwg
Y2hhciAqKeKAmSBbLVdlcnJvcj1pbmNvbXBhdGlibGUtcG9pbnRlci10eXBlc10KCSAgaXNwLT5j
c3NfZW52LmlzcF9jc3NfZW52LnByaW50X2Vudi5lcnJvcl9wcmludCA9IHZwcmludGs7CiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCgljYzE6IHNvbWUg
d2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKClNvLCB3ZSBuZWVkIHRvIHBhcnRpYWxs
eSByZXZlcnQgdGhlIHBhdGNoLgoKRml4ZXM6IDcyYTlmZjNiZjdmYiAoIm1lZGlhOiBhdG9taXNw
OiBnZXQgcmlkIG9mIC1Xc3VnZ2VzdC1hdHRyaWJ1dGU9Zm9ybWF0IHdhcm5pbmdzIikKU2lnbmVk
LW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3Jn
PgotLS0KIC4uLi9zdGFnaW5nL21lZGlhL2F0b21pc3AvcGNpL2F0b21pc3BfY29tcGF0X2NzczIw
LmMgIHwgMTEgKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3Av
cGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlz
cC9wY2kvYXRvbWlzcF9jb21wYXRfY3NzMjAuYwppbmRleCAyODc5NmVjMTc3ZTMuLjg1YjM5ZGU3
YmMyOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvcGNpL2F0b21p
c3BfY29tcGF0X2NzczIwLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvcGNp
L2F0b21pc3BfY29tcGF0X2NzczIwLmMKQEAgLTE2Niw2ICsxNjYsMTMgQEAgYXRvbWlzcF9jc3My
X2RiZ19mdHJhY2VfcHJpbnQoY29uc3QgY2hhciAqZm10LCB2YV9saXN0IGFyZ3MpCiAJcmV0dXJu
IDA7CiB9CiAKK3N0YXRpYyBpbnQgIF9fYXR0cmlidXRlX18oKGZvcm1hdCAocHJpbnRmLCAxLCAw
KSkpCithdG9taXNwX3ZwcmludGsoY29uc3QgY2hhciAqZm10LCB2YV9saXN0IGFyZ3MpCit7CisJ
dnByaW50ayhmbXQsIGFyZ3MpOworCXJldHVybiAwOworfQorCiB2b2lkIGF0b21pc3BfbG9hZF91
aW50MzIoaHJ0X2FkZHJlc3MgYWRkciwgdWludDMyX3QgKmRhdGEpCiB7CiAJKmRhdGEgPSBhdG9t
aXNwX2NzczJfaHdfbG9hZF8zMihhZGRyKTsKQEAgLTg1Nyw3ICs4NjQsNyBAQCBzdGF0aWMgaW5s
aW5lIGludCBfX3NldF9jc3NfcHJpbnRfZW52KHN0cnVjdCBhdG9taXNwX2RldmljZSAqaXNwLCBp
bnQgb3B0KQogCQlpc3AtPmNzc19lbnYuaXNwX2Nzc19lbnYucHJpbnRfZW52LmRlYnVnX3ByaW50
ID0KIAkJICAgIGF0b21pc3BfY3NzMl9kYmdfZnRyYWNlX3ByaW50OwogCWVsc2UgaWYgKG9wdCA9
PSAyKQotCQlpc3AtPmNzc19lbnYuaXNwX2Nzc19lbnYucHJpbnRfZW52LmRlYnVnX3ByaW50ID0g
dnByaW50azsKKwkJaXNwLT5jc3NfZW52LmlzcF9jc3NfZW52LnByaW50X2Vudi5kZWJ1Z19wcmlu
dCA9IGF0b21pc3BfdnByaW50azsKIAllbHNlCiAJCXJldCA9IC1FSU5WQUw7CiAKQEAgLTg5MCw3
ICs4OTcsNyBAQCBpbnQgYXRvbWlzcF9jc3NfbG9hZF9maXJtd2FyZShzdHJ1Y3QgYXRvbWlzcF9k
ZXZpY2UgKmlzcCkKIAogCV9fc2V0X2Nzc19wcmludF9lbnYoaXNwLCBkYmdfZnVuYyk7CiAKLQlp
c3AtPmNzc19lbnYuaXNwX2Nzc19lbnYucHJpbnRfZW52LmVycm9yX3ByaW50ID0gdnByaW50azsK
Kwlpc3AtPmNzc19lbnYuaXNwX2Nzc19lbnYucHJpbnRfZW52LmVycm9yX3ByaW50ID0gYXRvbWlz
cF92cHJpbnRrOwogCiAJLyogbG9hZCBpc3AgZncgaW50byBJU1AgbWVtb3J5ICovCiAJZXJyID0g
aWFfY3NzX2xvYWRfZmlybXdhcmUoaXNwLT5kZXYsICZpc3AtPmNzc19lbnYuaXNwX2Nzc19lbnYs
Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
