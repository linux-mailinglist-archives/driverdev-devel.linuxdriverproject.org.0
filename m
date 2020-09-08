Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72229260F57
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 12:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4D0D86972;
	Tue,  8 Sep 2020 10:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7pIAlzqs6wKS; Tue,  8 Sep 2020 10:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3014986977;
	Tue,  8 Sep 2020 10:12:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 834771BF286
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7FB1986864
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cQegasY1-1g for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 10:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F70D87014
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 10:12:34 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5ce.dynamic.kabel-deutschland.de
 [95.90.213.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FEAD21D79;
 Tue,  8 Sep 2020 10:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599559952;
 bh=VuGxZvo9yHiaoeDqVaq0mRPlaYO1KqH47p+IwFf+LRE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qzFJPKrMSr98zhIOKH91ICQ4+dUN9MrDjIB/ZpEjGHbUcxSKgLKJWASEVBm/49Lf/
 orclnub6zmuCD25OU1d74vpEhrZu+b+o/EFvWYj6mpnRE26K8k7lbpsvfx6n01vTvS
 zEoa6Wn7M/+rFAJ1GRB8eJvzsVUKZqdRU8K6wQwc=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kFac1-00B3qj-5f; Tue, 08 Sep 2020 12:12:29 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/5] media: atomisp: get rid of -Wsuggest-attribute=format
 warnings
