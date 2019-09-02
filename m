Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5A4A5301
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 11:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 79FF285F50;
	Mon,  2 Sep 2019 09:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xxMFfApaUZJd; Mon,  2 Sep 2019 09:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C14C885F4D;
	Mon,  2 Sep 2019 09:40:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 980961BF23C
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 09:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9222E87C16
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 09:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0dVP-6wkuI37 for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 09:40:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6092287C11
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 09:40:55 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i4ipQ-0007Da-BR; Mon, 02 Sep 2019 09:40:52 +0000
From: Colin King <colin.king@canonical.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH][V2] staging: exfat: remove return and error return via a goto
Date: Mon,  2 Sep 2019 10:40:52 +0100
Message-Id: <20190902094052.28029-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogQ29saW4gSWFuIEtpbmcgPGNvbGluLmtpbmdAY2Fub25pY2FsLmNvbT4KClRoZSByZXR1
cm4gc3RhdGVtZW50IGlzIGluY29ycmVjdCwgdGhlIGVycm9yIGV4aXQgc2hvdWxkIGJlIGJ5CmFz
c2lnbmluZyByZXQgd2l0aCB0aGUgZXJyb3IgY29kZSBhbmQgZXhpdGluZyB2aWEgbGFiZWwgb3V0
LgpUaGFua3MgdG8gVmFsZGlzIEtsxJN0bmlla3MgZm9yIGNvcnJlY3RpbmcgbXkgb3JpZ2luYWwg
Zml4LgoKQWRkcmVzc2VzLUNvdmVyaXR5OiAoIlN0cnVjdHVyYWxseSBkZWFkIGNvZGUiKQpTaWdu
ZWQtb2ZmLWJ5OiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2luZ0BjYW5vbmljYWwuY29tPgotLS0K
ClYyOiBleGl0IHZpYSB0aGUgZ290IHJhdGhlciB0aGFuIHJldHVybmluZyB2aWEgdGhlIHJldHVy
biBzdGF0ZW1lbnQKCi0tLQogZHJpdmVycy9zdGFnaW5nL2V4ZmF0L2V4ZmF0X3N1cGVyLmMgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfc3VwZXIuYyBiL2RyaXZlcnMvc3Rh
Z2luZy9leGZhdC9leGZhdF9zdXBlci5jCmluZGV4IDViNWMyY2E4YzlhYS4uOGMyMTMwY2M0MzFi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfc3VwZXIuYworKysgYi9k
cml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfc3VwZXIuYwpAQCAtNjY0LDcgKzY2NCw3IEBAIHN0
YXRpYyBpbnQgZmZzTG9va3VwRmlsZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBjaGFyICpwYXRoLCBz
dHJ1Y3QgZmlsZV9pZF90ICpmaWQpCiAJZGVudHJ5ID0gcF9mcy0+ZnNfZnVuYy0+ZmluZF9kaXJf
ZW50cnkoc2IsICZkaXIsICZ1bmlfbmFtZSwgbnVtX2VudHJpZXMsCiAJCQkJCSAgICAgICAmZG9z
X25hbWUsIFRZUEVfQUxMKTsKIAlpZiAoZGVudHJ5IDwgLTEpIHsKLQkJcmV0dXJuIEZGU19OT1RG
T1VORDsKKwkJcmV0ID0gRkZTX05PVEZPVU5EOwogCQlnb3RvIG91dDsKIAl9CiAKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
