Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6231FDAC6
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 03:08:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89AB98873F;
	Thu, 18 Jun 2020 01:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EsXQcEu86F6i; Thu, 18 Jun 2020 01:08:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C005B88734;
	Thu, 18 Jun 2020 01:08:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CDF51BF31F
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9176E203BE
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k+bvWZ9SeoZQ for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 01:08:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 157C22036C
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 01:08:22 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DD6F2193E;
 Thu, 18 Jun 2020 01:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442501;
 bh=lmz8b9o30HBzXmdnXtTw1XQwTxgBU8r+b8UEb1BATFQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wsQjMEevk+xWXObSz7E5Ho+8PoIMprHa2DsAQ1yhhfvhxduwmhhshUglzOOqmvAjJ
 yOFWi/qZ8yg7bJx4oPnFVp9PwHa3dNu6p1e+RomUp+7lNAPHP0miW8QZy3SlRUFVV4
 PUd7zU6qzPlirR9gf8aQJyTuW+nYm1kNcyn6SRMk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 012/388] staging: wfx: check ssidlen and prevent
 an array overflow
Date: Wed, 17 Jun 2020 21:01:49 -0400
Message-Id: <20200618010805.600873-12-sashal@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgoKWyBVcHN0cmVh
bSBjb21taXQgODdmODZjZGRkYTY1Y2FiOGE3ZTNkZjhhMDBlMTZhYmVjY2FhMDczMCBdCgpXZSBu
ZWVkIHRvIGNhcCAic3NpZGxlbiIgdG8gcHJldmVudCBhIG1lbWNweSgpIG92ZXJmbG93LgoKRml4
ZXM6IDQwMTE1YmJjNDBlMiAoInN0YWdpbmc6IHdmeDogaW1wbGVtZW50IHRoZSByZXN0IG9mIG1h
YzgwMjExIEFQSSIpClNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJA
b3JhY2xlLmNvbT4KUmV2aWV3ZWQtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxs
ZXJAc2lsYWJzLmNvbT4KTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIwMDQyNDEw
NDIzNS5HQTQxNjQwMkBtd2FuZGEKU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxn
cmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNh
c2hhbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgfCA0ICsrKy0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEu
YwppbmRleCA5ZDQzMDM0NmE1OGIuLjk2OWQ3YTRhN2ZiZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9z
dGFnaW5nL3dmeC9zdGEuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCkBAIC01MjAs
NyArNTIwLDkgQEAgc3RhdGljIHZvaWQgd2Z4X2RvX2pvaW4oc3RydWN0IHdmeF92aWYgKnd2aWYp
CiAJCXNzaWRpZSA9IGllZWU4MDIxMV9ic3NfZ2V0X2llKGJzcywgV0xBTl9FSURfU1NJRCk7CiAJ
aWYgKHNzaWRpZSkgewogCQlzc2lkbGVuID0gc3NpZGllWzFdOwotCQltZW1jcHkoc3NpZCwgJnNz
aWRpZVsyXSwgc3NpZGllWzFdKTsKKwkJaWYgKHNzaWRsZW4gPiBJRUVFODAyMTFfTUFYX1NTSURf
TEVOKQorCQkJc3NpZGxlbiA9IElFRUU4MDIxMV9NQVhfU1NJRF9MRU47CisJCW1lbWNweShzc2lk
LCAmc3NpZGllWzJdLCBzc2lkbGVuKTsKIAl9CiAJcmN1X3JlYWRfdW5sb2NrKCk7CiAKLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
