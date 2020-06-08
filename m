Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A3D1F238E
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jun 2020 01:15:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D228A884A2;
	Mon,  8 Jun 2020 23:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id olbw5Zgvs5Ga; Mon,  8 Jun 2020 23:15:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F60788390;
	Mon,  8 Jun 2020 23:15:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C63A21BF381
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 23:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C3557877B3
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 23:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id luyS28EOPUVk for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 23:15:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65EAC81AE4
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 23:15:36 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 927EA2068D;
 Mon,  8 Jun 2020 23:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658136;
 bh=VTDinPnBrTtWYq9r2jdfYIPmKUtkIW3BFWKhAo5czcM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aVcZRaokaH4XiXkR6gIRcOeyV4iiXskc6LDfjWcRgBghFemcnwgOzcmWaXyP1XFMa
 hdJjAqhgStJ0RKry+IOdkgweXVwYsyFf7XmF+D3zwjxGASaDdq7MHQFTz4vuR4eWjR
 t6I69BPyk09evXCC5ruIV7T1yKLza9zJLu4WtCeo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 170/606] staging: wfx: unlock on error path
Date: Mon,  8 Jun 2020 19:04:55 -0400
Message-Id: <20200608231211.3363633-170-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgoKY29tbWl0IGYw
YjlkODc1ZmFhNDQ5OWFmZTMzODE0MDRjMzc5NWU5ZGE4NGJjMDAgdXBzdHJlYW0uCgpXZSBuZWVk
IHRvIHJlbGVhc2UgdGhlIHR4X2xvY2sgb24gdGhlIGVycm9yIHBhdGggYmVmb3JlIHJldHVybmlu
Zy4KCkZpeGVzOiBkMWMwMTViNGVmNmYgKCJzdGFnaW5nOiB3Zng6IHJld3JpdGUgd2Z4X2h3X3Nj
YW4oKSIpClNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xl
LmNvbT4KQ2M6IHN0YWJsZSA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4KUmV2aWV3ZWQtYnk6IErD
qXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KTGluazogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIwMDUxMjA4MzY1Ni5HQTI1MTc2MEBtd2FuZGEKU2lnbmVk
LW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4K
LS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy93Zngvc2Nhbi5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zY2FuLmMKaW5kZXggNmUxZTUw
MDQ4NjUxLi45YWExNDMzMWFmZmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nh
bi5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5jCkBAIC01Nyw4ICs1NywxMCBAQCBz
dGF0aWMgaW50IHNlbmRfc2Nhbl9yZXEoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJd3ZpZi0+c2Nh
bl9hYm9ydCA9IGZhbHNlOwogCXJlaW5pdF9jb21wbGV0aW9uKCZ3dmlmLT5zY2FuX2NvbXBsZXRl
KTsKIAl0aW1lb3V0ID0gaGlmX3NjYW4od3ZpZiwgcmVxLCBzdGFydF9pZHgsIGkgLSBzdGFydF9p
ZHgpOwotCWlmICh0aW1lb3V0IDwgMCkKKwlpZiAodGltZW91dCA8IDApIHsKKwkJd2Z4X3R4X3Vu
bG9jayh3dmlmLT53ZGV2KTsKIAkJcmV0dXJuIHRpbWVvdXQ7CisJfQogCXJldCA9IHdhaXRfZm9y
X2NvbXBsZXRpb25fdGltZW91dCgmd3ZpZi0+c2Nhbl9jb21wbGV0ZSwgdGltZW91dCk7CiAJaWYg
KHJlcS0+Y2hhbm5lbHNbc3RhcnRfaWR4XS0+bWF4X3Bvd2VyICE9IHd2aWYtPnZpZi0+YnNzX2Nv
bmYudHhwb3dlcikKIAkJaGlmX3NldF9vdXRwdXRfcG93ZXIod3ZpZiwgd3ZpZi0+dmlmLT5ic3Nf
Y29uZi50eHBvd2VyKTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
