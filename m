Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 987C6158CC2
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 11:35:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E12C386091;
	Tue, 11 Feb 2020 10:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cvNKGEcj5LTb; Tue, 11 Feb 2020 10:35:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9F6F8436F;
	Tue, 11 Feb 2020 10:35:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E14451BF831
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC65F847D9
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kmo76TE2Dvrx for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 10:35:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB7658436F
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 10:35:05 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GzgC0Wtzz20t;
 Tue, 11 Feb 2020 11:35:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581417303; bh=ZyBwZUGyD7qjPPbQlhdlCzFxIwy0/NfhkGAFyrsfD7Q=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=CaoXz8EhHAoo2lAK9lz+Q0VDhnel5DjRjx1ioqTJSf2RloKgI7K1WvmVuJbLFhcgE
 Ljl6Dt/EzGzT7yYfNwWKnMcW4SCQvZIiHhYDjwOFliEPxju8RJqpDAacAX5JV2MwF0
 hiEctQogTxhvsZPfneLihAiIY5XLY2C9vB+RWTdnpZ3gZyeuIy7zkPjz3HC7MjK0FL
 1G7MnTDUDoI/NbjkIur8emYcMk0hQvF0qrXmw3gz1l7Hloa1QOoykcQNMTLWmzgS1Q
 NpnCXIQOOUXoNESfbL+GCiVeXpS0/bhxKrN2GhyqnxmmTyhUZByNZakGKxBDiBTK2q
 y+LkXFDWpuhEw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 11:35:02 +0100
Message-Id: <96b95d52d0b613065fe655f1d0fe9d7c6adf65fb.1581416843.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v2 4/6] staging: wfx: follow compatible = vendor,chip format
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

QXMgZm9yIFNQSSwgZm9sbG93ICJ2ZW5kb3IsY2hpcCIgZm9ybWF0ICdjb21wYXRpYmxlJyBzdHJp
bmcgYWxzbyBmb3IKU0RJTyBidXMuCgpGaXhlczogMDA5NjIxNGE1OWE3ICgic3RhZ2luZzogd2Z4
OiBhZGQgc3VwcG9ydCBmb3IgSS9PIGFjY2VzcyIpClNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgTWly
b3PFgmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvd2lyZWxlc3Mvc2lsaWFicyx3ZngudHh0ICAgICAgICAgIHwgNCArKy0tCiBkcml2
ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsaWFicyx3ZngudHh0IGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL3NpbGlh
YnMsd2Z4LnR4dAppbmRleCA1MmY5NzY3M2RhMWUuLmZmZWM3OWMxNDc4NiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0
L3dpcmVsZXNzL3NpbGlhYnMsd2Z4LnR4dAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsaWFicyx3ZngudHh0
CkBAIC00NSw3ICs0NSw3IEBAIGNhc2UuIFRodXMgZGVjbGFyaW5nIFdGeHh4IGNoaXAgaW4gZGV2
aWNlIHRyZWUgaXMgc3Ryb25nbHkgcmVjb21tZW5kZWQgKGFuZCBtYXkKIGJlY29tZSBtYW5kYXRv
cnkgaW4gdGhlIGZ1dHVyZSkuCiAKIFJlcXVpcmVkIHByb3BlcnRpZXM6Ci0gLSBjb21wYXRpYmxl
OiBTaG91bGQgYmUgInNpbGFicyx3Zngtc2RpbyIKKyAtIGNvbXBhdGlibGU6IFNob3VsZCBiZSAi
c2lsYWJzLHdmMjAwIgogIC0gcmVnOiBTaG91bGQgYmUgMQogCiBJbiBhZGRpdGlvbiwgaXQgaXMg
cmVjb21tZW5kZWQgdG8gZGVjbGFyZSBhIG1tYy1wd3JzZXEgb24gU0RJTyBob3N0IGFib3ZlIFdG
eC4KQEAgLTcxLDcgKzcxLDcgQEAgRXhhbXBsZToKIAkjc2l6ZSA9IDwwPjsKIAogCW1tY0AxIHsK
LQkJY29tcGF0aWJsZSA9ICJzaWxhYnMsd2Z4LXNkaW8iOworCQljb21wYXRpYmxlID0gInNpbGFi
cyx3ZjIwMCI7CiAJCXJlZyA9IDwxPjsKIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAkJ
cGluY3RybC0wID0gPCZ3Znhfd2FrZXVwPjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvYnVzX3NkaW8uYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8uYwppbmRleCA1NDUw
YmQ1ZTFiNWQuLmRlZGMzZmY1OGQzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9i
dXNfc2Rpby5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8uYwpAQCAtMjUxLDYg
KzI1MSw3IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUoc2Rpbywgd2Z4X3NkaW9faWRzKTsKICNpZmRl
ZiBDT05GSUdfT0YKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHdmeF9zZGlvX29m
X21hdGNoW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJzaWxhYnMsd2Z4LXNkaW8iIH0sCisJeyAu
Y29tcGF0aWJsZSA9ICJzaWxhYnMsd2YyMDAiIH0sCiAJeyB9LAogfTsKIE1PRFVMRV9ERVZJQ0Vf
VEFCTEUob2YsIHdmeF9zZGlvX29mX21hdGNoKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
