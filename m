Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC8215DD12
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Feb 2020 16:57:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F46C87669;
	Fri, 14 Feb 2020 15:57:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvGnUbyQ0XPj; Fri, 14 Feb 2020 15:57:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57344875EE;
	Fri, 14 Feb 2020 15:57:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 529811BF3FE
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 15:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F4BE866C8
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 15:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YDVPlqyfhQkW for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 15:57:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA17685450
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 15:57:21 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15DDE2467B;
 Fri, 14 Feb 2020 15:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695841;
 bh=ArAV1wIJAw8GbPbESMsY8CMZNSZCkxxKmAv4655zdek=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eG3K5O1QRb9LqtiWA11UlTkIId5VdxfRm3NlQf4F1h9UlGCduSWrM7qYZLiHpJB63
 gvbpa2fC9+HgO0ZB5oQX3Yn97vU+6OhEhxKRQB+jyaEPIH7TDMP3eBS0cMhq2vcL5U
 88k004Z4CpjXCLCVu9aTNjzt0A3IVMUsR6lIBj/w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 392/542] staging: wfx: fix possible overflow on
 jiffies comparaison
Date: Fri, 14 Feb 2020 10:46:24 -0500
Message-Id: <20200214154854.6746-392-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
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
cHN0cmVhbSBjb21taXQgZGVmMzliZTAxOWI2NDk0YWNkMzU3MGNlNmYzZjExYmExYzMyMDNhMyBd
CgpNSU1FLVZlcnNpb246IDEuMApDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9VVRG
LTgKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdAoKSXQgaXMgcmVjb21tZW5kZWQgdG8g
dXNlIGZ1bmN0aW9uIHRpbWVfKigpIHRvIGNvbXBhcmUgamlmZmllcy4KClNpZ25lZC1vZmYtYnk6
IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KTGluazogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIwMDExNTEzNTMzOC4xNDM3NC00NS1KZXJvbWUuUG91
aWxsZXJAc2lsYWJzLmNvbQpTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFs
QGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgfCAxNCArKysr
Ky0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyBiL2RyaXZlcnMv
c3RhZ2luZy93ZngvZGF0YV90eC5jCmluZGV4IGIxM2Q3MzQxZjhiYmEuLjBjNmEzYTFhMWRkZmQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCisrKyBiL2RyaXZlcnMv
c3RhZ2luZy93ZngvZGF0YV90eC5jCkBAIC0yODIsOCArMjgyLDcgQEAgdm9pZCB3ZnhfdHhfcG9s
aWN5X2luaXQoc3RydWN0IHdmeF92aWYgKnd2aWYpCiBzdGF0aWMgaW50IHdmeF9hbGxvY19saW5r
X2lkKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBjb25zdCB1OCAqbWFjKQogewogCWludCBpLCByZXQg
PSAwOwotCXVuc2lnbmVkIGxvbmcgbWF4X2luYWN0aXZpdHkgPSAwOwotCXVuc2lnbmVkIGxvbmcg
bm93ID0gamlmZmllczsKKwl1bnNpZ25lZCBsb25nIG9sZGVzdDsKIAogCXNwaW5fbG9ja19iaCgm
d3ZpZi0+cHNfc3RhdGVfbG9jayk7CiAJZm9yIChpID0gMDsgaSA8IFdGWF9NQVhfU1RBX0lOX0FQ
X01PREU7ICsraSkgewpAQCAtMjkyLDEzICsyOTEsMTAgQEAgc3RhdGljIGludCB3ZnhfYWxsb2Nf
bGlua19pZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29uc3QgdTggKm1hYykKIAkJCWJyZWFrOwog
CQl9IGVsc2UgaWYgKHd2aWYtPmxpbmtfaWRfZGJbaV0uc3RhdHVzICE9IFdGWF9MSU5LX0hBUkQg
JiYKIAkJCSAgICF3dmlmLT53ZGV2LT50eF9xdWV1ZV9zdGF0cy5saW5rX21hcF9jYWNoZVtpICsg
MV0pIHsKLQkJCXVuc2lnbmVkIGxvbmcgaW5hY3Rpdml0eSA9Ci0JCQkJbm93IC0gd3ZpZi0+bGlu
a19pZF9kYltpXS50aW1lc3RhbXA7Ci0KLQkJCWlmIChpbmFjdGl2aXR5IDwgbWF4X2luYWN0aXZp
dHkpCi0JCQkJY29udGludWU7Ci0JCQltYXhfaW5hY3Rpdml0eSA9IGluYWN0aXZpdHk7Ci0JCQly
ZXQgPSBpICsgMTsKKwkJCWlmICghcmV0IHx8IHRpbWVfYWZ0ZXIob2xkZXN0LCB3dmlmLT5saW5r
X2lkX2RiW2ldLnRpbWVzdGFtcCkpIHsKKwkJCQlvbGRlc3QgPSB3dmlmLT5saW5rX2lkX2RiW2ld
LnRpbWVzdGFtcDsKKwkJCQlyZXQgPSBpICsgMTsKKwkJCX0KIAkJfQogCX0KIAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
