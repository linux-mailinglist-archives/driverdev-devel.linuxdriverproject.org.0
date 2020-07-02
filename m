Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCEB2117B3
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 03:23:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3678D89319;
	Thu,  2 Jul 2020 01:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4m_oaeoxPVFM; Thu,  2 Jul 2020 01:23:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABF8A89317;
	Thu,  2 Jul 2020 01:23:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11A591BF2B8
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 01:23:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D15A8A6C9
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 01:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xl3U3a-mrtKG for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 01:23:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA2468A6C0
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 01:23:09 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D06E20748;
 Thu,  2 Jul 2020 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593652989;
 bh=7q/Jn05xenrj87leqnZtfVjiwdpZVJxdfTwBAn5Es/E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Mpv8Pdh5qKQY1vHvvHojHOAeHnbCnDJklZ7eJI7KY6TRz88ubcR+T5KBJ/NMQo1cT
 f4nvIH/9J6i1nUV+XGevKdSJeoZfkijkoRVVonIP9jMEG/s2wmQirzCrOS/lVz4zAA
 gFJBIbxKeKi83Xg+K+JcJBVIPCq3nKmReZXUy3CY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 12/53] staging: wfx: fix coherency of hif_scan()
 prototype
Date: Wed,  1 Jul 2020 21:21:21 -0400
Message-Id: <20200702012202.2700645-12-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200702012202.2700645-1-sashal@kernel.org>
References: <20200702012202.2700645-1-sashal@kernel.org>
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
cHN0cmVhbSBjb21taXQgMjlkZTUyM2E2MjcwYTMwOGQxMmQyMWY0ZmVjZjUyZGFjNDkxZTIyNiBd
CgpUaGUgZnVuY3Rpb24gaGlmX3NjYW4oKSByZXR1cm4gdGhlIHRpbWVvdXQgZm9yIHRoZSBjb21w
bGV0aW9uIG9mIHRoZQpzY2FuIHJlcXVlc3QuIEl0IGlzIHRoZSBvbmx5IGZ1bmN0aW9uIGZyb20g
aGlmX3R4LmMgdGhhdCByZXR1cm4gYW5vdGhlcgp0aGluZyB0aGFuIGp1c3QgYW4gZXJyb3IgY29k
ZS4gVGhpcyBiZWhhdmlvciBpcyBub3QgY29oZXJlbnQgd2l0aCB0aGUKcmVzdCBvZiBmaWxlLiBX
b3JzZSwgaWYgdmFsdWUgcmV0dXJuZWQgaXMgcG9zaXRpdmUsIHRoZSBjYWxsZXIgY2FuJ3QKbWFr
ZSBzYXkgaWYgaXQgaXMgYSB0aW1lb3V0IG9yIHRoZSB2YWx1ZSByZXR1cm5lZCBieSB0aGUgaGFy
ZHdhcmUuCgpVbmlmb3JtaXplIEFQSSB3aXRoIG90aGVyIEhJRiBmdW5jdGlvbnMsIG9ubHkgcmV0
dXJuIHRoZSBlcnJvciBjb2RlIGFuZApwYXNzIHRpbWVvdXQgd2l0aCBwYXJhbWV0ZXJzLgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjAwNTI5MTIxMjU2LjEwNDU1MjEt
MS1KZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbQpTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhh
cnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBM
ZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHgu
YyB8IDYgKysrKy0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5oIHwgMiArLQogZHJpdmVy
cy9zdGFnaW5nL3dmeC9zY2FuLmMgICB8IDYgKysrLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl90eC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguYwppbmRleCAyMGIzMDQ1
ZDc2Njc0Li4xNWZmNjBhNTg0NjY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hp
Zl90eC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmMKQEAgLTIyMiw3ICsyMjIs
NyBAQCBpbnQgaGlmX3dyaXRlX21pYihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IHZpZl9pZCwg
dTE2IG1pYl9pZCwgdm9pZCAqdmFsLAogfQogCiBpbnQgaGlmX3NjYW4oc3RydWN0IHdmeF92aWYg
Knd2aWYsIHN0cnVjdCBjZmc4MDIxMV9zY2FuX3JlcXVlc3QgKnJlcSwKLQkgICAgIGludCBjaGFu
X3N0YXJ0X2lkeCwgaW50IGNoYW5fbnVtKQorCSAgICAgaW50IGNoYW5fc3RhcnRfaWR4LCBpbnQg
Y2hhbl9udW0sIGludCAqdGltZW91dCkKIHsKIAlpbnQgcmV0LCBpOwogCXN0cnVjdCBoaWZfbXNn
ICpoaWY7CkBAIC0yNjksMTEgKzI2OSwxMyBAQCBpbnQgaGlmX3NjYW4oc3RydWN0IHdmeF92aWYg
Knd2aWYsIHN0cnVjdCBjZmc4MDIxMV9zY2FuX3JlcXVlc3QgKnJlcSwKIAl0bW9fY2hhbl9mZyA9
IDUxMiAqIFVTRUNfUEVSX1RVICsgYm9keS0+cHJvYmVfZGVsYXk7CiAJdG1vX2NoYW5fZmcgKj0g
Ym9keS0+bnVtX29mX3Byb2JlX3JlcXVlc3RzOwogCXRtbyA9IGNoYW5fbnVtICogbWF4KHRtb19j
aGFuX2JnLCB0bW9fY2hhbl9mZykgKyA1MTIgKiBVU0VDX1BFUl9UVTsKKwlpZiAodGltZW91dCkK
KwkJKnRpbWVvdXQgPSB1c2Vjc190b19qaWZmaWVzKHRtbyk7CiAKIAl3ZnhfZmlsbF9oZWFkZXIo
aGlmLCB3dmlmLT5pZCwgSElGX1JFUV9JRF9TVEFSVF9TQ0FOLCBidWZfbGVuKTsKIAlyZXQgPSB3
ZnhfY21kX3NlbmQod3ZpZi0+d2RldiwgaGlmLCBOVUxMLCAwLCBmYWxzZSk7CiAJa2ZyZWUoaGlm
KTsKLQlyZXR1cm4gcmV0ID8gcmV0IDogdXNlY3NfdG9famlmZmllcyh0bW8pOworCXJldHVybiBy
ZXQ7CiB9CiAKIGludCBoaWZfc3RvcF9zY2FuKHN0cnVjdCB3ZnhfdmlmICp3dmlmKQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguaCBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX3R4LmgKaW5kZXggZjg1MjBhMTRjMTRjZC4uN2EyMTMzODQ3MGVlYiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hp
Zl90eC5oCkBAIC00Myw3ICs0Myw3IEBAIGludCBoaWZfcmVhZF9taWIoc3RydWN0IHdmeF9kZXYg
KndkZXYsIGludCB2aWZfaWQsIHUxNiBtaWJfaWQsCiBpbnQgaGlmX3dyaXRlX21pYihzdHJ1Y3Qg
d2Z4X2RldiAqd2RldiwgaW50IHZpZl9pZCwgdTE2IG1pYl9pZCwKIAkJICB2b2lkICpidWYsIHNp
emVfdCBidWZfc2l6ZSk7CiBpbnQgaGlmX3NjYW4oc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVj
dCBjZmc4MDIxMV9zY2FuX3JlcXVlc3QgKnJlcTgwMjExLAotCSAgICAgaW50IGNoYW5fc3RhcnQs
IGludCBjaGFuX251bSk7CisJICAgICBpbnQgY2hhbl9zdGFydCwgaW50IGNoYW5fbnVtLCBpbnQg
KnRpbWVvdXQpOwogaW50IGhpZl9zdG9wX3NjYW4oc3RydWN0IHdmeF92aWYgKnd2aWYpOwogaW50
IGhpZl9qb2luKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBjb25zdCBzdHJ1Y3QgaWVlZTgwMjExX2Jz
c19jb25mICpjb25mLAogCSAgICAgc3RydWN0IGllZWU4MDIxMV9jaGFubmVsICpjaGFubmVsLCBj
b25zdCB1OCAqc3NpZCwgaW50IHNzaWRsZW4pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9zY2FuLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uYwppbmRleCA5YWExNDMzMWFm
ZmQ2Li5kNDdiOGEzYmE0MDNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4u
YworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uYwpAQCAtNTYsMTAgKzU2LDEwIEBAIHN0
YXRpYyBpbnQgc2VuZF9zY2FuX3JlcShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKIAl3ZnhfdHhfbG9j
a19mbHVzaCh3dmlmLT53ZGV2KTsKIAl3dmlmLT5zY2FuX2Fib3J0ID0gZmFsc2U7CiAJcmVpbml0
X2NvbXBsZXRpb24oJnd2aWYtPnNjYW5fY29tcGxldGUpOwotCXRpbWVvdXQgPSBoaWZfc2Nhbih3
dmlmLCByZXEsIHN0YXJ0X2lkeCwgaSAtIHN0YXJ0X2lkeCk7Ci0JaWYgKHRpbWVvdXQgPCAwKSB7
CisJcmV0ID0gaGlmX3NjYW4od3ZpZiwgcmVxLCBzdGFydF9pZHgsIGkgLSBzdGFydF9pZHgsICZ0
aW1lb3V0KTsKKwlpZiAocmV0KSB7CiAJCXdmeF90eF91bmxvY2sod3ZpZi0+d2Rldik7Ci0JCXJl
dHVybiB0aW1lb3V0OworCQlyZXR1cm4gLUVJTzsKIAl9CiAJcmV0ID0gd2FpdF9mb3JfY29tcGxl
dGlvbl90aW1lb3V0KCZ3dmlmLT5zY2FuX2NvbXBsZXRlLCB0aW1lb3V0KTsKIAlpZiAocmVxLT5j
aGFubmVsc1tzdGFydF9pZHhdLT5tYXhfcG93ZXIgIT0gd3ZpZi0+dmlmLT5ic3NfY29uZi50eHBv
d2VyKQotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
