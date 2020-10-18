Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A22291997
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 21:19:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4063586B38;
	Sun, 18 Oct 2020 19:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zoWuTfXO9txb; Sun, 18 Oct 2020 19:19:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10A6F86B50;
	Sun, 18 Oct 2020 19:18:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 988A31BF568
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 93CD522925
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wqYiGTOkP3+D for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 19:18:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 317C022902
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 19:18:56 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4256F222C8;
 Sun, 18 Oct 2020 19:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603048735;
 bh=lG9xer3NfKmY+nojdAzJLgz+78RX7Lcntov0YOqaR4U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KZ7v1SjpZUwcD6trz99EVs5kT/hhUHoryxDpyxOIoJ6GroPPLMbIfHSdTx4zKV+AB
 GJdUtDDPqR/0H584CU1FvfpLyzj5t7Q23airRv1T9r+R8hSRZ86wc4/ZE2chbBY8hy
 OeymDE7WB1C8vzBLdKfc60MEsqxj+w2stdGI7TCc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.9 039/111] staging: wfx: fix handling of MMIC error
Date: Sun, 18 Oct 2020 15:16:55 -0400
Message-Id: <20201018191807.4052726-39-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201018191807.4052726-1-sashal@kernel.org>
References: <20201018191807.4052726-1-sashal@kernel.org>
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
cHN0cmVhbSBjb21taXQgOGQzNTBjMTRlZTVlYjYyZWNkNDBiMDk5MTI0OGJmYmNlNTExOTU0ZCBd
CgpBcyBleHBlY3RlZCwgd2hlbiB0aGUgZGV2aWNlIGRldGVjdCBhIE1NSUMgZXJyb3IsIGl0IHJl
dHVybnMgYSBzcGVjaWZpYwpzdGF0dXMuIEhvd2V2ZXIsIGl0IGFsc28gc3RyaXAgSVYgZnJvbSB0
aGUgZnJhbWUgKGRvbid0IGFzayBtZSB3aHkpLgoKU28sIHdpdGggdGhlIGN1cnJlbnQgY29kZSwg
bWFjODAyMTEgZGV0ZWN0cyBhIGNvcnJ1cHRlZCBmcmFtZSBhbmQgaXQKZHJvcHMgaXQgYmVmb3Jl
IGl0IGhhbmRsZSB0aGUgTU1JQyBlcnJvci4gVGhlIGV4cGVjdGVkIGJlaGF2aW9yIHdvdWxkIGJl
CnRvIGRldGVjdCBNTUlDIGVycm9yIHRoZW4gdG8gcmVuZWdvdGlhdGUgdGhlIEVBUCBzZXNzaW9u
LgoKU28sIHRoaXMgcGF0Y2ggY29ycmVjdGx5IGluZm9ybXMgbWFjODAyMTEgdGhhdCBJViBpcyBu
b3QgYXZhaWxhYmxlLiBTbywKbWFjODAyMTEgY29ycmVjdGx5IHRha2VzIGludG8gYWNjb3VudCB0
aGUgTU1JQyBlcnJvci4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUu
cG91aWxsZXJAc2lsYWJzLmNvbT4KTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIw
MTAwNzEwMTk0My43NDk4OTgtMi1KZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbQpTaWduZWQtb2Zm
LWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpTaWdu
ZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9z
dGFnaW5nL3dmeC9kYXRhX3J4LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFf
cnguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV9yeC5jCmluZGV4IDZmYjA3ODg4MDc0MjYu
LjgxYzM3ZWMwZjI4MzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV9yeC5j
CisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV9yeC5jCkBAIC00MSw3ICs0MSw3IEBAIHZv
aWQgd2Z4X3J4X2NiKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAogCW1lbXNldChoZHIsIDAsIHNpemVv
ZigqaGRyKSk7CiAKIAlpZiAoYXJnLT5zdGF0dXMgPT0gSElGX1NUQVRVU19SWF9GQUlMX01JQykK
LQkJaGRyLT5mbGFnIHw9IFJYX0ZMQUdfTU1JQ19FUlJPUjsKKwkJaGRyLT5mbGFnIHw9IFJYX0ZM
QUdfTU1JQ19FUlJPUiB8IFJYX0ZMQUdfSVZfU1RSSVBQRUQ7CiAJZWxzZSBpZiAoYXJnLT5zdGF0
dXMpCiAJCWdvdG8gZHJvcDsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
