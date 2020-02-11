Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7075158B85
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 09:54:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 36F6B879CC;
	Tue, 11 Feb 2020 08:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex): To:
	"J\303\251r\303\264me Pouiller[...]
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wyeY9gO6OlBw; Tue, 11 Feb 2020 08:54:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46BE8878A0;
	Tue, 11 Feb 2020 08:54:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DDD21BF982
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4ADF0877E4
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex):
 To:\t"J\303\251r\303\264me Pouiller[...]
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XEGZ3aB5mz3r for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 08:54:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 173CB85C20
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 08:54:27 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GxGR0RTYz204;
 Tue, 11 Feb 2020 09:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581410815; bh=vC8rNNtooKbxTVlVDqBiNvfnnfC7wI0pu9a99/s4ePQ=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=QJKhB/tAEcNe6Tf0aO2UqK/DMnYf/L3J3Ve+4hMAIcMnv2vYD5/20YyEXmZvIAzNL
 aPRLfAkbr+m7vJH3ob/ZwVGDZo5qxo/zsEVqR0Xyb3hh+LcvRh+x5jrKth151PtUvM
 kvjYAuCVGYr/8ZXU+PYJbUUMdplAHaJyeY18gWxz1qVJhZYAGn5VPjCkzXvRei6oxN
 7FdZv6phwqDmrgNtiryGJ/1QA1uLwNLyCHgPbSecQacDCw4f6ouWR7fswtutCebWwS
 KS3vLamYp2JSD+4F9VkiE+eVmXQ5TrSqNT4gv4+oXY0uMeqg4NTdK20Bng/liFDSAK
 ccmNR58i76t5Q==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 09:46:54 +0100
Message-Id: <8f0c51acc3b98fc55d6960036daef7556445cd0a.1581410026.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [[PATCH staging] 3/7] staging: wfx: fix init/remove vs IRQ race
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

