Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5115D158B86
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 09:54:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34B2C815E8;
	Tue, 11 Feb 2020 08:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex): To:
	"J\303\251r\303\264me Pouiller[...]
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q1YrvHUbI4EG; Tue, 11 Feb 2020 08:54:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6739B813EB;
	Tue, 11 Feb 2020 08:54:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 431321BF982
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4054782DE1
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 08:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex):
 To:\t"J\303\203\302\251r\303\203\302\264me Pouiller[...]
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7JZlNXIYOnlI for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 08:54:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C319D80ED6
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 08:54:28 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GxGR4XWGz20v;
 Tue, 11 Feb 2020 09:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581410815; bh=/gg+5RaEcTERrW3w0XY+AfpW03SSlXkzclsVdFL9Dec=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=ZhUstvHAQ36eHzyaJpjwebgJu37OlGiQXjiQjWxv5cykrDaTJSQVyu50SimKwE11G
 9fsZeW/TD6XPE0H3ffQU2ISoKzGvK3nFC3uveDgbcgvMpMww9vxCX9QYclzi4QK/8C
 iM19IhS+F8GYWgTFWvOxhCkFhLHgiUwFKX26Cdx5eAlXO3+QbwZQyLid1WpH87OHrt
 s5sf9rU/nXpLmS07TWYi+fhjArOFnrzyqedw8M9rkRH1T+WFVw+Wkg1YXelyLTtcwN
 VJncjOt4DVpXAYupyrxk2Jet7nusWyo5H3gh55cO47OWDTKTef1/7LA9tHKz0ZcDOd
 Nv5/jK8yAPJ6w==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 09:46:55 +0100
Message-Id: <86d4e8ab61715bb07b2a58066410924d82883f85.1581410026.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
References: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [[PATCH staging] 5/7] staging: wfx: try 16-bit word mode first
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

V0YyMDAgY2hpcCB3b3JrcyB3aXRoIDE2LWJpdCB3b3JkcyBvdmVyIFNQSSwgc28gdXNlIHRoYXQg
d29yZApzaXplIGlmIGF2YWlsYWJsZS4gVGhpcyBhdm9pZHMgYSBib3VuY2UgYnVmZmVyIHVzYWdl
IGZvcgpsaXR0bGUtZW5kaWFuIGhvc3RzLgoKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBNaXJvc8WC
YXcgPG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYnVz
X3NwaS5jIHwgNyArKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMKaW5kZXggMmIxMDhhOWZhNWFlLi5jNWY3ODE2
MTIzNGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCisrKyBiL2Ry
aXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCkBAIC0xNzUsOSArMTc1LDEyIEBAIHN0YXRpYyBp
bnQgd2Z4X3NwaV9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqZnVuYykKIAlzdHJ1Y3Qgd2Z4X3Nw
aV9wcml2ICpidXM7CiAJaW50IHJldDsKIAotCWlmICghZnVuYy0+Yml0c19wZXJfd29yZCkKLQkJ
ZnVuYy0+Yml0c19wZXJfd29yZCA9IDE2OworCWZ1bmMtPmJpdHNfcGVyX3dvcmQgPSAxNjsKIAly
ZXQgPSBzcGlfc2V0dXAoZnVuYyk7CisJaWYgKHJldCA9PSAtRUlOVkFMKSB7CisJCWZ1bmMtPmJp
dHNfcGVyX3dvcmQgPSA4OworCQlyZXQgPSBzcGlfc2V0dXAoZnVuYyk7CisJfQogCWlmIChyZXQp
CiAJCXJldHVybiByZXQ7CiAJLy8gVHJhY2UgYmVsb3cgaXMgYWxzbyBkaXNwbGF5ZWQgYnkgc3Bp
X3NldHVwKCkgaWYgY29tcGlsZWQgd2l0aCBERUJVRwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
