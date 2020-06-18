Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD121FDB5A
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 03:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9AFF22151E;
	Thu, 18 Jun 2020 01:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gd4hIN2VxMXy; Thu, 18 Jun 2020 01:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C7C5B20421;
	Thu, 18 Jun 2020 01:12:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3A2B1BF31F
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB86A203E1
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aRGvPuXvnS8k for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 01:12:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BE1A1203BE
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 01:12:37 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA23821D7E;
 Thu, 18 Jun 2020 01:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442757;
 bh=M1hVbQ7i/J2XTsiWDNvRlGMXFXUI4kXywYgjYJSwY5g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Lv4lH28CQmy4SodXHP66Pu5LCbnA72EFUEq3G6xqo2N8+M8BwwQBnyxefr0JDD7J8
 11KZSDZehuB6kPOSAl9duhMz3zOZPgwjRj0geNF446PYGNAPlu9ORH7vVUTavSs5sy
 e5tkTn5rkv7duyj4e7aImoYl4aT5TYCrt0dV+PUg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 208/388] staging: wfx: fix value of scan timeout
Date: Wed, 17 Jun 2020 21:05:05 -0400
Message-Id: <20200618010805.600873-208-sashal@kernel.org>
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
cHN0cmVhbSBjb21taXQgNjU5OGIxMmQ2NjM1ZThlMzA2MDg2M2I4NGMwNGU0NzI1NDZlZTEyNiBd
CgpCZWZvcmUgdG8gc3RhcnQgdGhlIHNjYW4gcmVxdWVzdCwgdGhlIGZpcm13YXJlIHNpZ25hbHMg
KHdpdGggYSBudWxsCmZyYW1lKSB0byB0aGUgQVAgaXQgd29uJ3QgYmUgYWJsZSB0byByZWNlaXZl
IGRhdGEuIFRoaXMgZnJhbWUgY2FuIGJlCmxvbmcgdG8gc2VuZDogdXAgdG8gNTEyVFUuIFRoZSBj
dXJyZW50IGNhbGN1bHVzIG9mIHRoZSBzY2FuIHRpbWVvdXQgZG9lcwpub3QgdGFrZSBpbnRvIGFj
Y291bnQgdGhpcyBkZWxheS4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJv
bWUucG91aWxsZXJAc2lsYWJzLmNvbT4KTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8y
MDIwMDUxNTA4MzMyNS4zNzg1MzktNS1KZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbQpTaWduZWQt
b2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpT
aWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVy
cy9zdGFnaW5nL3dmeC9oaWZfdHguYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlm
X3R4LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jCmluZGV4IDc3YmNhNDNhY2E0Mi4u
MjBiMzA0NWQ3NjY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmMKQEAgLTI2OCw3ICsyNjgsNyBAQCBpbnQg
aGlmX3NjYW4oc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBjZmc4MDIxMV9zY2FuX3JlcXVl
c3QgKnJlcSwKIAl0bW9fY2hhbl9iZyA9IGxlMzJfdG9fY3B1KGJvZHktPm1heF9jaGFubmVsX3Rp
bWUpICogVVNFQ19QRVJfVFU7CiAJdG1vX2NoYW5fZmcgPSA1MTIgKiBVU0VDX1BFUl9UVSArIGJv
ZHktPnByb2JlX2RlbGF5OwogCXRtb19jaGFuX2ZnICo9IGJvZHktPm51bV9vZl9wcm9iZV9yZXF1
ZXN0czsKLQl0bW8gPSBjaGFuX251bSAqIG1heCh0bW9fY2hhbl9iZywgdG1vX2NoYW5fZmcpOwor
CXRtbyA9IGNoYW5fbnVtICogbWF4KHRtb19jaGFuX2JnLCB0bW9fY2hhbl9mZykgKyA1MTIgKiBV
U0VDX1BFUl9UVTsKIAogCXdmeF9maWxsX2hlYWRlcihoaWYsIHd2aWYtPmlkLCBISUZfUkVRX0lE
X1NUQVJUX1NDQU4sIGJ1Zl9sZW4pOwogCXJldCA9IHdmeF9jbWRfc2VuZCh3dmlmLT53ZGV2LCBo
aWYsIE5VTEwsIDAsIGZhbHNlKTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
