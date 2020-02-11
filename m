Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1BD158B83
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 09:54:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C733A8796C;
	Tue, 11 Feb 2020 08:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex): To:
	"J\303\251r\303\264me Pouiller[...]
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QVvRvHVWK+BD; Tue, 11 Feb 2020 08:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7409687823;
	Tue, 11 Feb 2020 08:54:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E54C1BF3C6
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B8E183311
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex):
 To:\t"J\303\203\302\251r\303\203\302\264me Pouiller[...]
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NB6mGC0jyqO2 for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 08:54:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1629580ED6
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 08:54:27 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GxGQ5SdWzfJ;
 Tue, 11 Feb 2020 09:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581410814; bh=segcVqLcykU0sNUYve4it7j6j+PnI/E+MmBN5ly8grM=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=CDJhb+CXf1IFqrYKw0KovqvQS545otdFic42DK+sRdceLmVelLI+IQlRQQCXgKPRI
 QRUalOlOMsw5XtQsw1mCLqwKQwxgHIeTl4hIlY81YzEYVbwrvwffj8PkTa3Gc5GUpV
 dhRnDEZ3dQzSKhmobS7I7WoeQZ23PWpYVOEb+KzgMCAwHKj4uqBS97iVN/F/dlM4LB
 BqtUISxdmoPCFTPa60rNpy4/nS5GuEEU29MtJxiYi5+ckIPwWHDgUYNZrr+a5zXZi6
 iE3Ubrd5r6Rpz6Z3kqhXFJlMXl62g5Veus8koXYHt77atB37mXiTsp18NicAwWg+aP
 7AAYQdeARFpPw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 09:46:54 +0100
Message-Id: <dfb39f4b829a1ec32453cd23e02da2a7ea088283.1581410026.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [[PATCH staging] 2/7] staging: wfx: follow compatible = vendor,chip
 format
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

QXMgZm9yIFNQSSwgZm9sbG93ICJ2ZW5kb3IsY2hpcCIgZm9ybWF0ICdjb21wYXRpYmxlJyBzdHJp
bmcgYWxzbyBmb3IKU0RJTyBidXMuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIE1pcm9zxYJhdyA8
bWlycS1saW51eEByZXJlLnFtcW0ucGw+Ci0tLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0
L3dpcmVsZXNzL3NpbGlhYnMsd2Z4LnR4dCAgICAgICAgICB8IDQgKystLQogZHJpdmVycy9zdGFn
aW5nL3dmeC9idXNfc2Rpby5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEgKwog
MiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L3dpcmVsZXNzL3NpbGlhYnMsd2Z4LnR4dCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9zaWxpYWJzLHdmeC50
eHQKaW5kZXggNTJmOTc2NzNkYTFlLi5mZmVjNzljMTQ3ODYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVz
cy9zaWxpYWJzLHdmeC50eHQKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL3NpbGlhYnMsd2Z4LnR4dApAQCAtNDUs
NyArNDUsNyBAQCBjYXNlLiBUaHVzIGRlY2xhcmluZyBXRnh4eCBjaGlwIGluIGRldmljZSB0cmVl
IGlzIHN0cm9uZ2x5IHJlY29tbWVuZGVkIChhbmQgbWF5CiBiZWNvbWUgbWFuZGF0b3J5IGluIHRo
ZSBmdXR1cmUpLgogCiBSZXF1aXJlZCBwcm9wZXJ0aWVzOgotIC0gY29tcGF0aWJsZTogU2hvdWxk
IGJlICJzaWxhYnMsd2Z4LXNkaW8iCisgLSBjb21wYXRpYmxlOiBTaG91bGQgYmUgInNpbGFicyx3
ZjIwMCIKICAtIHJlZzogU2hvdWxkIGJlIDEKIAogSW4gYWRkaXRpb24sIGl0IGlzIHJlY29tbWVu
ZGVkIHRvIGRlY2xhcmUgYSBtbWMtcHdyc2VxIG9uIFNESU8gaG9zdCBhYm92ZSBXRnguCkBAIC03
MSw3ICs3MSw3IEBAIEV4YW1wbGU6CiAJI3NpemUgPSA8MD47CiAKIAltbWNAMSB7Ci0JCWNvbXBh
dGlibGUgPSAic2lsYWJzLHdmeC1zZGlvIjsKKwkJY29tcGF0aWJsZSA9ICJzaWxhYnMsd2YyMDAi
OwogCQlyZWcgPSA8MT47CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJCXBpbmN0cmwt
MCA9IDwmd2Z4X3dha2V1cD47CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19z
ZGlvLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMKaW5kZXggZjg5MDExNjRjMjA2
Li4yOTY4OGIzMjRiMzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8u
YworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMKQEAgLTI1NCw2ICsyNTQsNyBA
QCBNT0RVTEVfREVWSUNFX1RBQkxFKHNkaW8sIHdmeF9zZGlvX2lkcyk7CiAjaWZkZWYgQ09ORklH
X09GCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCB3Znhfc2Rpb19vZl9tYXRjaFtd
ID0gewogCXsgLmNvbXBhdGlibGUgPSAic2lsYWJzLHdmeC1zZGlvIiB9LAorCXsgLmNvbXBhdGli
bGUgPSAic2lsYWJzLHdmMjAwIiB9LAogCXsgfSwKIH07CiBNT0RVTEVfREVWSUNFX1RBQkxFKG9m
LCB3Znhfc2Rpb19vZl9tYXRjaCk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
