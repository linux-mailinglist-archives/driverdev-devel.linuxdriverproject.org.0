Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB94A239C
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 20:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A6A4892A4;
	Thu, 29 Aug 2019 18:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qjW0-Z1FiWHu; Thu, 29 Aug 2019 18:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC1E388876;
	Thu, 29 Aug 2019 18:17:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B8501BF34C
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 18:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 87F80871A7
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 18:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntsJHJi0e1ly for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 18:17:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7A1DE87065
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 18:17:56 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA422233FF;
 Thu, 29 Aug 2019 18:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567102676;
 bh=Wja6VqfCilwc3YHL7O41vyxi8Rnh2cRte0lRT6l2i8I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VJiRZXXFNPWxKPtz2J15XIRBu7xUWm8ZS8gh0tOMu3c0MJNrA6koKQC+CvFOR6MWj
 VnYj3ZjCsCOtzsfBAvH22LEmMRDp/ZUStOagrL204DCVamsB7y8gxRvHUR9VqHvses
 QZpZfQEj0fmz6XCQheJVnlmXI5D+IHT24ivIfjjY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 12/16] Tools: hv: kvp: eliminate 'may be used
 uninitialized' warning
Date: Thu, 29 Aug 2019 14:17:30 -0400
Message-Id: <20190829181736.9040-12-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190829181736.9040-1-sashal@kernel.org>
References: <20190829181736.9040-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@linuxdriverproject.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogVml0YWx5IEt1em5ldHNvdiA8dmt1em5ldHNAcmVkaGF0LmNvbT4KClsgVXBzdHJlYW0g
Y29tbWl0IDg5ZWI0ZDhkMjU3MjJhMGEwMTk0Y2Y3ZmE0N2JhNjAyZTMyYTZkYTcgXQoKV2hlbiBi
dWlsZGluZyBodl9rdnBfZGFlbW9uIEdDQy04LjMgY29tcGxhaW5zOgoKaHZfa3ZwX2RhZW1vbi5j
OiBJbiBmdW5jdGlvbiDigJhrdnBfZ2V0X2lwX2luZm8uY29uc3Rwcm9w4oCZOgpodl9rdnBfZGFl
bW9uLmM6ODEyOjMwOiB3YXJuaW5nOiDigJhpcF9idWZmZXLigJkgbWF5IGJlIHVzZWQgdW5pbml0
aWFsaXplZCBpbiB0aGlzIGZ1bmN0aW9uIFstV21heWJlLXVuaW5pdGlhbGl6ZWRdCiAgc3RydWN0
IGh2X2t2cF9pcGFkZHJfdmFsdWUgKmlwX2J1ZmZlcjsKCnRoaXMgc2VlbXMgdG8gYmUgYSBmYWxz
ZSBwb3NpdGl2ZTogd2Ugb25seSB1c2UgaXBfYnVmZmVyIHdoZW4Kb3AgPT0gS1ZQX09QX0dFVF9J
UF9JTkZPIGFuZCBpdCBpcyBvbmx5IHVuc2V0IHdoZW4gb3AgPT0gS1ZQX09QX0VOVU1FUkFURS4K
ClNpbGVuY2UgdGhlIHdhcm5pbmcgYnkgaW5pdGlhbGl6aW5nIGlwX2J1ZmZlciB0byBOVUxMLgoK
U2lnbmVkLW9mZi1ieTogVml0YWx5IEt1em5ldHNvdiA8dmt1em5ldHNAcmVkaGF0LmNvbT4KU2ln
bmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIHRvb2xzL2h2
L2h2X2t2cF9kYWVtb24uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rvb2xzL2h2L2h2X2t2cF9kYWVtb24uYyBiL3Rv
b2xzL2h2L2h2X2t2cF9kYWVtb24uYwppbmRleCAxNzc0ODAwNjY4MTY4Li5hM2FjMjgzYTk4NWFl
IDEwMDY0NAotLS0gYS90b29scy9odi9odl9rdnBfZGFlbW9uLmMKKysrIGIvdG9vbHMvaHYvaHZf
a3ZwX2RhZW1vbi5jCkBAIC04NzgsNyArODc4LDcgQEAga3ZwX2dldF9pcF9pbmZvKGludCBmYW1p
bHksIGNoYXIgKmlmX25hbWUsIGludCBvcCwKIAlpbnQgc25fb2Zmc2V0ID0gMDsKIAlpbnQgZXJy
b3IgPSAwOwogCWNoYXIgKmJ1ZmZlcjsKLQlzdHJ1Y3QgaHZfa3ZwX2lwYWRkcl92YWx1ZSAqaXBf
YnVmZmVyOworCXN0cnVjdCBodl9rdnBfaXBhZGRyX3ZhbHVlICppcF9idWZmZXIgPSBOVUxMOwog
CWNoYXIgY2lkcl9tYXNrWzVdOyAvKiAveHl6ICovCiAJaW50IHdlaWdodDsKIAlpbnQgaTsKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
