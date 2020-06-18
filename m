Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63711FDB48
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 03:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8EF968834C;
	Thu, 18 Jun 2020 01:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VOE81b0JBLL7; Thu, 18 Jun 2020 01:11:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A33E8810B;
	Thu, 18 Jun 2020 01:11:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DCB621BF31F
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D9C8988007
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:11:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ZVZ80i8TJsW for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 01:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6762F87E76
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 01:11:17 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92C4F221EA;
 Thu, 18 Jun 2020 01:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442677;
 bh=/K41qGCOksYUWpJHCUej+cRAGtzlKjR6qaDmvAdcVdA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YQGX1gns+BFm8e+yPfaJH+SlQ1RzaQ6NJWKjdU6BLmdyGQV8/YkMYByBAvDVo8Yvu
 zGsKrUairgqWLsvbawh3SsnI2DVQ1960teXzGb6n4DAuOP5msQiJFfS4VTLA9sK8ry
 0Ur5pXS4GnvIFYXnY1dYkGvl/+HTm50f2XQu/7rk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 145/388] staging: wfx: fix double init of
 tx_policy_upload_work
Date: Wed, 17 Jun 2020 21:04:02 -0400
Message-Id: <20200618010805.600873-145-sashal@kernel.org>
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
cHN0cmVhbSBjb21taXQgNmFlMDg3OGI0ODAwYzcwNDJkMzVjMGZiNGM2YmFhYmI2MjYyMWVjYyBd
CgpUaGUgd29ya19zdHJ1Y3QgdHhfcG9saWN5X3VwbG9hZF93b3JrIHdhcyBpbml0aWFsaXplZCB0
d2ljZS4KCkZpeGVzOiA5OTg3OTEyMWJmYmIgKCJzdGFnaW5nOiB3Zng6IGZpeCB0aGUgY2FjaGUg
b2YgcmF0ZSBwb2xpY2llcyBvbiBpbnRlcmZhY2UgcmVzZXQiKQpTaWduZWQtb2ZmLWJ5OiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ckxpbms6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyMDA0MjcxMzQwMzEuMzIzNDAzLTEyLUplcm9tZS5Qb3VpbGxl
ckBzaWxhYnMuY29tClNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxp
bnV4Zm91bmRhdGlvbi5vcmc+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2Vy
bmVsLm9yZz4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIHwgMSAtCiAxIGZpbGUgY2hh
bmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3Rh
LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCmluZGV4IDk2OWQ3YTRhN2ZiZC4uYjRjZDdj
YjFjZTU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy93Zngvc3RhLmMKQEAgLTEwNDksNyArMTA0OSw2IEBAIGludCB3ZnhfYWRkX2lu
dGVyZmFjZShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZp
ZikKIAlpbml0X2NvbXBsZXRpb24oJnd2aWYtPnNjYW5fY29tcGxldGUpOwogCUlOSVRfV09SSygm
d3ZpZi0+c2Nhbl93b3JrLCB3ZnhfaHdfc2Nhbl93b3JrKTsKIAotCUlOSVRfV09SSygmd3ZpZi0+
dHhfcG9saWN5X3VwbG9hZF93b3JrLCB3ZnhfdHhfcG9saWN5X3VwbG9hZF93b3JrKTsKIAltdXRl
eF91bmxvY2soJndkZXYtPmNvbmZfbXV0ZXgpOwogCiAJaGlmX3NldF9tYWNhZGRyKHd2aWYsIHZp
Zi0+YWRkcik7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
