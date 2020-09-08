Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E72FE260F56
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 12:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E79386928;
	Tue,  8 Sep 2020 10:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lQxo1FzadC_o; Tue,  8 Sep 2020 10:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5320C867A5;
	Tue,  8 Sep 2020 10:12:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0DC1BF286
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3BDCF87277
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 10:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50IENFHX5lMD for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 10:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E56C86864
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 10:12:34 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5ce.dynamic.kabel-deutschland.de
 [95.90.213.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8156321D7B;
 Tue,  8 Sep 2020 10:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599559952;
 bh=0yVg4VB9wLo7/HcSqfX02PS0qyjpPXXI+/tghmjqUsw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e38+G2nCFBUoDUoF+fz5A8o5ijqJDQaNcvCHxYr26na4YykpjN8D/WJrud+bKE1ah
 fwhId2ca83Oz7WvoTX8OcFe8qKZEQSeLqFwWaJMF0uDwC2suV3t2EEcJvvHWTUV+Lv
 7yFg8uXyuQWYa0pEy5v1eCRfL1NdEegkPQtCcGq4=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kFac1-00B3qd-2i; Tue, 08 Sep 2020 12:12:29 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/5] media: atomisp: print a warning if error while setting
 downscaler
Date: Tue,  8 Sep 2020 12:12:23 +0200
Message-Id: <20d420b6ccec9c8013336437781da0f0c7ffabac.1599141140.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599141140.git.mchehab+huawei@kernel.org>
References: <cover.1599141140.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Anant Thazhemadam <anant.thazhemadam@gmail.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 mauro.chehab@huawei.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QXMgd2FybmVkIGJ5IGdjYzoKCiAgICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC8vcGNp
L2lzcC9rZXJuZWxzL2R2cy9kdnNfMS4wL2lhX2Nzc19kdnMuaG9zdC5jOjIzNzozMTogd2Fybmlu
ZzogdmFyaWFibGUg4oCYaXNwX2RhdGFfcHRy4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2Vk
LWJ1dC1zZXQtdmFyaWFibGVdCgppYV9jc3NfdmZfY29uZmlndXJlKCkgbG9naWMgaGFzIGFuIGVy
cm9yIHZhciB0aGF0IGRldGVjdHMgdHJvdWJsZXMKd2hlbiBzZXR0aW5nIHRoZSBrZXJuZWwgZm9y
IGRvd25zY2FsaW5nLiBUaGUgZHJpdmVyIGp1c3QgaWdub3JlcwppdCwgd2l0aG91dCBwcm9kdWNp
bmcgYW55IHdhcm5pbmcuIEFkZCBhdCBsZWFzdCBhIHdhcm5pbmcgbWVzc2FnZQpvbiBzdWNoIGNh
c2VzLgoKU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdl
aUBrZXJuZWwub3JnPgotLS0KIC4uLi9tZWRpYS9hdG9taXNwL3BjaS9pc3Ava2VybmVscy92Zi92
Zl8xLjAvaWFfY3NzX3ZmLmhvc3QuYyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kv
aXNwL2tlcm5lbHMvdmYvdmZfMS4wL2lhX2Nzc192Zi5ob3N0LmMgYi9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvYXRvbWlzcC9wY2kvaXNwL2tlcm5lbHMvdmYvdmZfMS4wL2lhX2Nzc192Zi5ob3N0LmMK
aW5kZXggM2I4NTBiYjJkMzlkLi5kZDM2NzA5NzI5MzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9hdG9taXNwL3BjaS9pc3Ava2VybmVscy92Zi92Zl8xLjAvaWFfY3NzX3ZmLmhv
c3QuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9wY2kvaXNwL2tlcm5lbHMv
dmYvdmZfMS4wL2lhX2Nzc192Zi5ob3N0LmMKQEAgLTEzLDYgKzEzLDggQEAKICAqIG1vcmUgZGV0
YWlscy4KICAqLwogCisjaW5jbHVkZSAiYXRvbWlzcF9pbnRlcm5hbC5oIgorCiAjaW5jbHVkZSAi
aWFfY3NzX3ZmLmhvc3QuaCIKICNpbmNsdWRlIDxhc3NlcnRfc3VwcG9ydC5oPgogI2luY2x1ZGUg
PGlhX2Nzc19lcnIuaD4KQEAgLTEyOSw2ICsxMzEsOSBAQCBpYV9jc3NfdmZfY29uZmlndXJlKAog
CWNvbnN0IHN0cnVjdCBpYV9jc3NfYmluYXJ5X2luZm8gKmluZm8gPSAmYmluYXJ5LT5pbmZvLT5z
cDsKIAogCWVyciA9IGNvbmZpZ3VyZV9rZXJuZWwoaW5mbywgb3V0X2luZm8sIHZmX2luZm8sIGRv
d25zY2FsZV9sb2cyLCAmY29uZmlnKTsKKwlpZiAoZXJyKQorCQlkZXZfd2FybihhdG9taXNwX2Rl
diwgIkNvdWxkbid0IHNldHVwIGRvd25zY2FsZVxuIik7CisKIAljb25maWd1cmVfZG1hKCZjb25m
aWcsIHZmX2luZm8pOwogCiAJaWYgKHZmX2luZm8pCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