TW92ZSBpbnRlcnJ1cHQgcmVxdWVzdCBhbmQgZnJlZSBzbyB0byBhdm9pZCBmb2xsb3dpbmcgV0FS
TiBvbiBwcm9iZQphbmQgcG9zc2libGUgdXNlLWFmdGVyLWZyZWUgb24gcmVtb3ZlLgoKV0FSTklO
RzogQ1BVOiAwIFBJRDogODI3IGF0IGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jOjE0MiB3
Znhfc3BpX2lycV9oYW5kbGVyKzB4NWMvMHg2NCBbd2Z4XQpyYWNlIGNvbmRpdGlvbiBpbiBkcml2
ZXIgaW5pdC9kZWluaXQKCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6
IE1pY2hhxYIgTWlyb3PFgmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KLS0tCiBkcml2ZXJz
L3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMgfCAxNiArKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL3N0
YWdpbmcvd2Z4L2J1c19zcGkuYyAgfCAxNiArKysrKysrKystLS0tLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDE3IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy93ZngvYnVzX3NkaW8uYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8u
YwppbmRleCAyOTY4OGIzMjRiMzMuLjJiZmFmNjFlOGY2MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9z
dGFnaW5nL3dmeC9idXNfc2Rpby5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8u
YwpAQCAtMjAwLDE2ICsyMDAsMTYgQEAgc3RhdGljIGludCB3Znhfc2Rpb19wcm9iZShzdHJ1Y3Qg
c2Rpb19mdW5jICpmdW5jLAogCWlmIChyZXQpCiAJCWdvdG8gZXJyMDsKIAotCXJldCA9IHdmeF9z
ZGlvX2lycV9zdWJzY3JpYmUoYnVzKTsKLQlpZiAocmV0KQotCQlnb3RvIGVycjE7Ci0KIAlidXMt
PmNvcmUgPSB3ZnhfaW5pdF9jb21tb24oJmZ1bmMtPmRldiwgJndmeF9zZGlvX3BkYXRhLAogCQkJ
CSAgICAmd2Z4X3NkaW9faHdidXNfb3BzLCBidXMpOwogCWlmICghYnVzLT5jb3JlKSB7CiAJCXJl
dCA9IC1FSU87CisJCWdvdG8gZXJyMTsKKwl9CisKKwlyZXQgPSB3Znhfc2Rpb19pcnFfc3Vic2Ny
aWJlKGJ1cyk7CisJaWYgKHJldCkKIAkJZ290byBlcnIyOwotCX0KIAogCXJldCA9IHdmeF9wcm9i
ZShidXMtPmNvcmUpOwogCWlmIChyZXQpCkBAIC0yMTgsOSArMjE4LDkgQEAgc3RhdGljIGludCB3
Znhfc2Rpb19wcm9iZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jLAogCXJldHVybiAwOwogCiBlcnIz
OgotCXdmeF9mcmVlX2NvbW1vbihidXMtPmNvcmUpOworCXdmeF9zZGlvX2lycV91bnN1YnNjcmli
ZShidXMpOwogZXJyMjoKLQl3Znhfc2Rpb19pcnFfdW5zdWJzY3JpYmUoYnVzKTsKKwl3ZnhfZnJl
ZV9jb21tb24oYnVzLT5jb3JlKTsKIGVycjE6CiAJc2Rpb19jbGFpbV9ob3N0KGZ1bmMpOwogCXNk
aW9fZGlzYWJsZV9mdW5jKGZ1bmMpOwpAQCAtMjM0LDggKzIzNCw4IEBAIHN0YXRpYyB2b2lkIHdm
eF9zZGlvX3JlbW92ZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jKQogCXN0cnVjdCB3Znhfc2Rpb19w
cml2ICpidXMgPSBzZGlvX2dldF9kcnZkYXRhKGZ1bmMpOwogCiAJd2Z4X3JlbGVhc2UoYnVzLT5j
b3JlKTsKLQl3ZnhfZnJlZV9jb21tb24oYnVzLT5jb3JlKTsKIAl3Znhfc2Rpb19pcnFfdW5zdWJz
Y3JpYmUoYnVzKTsKKwl3ZnhfZnJlZV9jb21tb24oYnVzLT5jb3JlKTsKIAlzZGlvX2NsYWltX2hv
c3QoZnVuYyk7CiAJc2Rpb19kaXNhYmxlX2Z1bmMoZnVuYyk7CiAJc2Rpb19yZWxlYXNlX2hvc3Qo
ZnVuYyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYyBiL2RyaXZl
cnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCmluZGV4IDNiYTcwNTQ3N2NhOC4uMmIxMDhhOWZhNWFl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYworKysgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2J1c19zcGkuYwpAQCAtMjExLDIwICsyMTEsMjIgQEAgc3RhdGljIGludCB3
Znhfc3BpX3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpmdW5jKQogCQl1ZGVsYXkoMjAwMCk7CiAJ
fQogCi0JcmV0ID0gZGV2bV9yZXF1ZXN0X2lycSgmZnVuYy0+ZGV2LCBmdW5jLT5pcnEsIHdmeF9z
cGlfaXJxX2hhbmRsZXIsCi0JCQkgICAgICAgSVJRRl9UUklHR0VSX1JJU0lORywgIndmeCIsIGJ1
cyk7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJldDsKLQogCUlOSVRfV09SSygmYnVzLT5yZXF1ZXN0
X3J4LCB3Znhfc3BpX3JlcXVlc3RfcngpOwogCWJ1cy0+Y29yZSA9IHdmeF9pbml0X2NvbW1vbigm
ZnVuYy0+ZGV2LCAmd2Z4X3NwaV9wZGF0YSwKIAkJCQkgICAgJndmeF9zcGlfaHdidXNfb3BzLCBi
dXMpOwogCWlmICghYnVzLT5jb3JlKQogCQlyZXR1cm4gLUVJTzsKIAorCXJldCA9IGRldm1fcmVx
dWVzdF9pcnEoJmZ1bmMtPmRldiwgZnVuYy0+aXJxLCB3Znhfc3BpX2lycV9oYW5kbGVyLAorCQkJ
ICAgICAgIElSUUZfVFJJR0dFUl9SSVNJTkcsICJ3ZngiLCBidXMpOworCWlmIChyZXQpCisJCXJl
dHVybiByZXQ7CisKIAlyZXQgPSB3ZnhfcHJvYmUoYnVzLT5jb3JlKTsKLQlpZiAocmV0KQorCWlm
IChyZXQpIHsKKwkJZGV2bV9mcmVlX2lycSgmZnVuYy0+ZGV2LCBmdW5jLT5pcnEsIGJ1cyk7CiAJ
CXdmeF9mcmVlX2NvbW1vbihidXMtPmNvcmUpOworCX0KIAogCXJldHVybiByZXQ7CiB9CkBAIC0y
MzQsMTEgKzIzNiwxMSBAQCBzdGF0aWMgaW50IHdmeF9zcGlfcmVtb3ZlKHN0cnVjdCBzcGlfZGV2
aWNlICpmdW5jKQogCXN0cnVjdCB3Znhfc3BpX3ByaXYgKmJ1cyA9IHNwaV9nZXRfZHJ2ZGF0YShm
dW5jKTsKIAogCXdmeF9yZWxlYXNlKGJ1cy0+Y29yZSk7Ci0Jd2Z4X2ZyZWVfY29tbW9uKGJ1cy0+
Y29yZSk7CiAJLy8gQSBmZXcgSVJRIHdpbGwgYmUgc2VudCBkdXJpbmcgZGV2aWNlIHJlbGVhc2Uu
IEhvcGVmdWxseSwgbm8gSVJRCiAJLy8gc2hvdWxkIGhhcHBlbiBhZnRlciB3ZGV2L3d2aWYgYXJl
IHJlbGVhc2VkLgogCWRldm1fZnJlZV9pcnEoJmZ1bmMtPmRldiwgZnVuYy0+aXJxLCBidXMpOwog
CWZsdXNoX3dvcmsoJmJ1cy0+cmVxdWVzdF9yeCk7CisJd2Z4X2ZyZWVfY29tbW9uKGJ1cy0+Y29y
ZSk7CiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
