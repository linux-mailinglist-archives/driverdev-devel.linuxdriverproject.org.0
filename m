Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BC41FDADE
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 03:09:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF0DC887CC;
	Thu, 18 Jun 2020 01:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7cAd81poXMdS; Thu, 18 Jun 2020 01:09:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5001788734;
	Thu, 18 Jun 2020 01:09:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 639661BF31F
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 603CF88748
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6E2OR+GB9PSu for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 01:08:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E8CE188720
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 01:08:58 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17E8C2193E;
 Thu, 18 Jun 2020 01:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442538;
 bh=4cd6BES8OaJlVZsooW8Dw++aKDGtzg3B1yFFQ+/V6Yw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hWuonSC02zvoFYxgWT/gNsj8TYy4qXAE2CZl/HV7W/eJATkSkdNmWCe58QTq4oxDz
 Ou61peyBMyD4bm5BzW5qKn5+CA+OAkHMi9hagbwGPLWE4h1p0fxoYKKS9zIXrMt1nb
 aXZFRPhr69tCVvkdco8BJKEe/5VT+BJ7hC1m2ygE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 040/388] staging: wfx: fix output of rx_stats on
 big endian hosts
Date: Wed, 17 Jun 2020 21:02:17 -0400
Message-Id: <20200618010805.600873-40-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKWyBV
cHN0cmVhbSBjb21taXQgYTgyM2Q2ZWNkNDkwNGUxYTZmZmIxMjk2NGRlODhmYjBiYjQ4MDJmNiBd
CgpUaGUgc3RydWN0IGhpZl9yeF9zdGF0cyBjb250YWlucyBvbmx5IGxpdHRsZSBlbmRpYW4gdmFs
dWVzLiBUaHVzLCBpdCBpcwpuZWNlc3NhcnkgdG8gZml4IGJ5dGUgb3JkZXJpbmcgYmVmb3JlIHRv
IHVzZSB0aGVtLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3Vp
bGxlckBzaWxhYnMuY29tPgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjAwNTEy
MTUwNDE0LjI2NzE5OC02LUplcm9tZS5Qb3VpbGxlckBzaWxhYnMuY29tClNpZ25lZC1vZmYtYnk6
IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+ClNpZ25lZC1v
ZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvd2Z4L2RlYnVnLmMgfCAxMSArKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2RlYnVnLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVnLmMKaW5kZXggMTE2NGFiYTExOGEx
Li5hNzNiNWJiYjU3OGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGVidWcuYwor
KysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVnLmMKQEAgLTE0Miw3ICsxNDIsNyBAQCBzdGF0
aWMgaW50IHdmeF9yeF9zdGF0c19zaG93KHN0cnVjdCBzZXFfZmlsZSAqc2VxLCB2b2lkICp2KQog
CW11dGV4X2xvY2soJndkZXYtPnJ4X3N0YXRzX2xvY2spOwogCXNlcV9wcmludGYoc2VxLCAiVGlt
ZXN0YW1wOiAlZHVzXG4iLCBzdC0+ZGF0ZSk7CiAJc2VxX3ByaW50ZihzZXEsICJMb3cgcG93ZXIg
Y2xvY2s6IGZyZXF1ZW5jeSAldUh6LCBleHRlcm5hbCAlc1xuIiwKLQkJICAgc3QtPnB3cl9jbGtf
ZnJlcSwKKwkJICAgbGUzMl90b19jcHUoc3QtPnB3cl9jbGtfZnJlcSksCiAJCSAgIHN0LT5pc19l
eHRfcHdyX2NsayA/ICJ5ZXMiIDogIm5vIik7CiAJc2VxX3ByaW50ZihzZXEsCiAJCSAgICJOdW0u
IG9mIGZyYW1lczogJWQsIFBFUiAoeDEwZTQpOiAlZCwgVGhyb3VnaHB1dDogJWRLYnBzL3NcbiIs
CkBAIC0xNTIsOSArMTUyLDEyIEBAIHN0YXRpYyBpbnQgd2Z4X3J4X3N0YXRzX3Nob3coc3RydWN0
IHNlcV9maWxlICpzZXEsIHZvaWQgKnYpCiAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY2hh
bm5lbF9uYW1lcyk7IGkrKykgewogCQlpZiAoY2hhbm5lbF9uYW1lc1tpXSkKIAkJCXNlcV9wcmlu
dGYoc2VxLCAiJTVzICU4ZCAlOGQgJThkICU4ZCAlOGRcbiIsCi0JCQkJICAgY2hhbm5lbF9uYW1l
c1tpXSwgc3QtPm5iX3J4X2J5X3JhdGVbaV0sCi0JCQkJICAgc3QtPnBlcltpXSwgc3QtPnJzc2lb
aV0gLyAxMDAsCi0JCQkJICAgc3QtPnNucltpXSAvIDEwMCwgc3QtPmNmb1tpXSk7CisJCQkJICAg
Y2hhbm5lbF9uYW1lc1tpXSwKKwkJCQkgICBsZTMyX3RvX2NwdShzdC0+bmJfcnhfYnlfcmF0ZVtp
XSksCisJCQkJICAgbGUxNl90b19jcHUoc3QtPnBlcltpXSksCisJCQkJICAgKHMxNilsZTE2X3Rv
X2NwdShzdC0+cnNzaVtpXSkgLyAxMDAsCisJCQkJICAgKHMxNilsZTE2X3RvX2NwdShzdC0+c25y
W2ldKSAvIDEwMCwKKwkJCQkgICAoczE2KWxlMTZfdG9fY3B1KHN0LT5jZm9baV0pKTsKIAl9CiAJ
bXV0ZXhfdW5sb2NrKCZ3ZGV2LT5yeF9zdGF0c19sb2NrKTsKIAotLSAKMi4yNS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
