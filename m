Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 663C9158B89
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 09:54:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E187B84FB1;
	Tue, 11 Feb 2020 08:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex): To:
	"J\303\251r\303\264me Pouiller[...]
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 74cQqEHU0vUR; Tue, 11 Feb 2020 08:54:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F85D8214C;
	Tue, 11 Feb 2020 08:54:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A8EFF1BF9AD
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A614587823
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex):
 To:\t"J\303\251r\303\264me Pouiller[...]
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bfqt9G0dmjZi for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 08:54:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17412865D5
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 08:54:27 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GxGQ3NF1zC7;
 Tue, 11 Feb 2020 09:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581410814; bh=3VBefFXE9xApr8+UxqDq5by8VB9wUa9nNzOTu7NZ9/M=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=eH0X58eICXD8iDwCj1uFvlRWcE00FFqXES7L8iRM4Oc/u9PxMbFKaThGs65+iGMl/
 sXj+6N0KX+L51oWtXu+AlLomtfUjjYKxXpDqwxmNy4e3w78UflXhdLC2B7U5cdDzBQ
 v0leHn4pBxZIv0tYPSxVdCSsMPkU968lV6NUqc1VnIXi+75eAIXQja58IMHaoFYqbA
 +dboqwUAMFtMWJ7rBuMRvWPipqtLAoSxFGWXXM4pqwEULf8D8TAvkg+8CBdNZVplyb
 SliMbJIQYLbTF6ztgvsVWOzjW9i949P+H3nL8SHVJVtrYAajEBd61JV+2qiBUu0sle
 3wwyzenhKSr+A==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 09:46:54 +0100
Message-Id: <2fd2c329829dd89de66f7d6f200afc917cb00688.1581410026.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [[PATCH staging] 1/7] staging: wfx: add proper "compatible" string
MIME-Version: 1.0
To: "Jérôme Pouiller" <jerome.pouiller@silabs.com>,
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

