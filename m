Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9C31FDB43
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 03:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27DAD86CF5;
	Thu, 18 Jun 2020 01:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nr2aI1q8OZQw; Thu, 18 Jun 2020 01:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13B4186C37;
	Thu, 18 Jun 2020 01:11:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1F6F1BF31F
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AEABC86C37
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lqUVxW9Qk-DD for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 01:11:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48D0386C11
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 01:11:16 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71C5C21924;
 Thu, 18 Jun 2020 01:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442676;
 bh=xC3ut97fD0MLy+ms/mdfMJmo3sbdH9ILWuWNS4B9O7c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WleStMkcanoz3earSaN8IuNkZTyFu60xn9H0akxxLdKXDPOGHnffoS1NCmqFkCE83
 8IictTTZ5wH0BfCUK92TgtjeSPCFUDtcWBfBNlwMb/gAh121/54th0XYRnRXUmpd5L
 b76epCNtZwGnXDjbIkLS9Sbe8+kak8YsPMMRj0V0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 144/388] staging: wfx: fix overflow in frame
 counters
Date: Wed, 17 Jun 2020 21:04:01 -0400
Message-Id: <20200618010805.600873-144-sashal@kernel.org>
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
cHN0cmVhbSBjb21taXQgODcwNjYxNzNlMzRiMGNhNWQwNDFkNTUxOWU2YmIwMzBiMTk1ODE4NCBd
CgpJdCBoYXMgYmVlbiByZXBvcnRlZCB0aGF0IHRyeWluZyB0byBzZW5kIHNtYWxsIHBhY2tldHMg
b2YgZGF0YSBjb3VsZApwcm9kdWNlIGEgImluY29uc2lzdGVudCBub3RpZmljYXRpb24iIHdhcm5p
bmcuCgpJdCBzZWVtcyB0aGF0IGluIHNvbWUgY2lyY3Vtc3RhbmNlcywgdGhlIG51bWJlciBvZiBm
cmFtZSBxdWV1ZWQgaW4gdGhlCmRyaXZlciBjb3VsZCBncmVhdGx5IGluY3JlYXNlIGFuZCBleGNl
ZWQgVUNIQVJfTUFYLiBTbyB0aGUgZmllbGQKImJ1ZmZlcmVkIiBmcm9tIHN0cnVjdCBzdGFfcHJp
diBjYW4gb3ZlcmZsb3cuCgpKdXN0IGluY3JlYXNlIHRoZSBzaXplIG9mICJidWVmZmVyZWQiIHRv
IGZpeCB0aGUgcHJvYmxlbS4KCkZpeGVzOiA3ZDJkMmJmZGViODIgKCJzdGFnaW5nOiB3Zng6IHJl
bG9jYXRlICJidWZmZXJlZCIgaW5mb3JtYXRpb24gdG8gc3RhX3ByaXYiKQpTaWduZWQtb2ZmLWJ5
OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ckxpbms6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMDA0MjcxMzQwMzEuMzIzNDAzLTEwLUplcm9tZS5Q
b3VpbGxlckBzaWxhYnMuY29tClNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNo
YWxAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5oIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaCBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmgKaW5k
ZXggY2Y5OWE4YTc0YTgxLi5hY2U4NDVmOWVkMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy93Zngvc3RhLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaApAQCAtMzcsNyArMzcs
NyBAQCBzdHJ1Y3Qgd2Z4X2dycF9hZGRyX3RhYmxlIHsKIHN0cnVjdCB3Znhfc3RhX3ByaXYgewog
CWludCBsaW5rX2lkOwogCWludCB2aWZfaWQ7Ci0JdTggYnVmZmVyZWRbSUVFRTgwMjExX05VTV9U
SURTXTsKKwlpbnQgYnVmZmVyZWRbSUVFRTgwMjExX05VTV9USURTXTsKIAkvLyBFbnN1cmUgYXRv
bWljaXR5IG9mICJidWZmZXJlZCIgYW5kIGNhbGxzIHRvIGllZWU4MDIxMV9zdGFfc2V0X2J1ZmZl
cmVkKCkKIAlzcGlubG9ja190IGxvY2s7CiB9OwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
