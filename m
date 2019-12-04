Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE9C11307A
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Dec 2019 18:06:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F36E86F42;
	Wed,  4 Dec 2019 17:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex): To:
	"J\303\203\302\251r\303\203\302\264me Pouiller[...]
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KkV8vIpaOPUJ; Wed,  4 Dec 2019 17:06:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0A0C86F0B;
	Wed,  4 Dec 2019 17:06:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FDC61BF362
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 17:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 37B0A883C2
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 17:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex): To:
 "J\303\251r\303\264me Pouiller[...]
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sk8vOMUs9NU3 for <devel@linuxdriverproject.org>;
 Wed,  4 Dec 2019 17:06:02 +0000 (UTC)
X-Greylist: delayed 00:06:17 by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D9E008838E
 for <devel@driverdev.osuosl.org>; Wed,  4 Dec 2019 17:06:01 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 47SlPw6KWBz3c;
 Wed,  4 Dec 2019 17:57:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1575478629; bh=PABaLcL8R00ld4MWuRG3lQy3IgyDNM7a8epYYPzFiwg=;
 h=Date:From:Subject:To:Cc:From;
 b=CcCMUwpqXC7M6lDlob9raFmAxDrYvCtKgPGpomgS44CmzhbiSPuHiaWMzAxMoA6FK
 XBdHXItDQZXqzPgjvTGKoRr+Si/S3MBq39hPjDoUUuRmTsq9E7aKsNA/btbwM1nrrn
 5FMVRo4YJ2KPa8AbQ+Hgvmbx48fp5rL6LYnPYXXtzd/OHWJWnsDpe5XXXM+ZJb5fVF
 HHd2zNb+fmJqvorrU13szPOPwOmi5PQTrH7rMSGQPf7EWfHFK+keuwk3lRQCUXXes5
 Sc9PhGxi/w3Zw6U+VgUqwMoP0SqphlrgyUm7nEN+GkxnF+s1ww6iVhHG0fbj1Iunk1
 fPbmMxGVqOcvw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at mail
Date: Wed, 04 Dec 2019 17:59:37 +0100
Message-Id: <f9ebb05f4a13cce4a8724dfb17f8383ec9b2d468.1575478705.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH] staging: wfx: fix reset GPIO polarity
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

RHJpdmVyIGludmVydHMgbWVhbmluZyBvZiBHUElPX0FDVElWRV9MT1cvSElHSC4gRml4IGl0IHRv
IHByZXZlbnQKY29uZnVzaW9uLgoKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBNaXJvc8WCYXcgPG1p
cnEtbGludXhAcmVyZS5xbXFtLnBsPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5j
IHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9idXNfc3BpLmMKaW5kZXggYWIwY2RhMWUxMjRmLi43M2QwMTU3YTg2YmEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvYnVzX3NwaS5jCkBAIC0xOTksOSArMTk5LDkgQEAgc3RhdGljIGludCB3Znhfc3Bp
X3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpmdW5jKQogCWlmICghYnVzLT5ncGlvX3Jlc2V0KSB7
CiAJCWRldl93YXJuKCZmdW5jLT5kZXYsICJ0cnkgdG8gbG9hZCBmaXJtd2FyZSBhbnl3YXlcbiIp
OwogCX0gZWxzZSB7Ci0JCWdwaW9kX3NldF92YWx1ZShidXMtPmdwaW9fcmVzZXQsIDApOwotCQl1
ZGVsYXkoMTAwKTsKIAkJZ3Bpb2Rfc2V0X3ZhbHVlKGJ1cy0+Z3Bpb19yZXNldCwgMSk7CisJCXVk
ZWxheSgxMDApOworCQlncGlvZF9zZXRfdmFsdWUoYnVzLT5ncGlvX3Jlc2V0LCAwKTsKIAkJdWRl
bGF5KDIwMDApOwogCX0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