QWRkICJjb21wYXRpYmxlIiBzdHJpbmcgbWF0Y2hpbmcgInZlbmRvcixjaGlwIiB0ZW1wbGF0ZSBh
bmQgcHJvcGVyCkdQSU8gZmxhZ3MgaGFuZGxpbmcuIEtlZXAgc3VwcG9ydCBmb3Igb2xkIG5hbWUg
YW5kIHJlc2V0IHBvbGFyaXR5CmZvciBvbGRlciBkZXZpY2V0cmVlcy4KCkNjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnICAgIyBkM2E1YmNiNGExN2YgKCJncGlvOiBhZGQgZ3Bpb2RfdG9nZ2xlX2Fj
dGl2ZV9sb3coKSIpCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IE1p
Y2hhxYIgTWlyb3PFgmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KLS0tCiAuLi4vYmluZGlu
Z3MvbmV0L3dpcmVsZXNzL3NpbGlhYnMsd2Z4LnR4dCAgICAgICAgICB8ICA3ICsrKystLS0KIGRy
aXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jICAgICAgICAgICAgICAgICAgICAgIHwgMTQgKysr
KysrKysrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsaWFicyx3ZngudHh0IGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNz
L3NpbGlhYnMsd2Z4LnR4dAppbmRleCAyNmRlNjc2MmI5NDIuLjUyZjk3NjczZGExZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L3dpcmVsZXNzL3NpbGlhYnMsd2Z4LnR4dAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsaWFicyx3
ZngudHh0CkBAIC02LDcgKzYsNyBAQCBTUEkKIFlvdSBoYXZlIHRvIGRlY2xhcmUgdGhlIFdGeHh4
IGNoaXAgaW4geW91ciBkZXZpY2UgdHJlZS4KIAogUmVxdWlyZWQgcHJvcGVydGllczoKLSAtIGNv
bXBhdGlibGU6IFNob3VsZCBiZSAic2lsYWJzLHdmeC1zcGkiCisgLSBjb21wYXRpYmxlOiBTaG91
bGQgYmUgInNpbGFicyx3ZjIwMCIKICAtIHJlZzogQ2hpcCBzZWxlY3QgYWRkcmVzcyBvZiBkZXZp
Y2UKICAtIHNwaS1tYXgtZnJlcXVlbmN5OiBNYXhpbXVtIFNQSSBjbG9ja2luZyBzcGVlZCBvZiBk
ZXZpY2UgaW4gSHoKICAtIGludGVycnVwdHMtZXh0ZW5kZWQ6IFNob3VsZCBjb250YWluIGludGVy
cnVwdCBsaW5lIChpbnRlcnJ1cHQtcGFyZW50ICsKQEAgLTE1LDYgKzE1LDcgQEAgUmVxdWlyZWQg
cHJvcGVydGllczoKIE9wdGlvbmFsIHByb3BlcnRpZXM6CiAgLSByZXNldC1ncGlvczogcGhhbmRs
ZSBvZiBncGlvIHRoYXQgd2lsbCBiZSB1c2VkIHRvIHJlc2V0IGNoaXAgZHVyaW5nIHByb2JlLgog
ICAgV2l0aG91dCB0aGlzIHByb3BlcnR5LCB5b3UgbWF5IGVuY291bnRlciBpc3N1ZXMgd2l0aCB3
YXJtIGJvb3QuCisgICAoTGVnYWN5OiB3aGVuIGNvbXBhdGlibGUgPT0gInNpbGFicyx3Zngtc3Bp
IiwgdGhlIGdwaW8gaXMgaW52ZXJ0ZWQuKQogCiBQbGVhc2UgY29uc3VsdCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1idXMudHh0IGZvciBvcHRpb25hbAogU1BJIGNv
bm5lY3Rpb24gcmVsYXRlZCBwcm9wZXJ0aWVzLApAQCAtMjMsMTIgKzI0LDEyIEBAIEV4YW1wbGU6
CiAKICZzcGkxIHsKIAl3ZnggewotCQljb21wYXRpYmxlID0gInNpbGFicyx3Zngtc3BpIjsKKwkJ
Y29tcGF0aWJsZSA9ICJzaWxhYnMsd2YyMDAiOwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
OwogCQlwaW5jdHJsLTAgPSA8JndmeF9pcnEgJndmeF9ncGlvcz47CiAJCWludGVycnVwdHMtZXh0
ZW5kZWQgPSA8JmdwaW8gMTYgSVJRX1RZUEVfRURHRV9SSVNJTkc+OwogCQl3YWtldXAtZ3Bpb3Mg
PSA8JmdwaW8gMTIgR1BJT19BQ1RJVkVfSElHSD47Ci0JCXJlc2V0LWdwaW9zID0gPCZncGlvIDEz
IEdQSU9fQUNUSVZFX0hJR0g+OworCQlyZXNldC1ncGlvcyA9IDwmZ3BpbyAxMyBHUElPX0FDVElW
RV9MT1c+OwogCQlyZWcgPSA8MD47CiAJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDQyMDAwMDAwPjsK
IAl9OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2J1c19zcGkuYwppbmRleCA0MGJjMzMwMzVkZTIuLjNiYTcwNTQ3N2NhOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMKKysrIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9idXNfc3BpLmMKQEAgLTI3LDYgKzI3LDggQEAgTU9EVUxFX1BBUk1fREVTQyhn
cGlvX3Jlc2V0LCAiZ3BpbyBudW1iZXIgZm9yIHJlc2V0LiAtMSBmb3Igbm9uZS4iKTsKICNkZWZp
bmUgU0VUX1dSSVRFIDB4N0ZGRiAgICAgICAgLyogdXNhZ2U6IGFuZCBvcGVyYXRpb24gKi8KICNk
ZWZpbmUgU0VUX1JFQUQgMHg4MDAwICAgICAgICAgLyogdXNhZ2U6IG9yIG9wZXJhdGlvbiAqLwog
CisjZGVmaW5lIFdGWF9SRVNFVF9JTlZFUlRFRCAxCisKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgd2Z4
X3BsYXRmb3JtX2RhdGEgd2Z4X3NwaV9wZGF0YSA9IHsKIAkuZmlsZV9mdyA9ICJ3Zm1fd2YyMDAi
LAogCS5maWxlX3BkcyA9ICJ3ZjIwMC5wZHMiLApAQCAtMjAxLDkgKzIwMywxMSBAQCBzdGF0aWMg
aW50IHdmeF9zcGlfcHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKmZ1bmMpCiAJaWYgKCFidXMtPmdw
aW9fcmVzZXQpIHsKIAkJZGV2X3dhcm4oJmZ1bmMtPmRldiwgInRyeSB0byBsb2FkIGZpcm13YXJl
IGFueXdheVxuIik7CiAJfSBlbHNlIHsKLQkJZ3Bpb2Rfc2V0X3ZhbHVlKGJ1cy0+Z3Bpb19yZXNl
dCwgMCk7Ci0JCXVkZWxheSgxMDApOworCQlpZiAoc3BpX2dldF9kZXZpY2VfaWQoZnVuYyktPmRy
aXZlcl9kYXRhICYgV0ZYX1JFU0VUX0lOVkVSVEVEKQorCQkJZ3Bpb2RfdG9nZ2xlX2FjdGl2ZV9s
b3coYnVzLT5ncGlvX3Jlc2V0KTsKIAkJZ3Bpb2Rfc2V0X3ZhbHVlKGJ1cy0+Z3Bpb19yZXNldCwg
MSk7CisJCXVkZWxheSgxMDApOworCQlncGlvZF9zZXRfdmFsdWUoYnVzLT5ncGlvX3Jlc2V0LCAw
KTsKIAkJdWRlbGF5KDIwMDApOwogCX0KIApAQCAtMjQ0LDE0ICsyNDgsMTYgQEAgc3RhdGljIGlu
dCB3Znhfc3BpX3JlbW92ZShzdHJ1Y3Qgc3BpX2RldmljZSAqZnVuYykKICAqIHN0cmlwcGVkLgog
ICovCiBzdGF0aWMgY29uc3Qgc3RydWN0IHNwaV9kZXZpY2VfaWQgd2Z4X3NwaV9pZFtdID0gewot
CXsgIndmeC1zcGkiLCAwIH0sCisJeyAid2Z4LXNwaSIsIFdGWF9SRVNFVF9JTlZFUlRFRCB9LAor
CXsgIndmMjAwIiwgMCB9LAogCXsgfSwKIH07CiBNT0RVTEVfREVWSUNFX1RBQkxFKHNwaSwgd2Z4
X3NwaV9pZCk7CiAKICNpZmRlZiBDT05GSUdfT0YKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2
aWNlX2lkIHdmeF9zcGlfb2ZfbWF0Y2hbXSA9IHsKLQl7IC5jb21wYXRpYmxlID0gInNpbGFicyx3
Zngtc3BpIiB9LAorCXsgLmNvbXBhdGlibGUgPSAic2lsYWJzLHdmeC1zcGkiLCAuZGF0YSA9ICh2
b2lkICopV0ZYX1JFU0VUX0lOVkVSVEVEIH0sCisJeyAuY29tcGF0aWJsZSA9ICJzaWxhYnMsd2Yy
MDAiIH0sCiAJeyB9LAogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHdmeF9zcGlfb2ZfbWF0
Y2gpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
