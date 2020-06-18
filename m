Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DEB1FDAC2
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 03:08:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57E9088007;
	Thu, 18 Jun 2020 01:08:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LRHQI-0wJAUl; Thu, 18 Jun 2020 01:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0A1B87FC1;
	Thu, 18 Jun 2020 01:08:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 671A51BF31F
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 63C6686C11
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lb5lwJHd-B23 for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 01:08:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E792586C04
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 01:08:07 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05FCD2193E;
 Thu, 18 Jun 2020 01:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442487;
 bh=3ixtTqSgLT06EGmTqWLRPWX9EpoK3ocTPIYY48k+Euc=;
 h=From:To:Cc:Subject:Date:From;
 b=QqIdWrNZKNKV+wqOJWLxGXAwpcmLF8Jz38jxeuIK1Th716Dys5IrnKlQV/E03VLhc
 nrXMVjaUGg0sPXXx/KZQaw1Nl3xzy2yVNAEmhDwtoe0BBt6sHYCl9WKNl0TaDjSNTF
 dUS6hLQJpm1/qmGueM7KQBgux1IygnMgrkM0Tj/k=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 001/388] staging: wfx: fix potential deadlock in
 wfx_tx_flush()
Date: Wed, 17 Jun 2020 21:01:38 -0400
Message-Id: <20200618010805.600873-1-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKWyBV
cHN0cmVhbSBjb21taXQgYTM5ZTc2MWFhNGZlZmEyYThhYWY1NDkyMTczMjk5MzNiOTFkYTdjOSBd
Cgp3ZnhfdHhfZmx1c2goKSB3YWl0IHRoZXJlIGFyZSBubyBtb3JlIGZyYW1lIGluIGRldmljZSBi
dWZmZXIuIEhvd2V2ZXIsCnRoaXMgZXZlbnQgbWF5IG5ldmVyIGhhcHBlbnMgc2luY2Ugd2Z4X3R4
X2ZsdXNoKCkgZG9uJ3QgZm9yYmlkIHRvCmVucXVldWUgbmV3IGZyYW1lcy4KCk5vdGUgdGhhdCB3
ZnhfdHhfZmx1c2goKSBzaG91bGQgb25seSBlbnN1cmUgdGhhdCBhbGwgZnJhbWVzIGN1cnJlbnRs
eSBpbgpoYXJkd2FyZSBxdWV1ZXMgYXJlIHNlbnQuIFNvIHRoZSBjdXJyZW50IGNvZGUgaXMgbW9y
ZSByZXN0cmljdGl2ZSB0aGF0Cml0IHNob3VsZC4KCk5vdGUgdGhhdCB3ZnhfdHhfZmx1c2goKSBy
ZWxlYXNlIHRoZSBsb2NrIGJlZm9yZSB0byByZXR1cm4gd2hpbGUKd2Z4X3R4X2xvY2tfZmx1c2go
KSBrZWVwIHRoZSBsb2NrLgoKUmV2aWV3ZWQtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50
ZXJAb3JhY2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjAw
NDAxMTEwNDA1LjgwMjgyLTMxLUplcm9tZS5Qb3VpbGxlckBzaWxhYnMuY29tClNpZ25lZC1vZmYt
Ynk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+ClNpZ25l
ZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL3N0
YWdpbmcvd2Z4L3F1ZXVlLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jIGIvZHJpdmVycy9zdGFn
aW5nL3dmeC9xdWV1ZS5jCmluZGV4IDM5ZDkxMjdjZTRiOS4uOGFlMjM2ODFlMjliIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dm
eC9xdWV1ZS5jCkBAIC0zNSw2ICszNSw3IEBAIHZvaWQgd2Z4X3R4X2ZsdXNoKHN0cnVjdCB3Znhf
ZGV2ICp3ZGV2KQogCWlmICh3ZGV2LT5jaGlwX2Zyb3plbikKIAkJcmV0dXJuOwogCisJd2Z4X3R4
X2xvY2sod2Rldik7CiAJbXV0ZXhfbG9jaygmd2Rldi0+aGlmX2NtZC5sb2NrKTsKIAlyZXQgPSB3
YWl0X2V2ZW50X3RpbWVvdXQod2Rldi0+aGlmLnR4X2J1ZmZlcnNfZW1wdHksCiAJCQkJICF3ZGV2
LT5oaWYudHhfYnVmZmVyc191c2VkLApAQCAtNDcsNiArNDgsNyBAQCB2b2lkIHdmeF90eF9mbHVz
aChzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKIAkJd2Rldi0+Y2hpcF9mcm96ZW4gPSAxOwogCX0KIAlt
dXRleF91bmxvY2soJndkZXYtPmhpZl9jbWQubG9jayk7CisJd2Z4X3R4X3VubG9jayh3ZGV2KTsK
IH0KIAogdm9pZCB3ZnhfdHhfbG9ja19mbHVzaChzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
