Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D1113E418
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 18:06:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D43486500;
	Thu, 16 Jan 2020 17:06:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zZv-1mQAqd6M; Thu, 16 Jan 2020 17:06:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AAEB864BD;
	Thu, 16 Jan 2020 17:06:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D21BA1BF2B0
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CD04386444
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W_IjIdTSTAeE for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 17:05:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 54FDF86388
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 17:05:59 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 165B2205F4;
 Thu, 16 Jan 2020 17:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194359;
 bh=O658uSSxWwmoGFnHthtFfmzLKgcANu2grOllItCu8B8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=isjkQwNNzSo5oMcVOIK0IC6wIcKBDlZzlTzyYoqKBBy8ZlUdvj2ZboDKyI46OfT2w
 PlPbthE1pIElBsEhrUz8xSJU1hQ3WvkT7us+3TqcudV8zmfEaemYaNz1ERqbujG4S1
 KmN0wvRTA/vQg0+4fHa9KeYxd2W4vpBeH7UIAZZA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 296/671] staging: android: vsoc: fix
 copy_from_user overrun
Date: Thu, 16 Jan 2020 11:58:54 -0500
Message-Id: <20200116170509.12787-33-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
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
 Dan Carpenter <dan.carpenter@oracle.com>,
 =?UTF-8?q?Vincent=20Stehl=C3=A9?= <vincent.stehle@laposte.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogVmluY2VudCBTdGVobMOpIDx2aW5jZW50LnN0ZWhsZUBsYXBvc3RlLm5ldD4KClsgVXBz
dHJlYW0gY29tbWl0IDA2MGVhNDI3MWE4MjI3MGJlNmQ0NGU4ZTlhZWZlOGYxNTVmYjU2MjYgXQoK
VGhlIGBucC0+cGVybWlzc2lvbicgc3RydWN0dXJlIGlzIHNtYWxsZXIgdGhhbiB0aGUgYG5wJyBz
dHJ1Y3R1cmUgYnV0CnNpemVvZigqbnApIHdvcnRoIG9mIGRhdGEgaXMgY29waWVkIGluIHRoZXJl
LiBGaXggdGhlIHNpemUgcGFzc2VkIHRvCmNvcHlfZnJvbV91c2VyKCkgdG8gYXZvaWQgb3ZlcnJ1
bi4KCkZpeGVzOiAzZDJlYzlkY2Q1NTMgKCJzdGFnaW5nOiBBbmRyb2lkOiBBZGQgJ3Zzb2MnIGRy
aXZlciBmb3IgY3V0dGxlZmlzaC4iKQpTaWduZWQtb2ZmLWJ5OiBWaW5jZW50IFN0ZWhsw6kgPHZp
bmNlbnQuc3RlaGxlQGxhcG9zdGUubmV0PgpDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4KUmV2aWV3ZWQtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJw
ZW50ZXJAb3JhY2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVn
a2hAbGludXhmb3VuZGF0aW9uLm9yZz4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hh
bEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL3Zzb2MuYyB8IDMgKyst
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvdnNvYy5jIGIvZHJpdmVycy9zdGFnaW5nL2Fu
ZHJvaWQvdnNvYy5jCmluZGV4IDIyNTcxYWJjYWE0ZS4uMDM0ZDg2ODY5NzcyIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC92c29jLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2Fu
ZHJvaWQvdnNvYy5jCkBAIC0yNjAsNyArMjYwLDggQEAgZG9fY3JlYXRlX2ZkX3Njb3BlZF9wZXJt
aXNzaW9uKHN0cnVjdCB2c29jX2RldmljZV9yZWdpb24gKnJlZ2lvbl9wLAogCWF0b21pY190ICpv
d25lcl9wdHIgPSBOVUxMOwogCXN0cnVjdCB2c29jX2RldmljZV9yZWdpb24gKm1hbmFnZWRfcmVn
aW9uX3A7CiAKLQlpZiAoY29weV9mcm9tX3VzZXIoJm5wLT5wZXJtaXNzaW9uLCAmYXJnLT5wZXJt
LCBzaXplb2YoKm5wKSkgfHwKKwlpZiAoY29weV9mcm9tX3VzZXIoJm5wLT5wZXJtaXNzaW9uLAor
CQkJICAgJmFyZy0+cGVybSwgc2l6ZW9mKG5wLT5wZXJtaXNzaW9uKSkgfHwKIAkgICAgY29weV9m
cm9tX3VzZXIoJm1hbmFnZWRfZmQsCiAJCQkgICAmYXJnLT5tYW5hZ2VkX3JlZ2lvbl9mZCwgc2l6
ZW9mKG1hbmFnZWRfZmQpKSkgewogCQlyZXR1cm4gLUVGQVVMVDsKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
