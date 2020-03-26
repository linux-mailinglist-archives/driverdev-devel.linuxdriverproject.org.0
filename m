Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80423194C33
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 00:24:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A2DF88A15;
	Thu, 26 Mar 2020 23:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I4P9VX6VYF-I; Thu, 26 Mar 2020 23:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CC7088A07;
	Thu, 26 Mar 2020 23:24:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84E921BF284
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 23:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8217F203FA
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 23:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6o5U8BQfePOT for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 23:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 023BB20117
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 23:24:04 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E79220774;
 Thu, 26 Mar 2020 23:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585265043;
 bh=sKbjwMLJiBOphC69hyUcwuxnGfiE7NbpZaWocYhiKBI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AZ/H7YMzKQonndCgykCf0nkpaYYAiRtwcTjWHIhsnMtOS1s5JqVP7UPSaytWNr0yc
 +aA7AR7u/Sbc+VFlXJGyrauaCv85MMm5ng3FYSeZxo5gWzDB6dZ2ul0xwm1XRpmnqT
 Cip/uSiprVQH0ob9Y31qSjD1OTkGfoPIhC+FWUVs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 05/28] staging: wfx: fix warning about freeing
 in-use mutex during device unregister
Date: Thu, 26 Mar 2020 19:23:34 -0400
Message-Id: <20200326232357.7516-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326232357.7516-1-sashal@kernel.org>
References: <20200326232357.7516-1-sashal@kernel.org>
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
cHN0cmVhbSBjb21taXQgYmFiMGEwYjAzNDQyYTYyZmUzYWJlZmNiMjE2OWUwYjlmZjk1OTkwYyBd
CgpBZnRlciBoaWZfc2h1dGRvd24oKSwgY29tbXVuaWNhdGlvbiB3aXRoIHRoZSBjaGlwIGlzIG5v
IG1vcmUgcG9zc2libGUuCkl0IHRoZSBvbmx5IHJlcXVlc3QgdGhhdCBuZXZlciByZXBseS4gVGhl
cmVmb3JlLCBoaWZfY21kLmxvY2sgaXMgbmV2ZXIKdW5sb2NrZWQuIGhpZl9zaHV0ZG93bigpIHVu
bG9jayBpdHNlbGYgaGlmX2NtZC5sb2NrIHRvIGF2b2lkIGEgcG90ZW50aWFsCndhcm5pbmcgZHVy
aW5nIGRpc3Bvc2FsIG9mIGRldmljZS4gaGlmX2NtZC5rZXlfcmVuZXdfbG9jayBzaG91bGQgYWxz
bwpiZWVuIHVubG9ja2VkIGZvciB0aGUgc2FtZSByZWFzb24uCgpTaWduZWQtb2ZmLWJ5OiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ckxpbms6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyMDAzMTAxMDEzNTYuMTgyODE4LTItSmVyb21lLlBvdWlsbGVy
QHNpbGFicy5jb20KU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGlu
dXhmb3VuZGF0aW9uLm9yZz4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJu
ZWwub3JnPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmMgfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX3R4LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jCmluZGV4IGNiN2NkZGNiOTgx
NTkuLjE2ZTdkMTkwNDMwZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4
LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguYwpAQCAtMTQxLDYgKzE0MSw3IEBA
IGludCBoaWZfc2h1dGRvd24oc3RydWN0IHdmeF9kZXYgKndkZXYpCiAJZWxzZQogCQljb250cm9s
X3JlZ193cml0ZSh3ZGV2LCAwKTsKIAltdXRleF91bmxvY2soJndkZXYtPmhpZl9jbWQubG9jayk7
CisJbXV0ZXhfdW5sb2NrKCZ3ZGV2LT5oaWZfY21kLmtleV9yZW5ld19sb2NrKTsKIAlrZnJlZSho
aWYpOwogCXJldHVybiByZXQ7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
