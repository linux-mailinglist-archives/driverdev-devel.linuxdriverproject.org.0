Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07402919E4
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 21:21:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6CFC87058;
	Sun, 18 Oct 2020 19:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xidX6+6ebaJc; Sun, 18 Oct 2020 19:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2ECC487045;
	Sun, 18 Oct 2020 19:21:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 571DF1BF568
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 543BC87045
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tggGPYf4D0p8 for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 19:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E136E87048
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 19:21:12 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02BB5222EC;
 Sun, 18 Oct 2020 19:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603048872;
 bh=b3yn/e1fuNGB/nSvT2z3p0aLOFj4I7+dDr6hA0bzlTk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nFqvQq+3xHdd9SHiVKCf/+vGouKLZKylAp+2PWtth4U4ffJ7891PJ6M7/pFUw2Fit
 nuATwOBYkfqx4ZZdLDeASf00LG57jHtIeI6/hTzwpK97TK+XfKrELMFA3q5N++DL1K
 PeKP7qY2u6OClhbdoBtQfclHAxrbu4OnNcKYM/kI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.8 037/101] staging: wfx: fix handling of MMIC error
Date: Sun, 18 Oct 2020 15:19:22 -0400
Message-Id: <20201018192026.4053674-37-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201018192026.4053674-1-sashal@kernel.org>
References: <20201018192026.4053674-1-sashal@kernel.org>
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
cnguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV9yeC5jCmluZGV4IDBlOTU5ZWJjMzhiNTYu
LmE5ZmI1MTY1YjMzZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV9yeC5j
CisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV9yeC5jCkBAIC04MCw3ICs4MCw3IEBAIHZv
aWQgd2Z4X3J4X2NiKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAogCQlnb3RvIGRyb3A7CiAKIAlpZiAo
YXJnLT5zdGF0dXMgPT0gSElGX1NUQVRVU19SWF9GQUlMX01JQykKLQkJaGRyLT5mbGFnIHw9IFJY
X0ZMQUdfTU1JQ19FUlJPUjsKKwkJaGRyLT5mbGFnIHw9IFJYX0ZMQUdfTU1JQ19FUlJPUiB8IFJY
X0ZMQUdfSVZfU1RSSVBQRUQ7CiAJZWxzZSBpZiAoYXJnLT5zdGF0dXMpCiAJCWdvdG8gZHJvcDsK
IAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