Date: Tue,  8 Sep 2020 12:12:26 +0200
Message-Id: <6c77d765707b1e6b2901fd23d85b4d032f1a1799.1599141140.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599141140.git.mchehab+huawei@kernel.org>
References: <cover.1599141140.git.mchehab+huawei@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 mauro.chehab@huawei.com, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlcmUgYXJlIHNvbWUgd2FybmluZ3MgcmVwb3J0ZWQgYnkgZ2NjOgoJZHJpdmVycy9zdGFnaW5n
L21lZGlhL2F0b21pc3AvL3BjaS9hdG9taXNwX2NvbXBhdF9jc3MyMC5jOjE2NDoyOiB3YXJuaW5n
OiBmdW5jdGlvbiDigJhhdG9taXNwX2NzczJfZGJnX3ByaW504oCZIG1pZ2h0IGJlIGEgY2FuZGlk
YXRlIGZvciDigJhnbnVfcHJpbnRm4oCZIGZvcm1hdCBhdHRyaWJ1dGUgWy1Xc3VnZ2VzdC1hdHRy
aWJ1dGU9Zm9ybWF0XQoJZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvL3BjaS9hdG9taXNw
X2NvbXBhdF9jc3MyMC5jOjE3MDoyOiB3YXJuaW5nOiBmdW5jdGlvbiDigJhhdG9taXNwX2NzczJf
ZGJnX2Z0cmFjZV9wcmludOKAmSBtaWdodCBiZSBhIGNhbmRpZGF0ZSBmb3Ig4oCYZ251X3ByaW50
ZuKAmSBmb3JtYXQgYXR0cmlidXRlIFstV3N1Z2dlc3QtYXR0cmlidXRlPWZvcm1hdF0KCWRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwLy9wY2kvYXRvbWlzcF9jb21wYXRfY3NzMjAuYzoxNzA6
Mjogd2FybmluZzogZnVuY3Rpb24g4oCYYXRvbWlzcF9jc3MyX2RiZ19mdHJhY2VfcHJpbnTigJkg
bWlnaHQgYmUgYSBjYW5kaWRhdGUgZm9yIOKAmGdudV9wcmludGbigJkgZm9ybWF0IGF0dHJpYnV0
ZSBbLVdzdWdnZXN0LWF0dHJpYnV0ZT1mb3JtYXRdCglkcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRv
bWlzcC8vcGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmM6MTc2OjI6IHdhcm5pbmc6IGZ1bmN0aW9u
IOKAmGF0b21pc3BfY3NzMl9lcnJfcHJpbnTigJkgbWlnaHQgYmUgYSBjYW5kaWRhdGUgZm9yIOKA
mGdudV9wcmludGbigJkgZm9ybWF0IGF0dHJpYnV0ZSBbLVdzdWdnZXN0LWF0dHJpYnV0ZT1mb3Jt
YXRdCgpUaGF0IGFyZSBkdWUgdG8gdGhlIHVzYWdlIG9mIHByaW50Zi1saWtlIG1lc3NhZ2VzIHdp
dGhvdXQKZW5hYmxpbmcgdGhlIGVycm9yIGNoZWNraW5nIGxvZ2ljLgoKQWRkIHRoZSBwcm9wZXIg
YXR0cmlidXRlcyBpbiBvcmRlciB0byBzaHV0IHVwIHN1Y2ggd2FybmluZ3MuCgpTaWduZWQtb2Zm
LWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ci0t
LQogLi4uL21lZGlhL2F0b21pc3AvcGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmMgIHwgMjAgKysr
Ky0tLS0tLS0tLS0tLS0tLQogLi4uL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kvaWFfY3NzX2Vu
di5oICAgIHwgIDQgKystLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDE4IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwL3Bj
aS9hdG9taXNwX2NvbXBhdF9jc3MyMC5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3Av
cGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmMKaW5kZXggZTU0MjQyZGMwODg4Li41YTczMGUxN2Nj
NmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwL3BjaS9hdG9taXNw
X2NvbXBhdF9jc3MyMC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwL3BjaS9h
dG9taXNwX2NvbXBhdF9jc3MyMC5jCkBAIC0xNTksMjQgKzE1OSwxMyBAQCBzdGF0aWMgdm9pZCBh
dG9taXNwX2NzczJfaHdfbG9hZChocnRfYWRkcmVzcyBhZGRyLCB2b2lkICp0bywgdWludDMyX3Qg
bikKIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZtbWlvX2xvY2ssIGZsYWdzKTsKIH0KIAotc3Rh
dGljIGludCBhdG9taXNwX2NzczJfZGJnX3ByaW50KGNvbnN0IGNoYXIgKmZtdCwgdmFfbGlzdCBh
cmdzKQotewotCXZwcmludGsoZm10LCBhcmdzKTsKLQlyZXR1cm4gMDsKLX0KLQotc3RhdGljIGlu
dCBhdG9taXNwX2NzczJfZGJnX2Z0cmFjZV9wcmludChjb25zdCBjaGFyICpmbXQsIHZhX2xpc3Qg
YXJncykKK3N0YXRpYyBpbnQgIF9fYXR0cmlidXRlX18oKGZvcm1hdCAocHJpbnRmLCAxLCAwKSkp
CithdG9taXNwX2NzczJfZGJnX2Z0cmFjZV9wcmludChjb25zdCBjaGFyICpmbXQsIHZhX2xpc3Qg
YXJncykKIHsKIAlmdHJhY2VfdnByaW50ayhmbXQsIGFyZ3MpOwogCXJldHVybiAwOwogfQogCi1z
dGF0aWMgaW50IGF0b21pc3BfY3NzMl9lcnJfcHJpbnQoY29uc3QgY2hhciAqZm10LCB2YV9saXN0
IGFyZ3MpCi17Ci0JdnByaW50ayhmbXQsIGFyZ3MpOwotCXJldHVybiAwOwotfQotCiB2b2lkIGF0
b21pc3BfbG9hZF91aW50MzIoaHJ0X2FkZHJlc3MgYWRkciwgdWludDMyX3QgKmRhdGEpCiB7CiAJ
KmRhdGEgPSBhdG9taXNwX2NzczJfaHdfbG9hZF8zMihhZGRyKTsKQEAgLTg2OSw4ICs4NTgsNyBA
QCBzdGF0aWMgaW5saW5lIGludCBfX3NldF9jc3NfcHJpbnRfZW52KHN0cnVjdCBhdG9taXNwX2Rl
dmljZSAqaXNwLCBpbnQgb3B0KQogCQlpc3AtPmNzc19lbnYuaXNwX2Nzc19lbnYucHJpbnRfZW52
LmRlYnVnX3ByaW50ID0KIAkJICAgIGF0b21pc3BfY3NzMl9kYmdfZnRyYWNlX3ByaW50OwogCWVs
c2UgaWYgKG9wdCA9PSAyKQotCQlpc3AtPmNzc19lbnYuaXNwX2Nzc19lbnYucHJpbnRfZW52LmRl
YnVnX3ByaW50ID0KLQkJICAgIGF0b21pc3BfY3NzMl9kYmdfcHJpbnQ7CisJCWlzcC0+Y3NzX2Vu
di5pc3BfY3NzX2Vudi5wcmludF9lbnYuZGVidWdfcHJpbnQgPSB2cHJpbnRrOwogCWVsc2UKIAkJ
cmV0ID0gLUVJTlZBTDsKIApAQCAtOTAzLDcgKzg5MSw3IEBAIGludCBhdG9taXNwX2Nzc19sb2Fk
X2Zpcm13YXJlKHN0cnVjdCBhdG9taXNwX2RldmljZSAqaXNwKQogCiAJX19zZXRfY3NzX3ByaW50
X2Vudihpc3AsIGRiZ19mdW5jKTsKIAotCWlzcC0+Y3NzX2Vudi5pc3BfY3NzX2Vudi5wcmludF9l
bnYuZXJyb3JfcHJpbnQgPSBhdG9taXNwX2NzczJfZXJyX3ByaW50OworCWlzcC0+Y3NzX2Vudi5p
c3BfY3NzX2Vudi5wcmludF9lbnYuZXJyb3JfcHJpbnQgPSB2cHJpbnRrOwogCiAJLyogbG9hZCBp
c3AgZncgaW50byBJU1AgbWVtb3J5ICovCiAJZXJyID0gaWFfY3NzX2xvYWRfZmlybXdhcmUoaXNw
LT5kZXYsICZpc3AtPmNzc19lbnYuaXNwX2Nzc19lbnYsCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kvaWFfY3NzX2Vudi5oIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL2F0b21pc3AvcGNpL2lhX2Nzc19lbnYuaAppbmRleCA4ZGViZjMzNGMxNWMuLjk4MDhmZjll
MDQ5MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvcGNpL2lhX2Nz
c19lbnYuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kvaWFfY3NzX2Vu
di5oCkBAIC03NSw5ICs3NSw5IEBAIHN0cnVjdCBpYV9jc3NfaHdfYWNjZXNzX2VudiB7CiAvKiBF
bnZpcm9ubWVudCB3aXRoIGZ1bmN0aW9uIHBvaW50ZXJzIHRvIHByaW50IGVycm9yIGFuZCBkZWJ1
ZyBtZXNzYWdlcy4KICAqLwogc3RydWN0IGlhX2Nzc19wcmludF9lbnYgewotCWludCAoKmRlYnVn
X3ByaW50KShjb25zdCBjaGFyICpmbXQsIHZhX2xpc3QgYXJncyk7CisJaW50ICgqZGVidWdfcHJp
bnQpKGNvbnN0IGNoYXIgKmZtdCwgdmFfbGlzdCBhcmdzKSBfX2F0dHJpYnV0ZV9fKChmb3JtYXQg
KHByaW50ZiwgMSwgMCkpKTsKIAkvKiogUHJpbnQgYSBkZWJ1ZyBtZXNzYWdlLiAqLwotCWludCAo
KmVycm9yX3ByaW50KShjb25zdCBjaGFyICpmbXQsIHZhX2xpc3QgYXJncyk7CisJaW50ICgqZXJy
b3JfcHJpbnQpKGNvbnN0IGNoYXIgKmZtdCwgdmFfbGlzdCBhcmdzKSBfX2F0dHJpYnV0ZV9fKChm
b3JtYXQgKHByaW50ZiwgMSwgMCkpKTsKIAkvKiogUHJpbnQgYW4gZXJyb3IgbWVzc2FnZS4qLwog
fTsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
