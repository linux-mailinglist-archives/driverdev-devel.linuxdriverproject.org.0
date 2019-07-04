Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 025CC5F293
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 08:08:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 198FD220DA;
	Thu,  4 Jul 2019 06:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YvObC5UIv+65; Thu,  4 Jul 2019 06:08:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B4E32202E;
	Thu,  4 Jul 2019 06:08:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16D781BF340
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 06:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 13DB784483
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 06:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nqQJJLMCYZC for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 06:08:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 90DBB843DB
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 06:08:22 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id t28so4883077lje.9
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 23:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zBhlBYpTN4I+Zp3YmG9RRV1m1SjWxog8Cy7vjAlL+k4=;
 b=xqZPpE+PwgVA2s54GRPeMXBj0Un5a7zwD9U9yhlxaRiHZ4cW2L+ecAEfyhbaqKd9cE
 E2DZrQSuCJ11SbBLxYR656cPgbZbDh4U+2i02YKZHPwfx8TBfkZlR1BYqAKIoVcF5dlB
 oRsFcN0v3VJH2aOOhW3K56vk81mOTmYiz/plNpbSLnlkg4IFFL6HvzbJ3qg8j5wndkVC
 H0DiJtG+vRHzouYWJY+Qc7p1utZgrlhKNhsXw1+36ztEOUi3h/dFdHZCUsalAjbTIfPh
 o2GOItYjSQ7+f73xDnRuVpJyVi+guPIx9OC1EfJsNZjnd3Af/Qs0fP2GxBap75A3Vydb
 kBJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zBhlBYpTN4I+Zp3YmG9RRV1m1SjWxog8Cy7vjAlL+k4=;
 b=jS1cJhtWqHJIg3Z5GtQDKLGtvakPzukKr2pDg7SUXWMnxFSr/xH+Fe4O/lwgV2K8tN
 smB+faofh4dg4JQtnmraTxU72qdV2zrMP+lY8/4uJI5TL9EkaKEhQL2tm4SKYhTaYxcN
 Z7pekOYGV3ipFSIrG+aoGNXK+oCR8oatUL8J6/rzJwzJ1fGsFyTO0nI8b4kANAmX4uk4
 jDH3/E67PxALTeAqlFZPBffsLxNdL3XwTUNICKohxthHoeeeUzGYsTX5EnXAea4PSWjY
 plozFgr3wOX/JmbFwXYJBOBLrBJTO8p8Mn/SAGN6/MKyqgPpifMbA3deydw6lk6kED+Q
 JYXg==
X-Gm-Message-State: APjAAAX59hK7HGdfjnw1Xz2e3Klrh67AynhvZ/wuO1gKmvkgzr01NgWk
 zkXRCcT5kQXEUx8VBL0dFFGMmg==
X-Google-Smtp-Source: APXvYqxZ3nyZdjoAqnMLe04pmS3a9XQUtOLE6Disa0hnxUovsvE+54ynCmtEZncGBwJ1UJBA8pLZeQ==
X-Received: by 2002:a2e:8007:: with SMTP id j7mr8791384ljg.191.1562220500948; 
 Wed, 03 Jul 2019 23:08:20 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id b4sm710440lfp.33.2019.07.03.23.08.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 23:08:20 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: kpc2000: simplify comparison to NULL in dma.c
Date: Thu,  4 Jul 2019 08:08:10 +0200
Message-Id: <20190704060811.10330-3-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190704060811.10330-1-simon@nikanor.nu>
References: <20190704060811.10330-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaCB3YXJuaW5nICJDb21wYXJpc29uIHRvIE5VTEwgY291bGQgYmUgd3Jp
dHRlbiBbLi4uXSIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWth
bm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZG1hLmMgfCA0ICsr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9kbWEuYyBiL2RyaXZlcnMv
c3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZG1hLmMKaW5kZXggODA5MmQwY2Y0YTRhLi41MWE0ZGQ1
MzRhMGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twY19kbWEvZG1hLmMK
KysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9kbWEuYwpAQCAtMTE5LDcgKzEx
OSw3IEBAIGludCAgc2V0dXBfZG1hX2VuZ2luZShzdHJ1Y3Qga3BjX2RtYV9kZXZpY2UgKmVuZywg
dTMyIGRlc2NfY250KQogCWN1ciA9IGVuZy0+ZGVzY19wb29sX2ZpcnN0OwogCWZvciAoaSA9IDEg
OyBpIDwgZW5nLT5kZXNjX3Bvb2xfY250IDsgaSsrKSB7CiAJCW5leHQgPSBkbWFfcG9vbF9hbGxv
YyhlbmctPmRlc2NfcG9vbCwgR0ZQX0tFUk5FTCB8IEdGUF9ETUEsICZuZXh0X2hhbmRsZSk7Ci0J
CWlmIChuZXh0ID09IE5VTEwpCisJCWlmICghbmV4dCkKIAkJCWdvdG8gZG9uZV9hbGxvYzsKIAog
CQljbGVhcl9kZXNjKG5leHQpOwpAQCAtMjQ1LDcgKzI0NSw3IEBAIGludCAgY291bnRfZGVzY3Jp
cHRvcnNfYXZhaWxhYmxlKHN0cnVjdCBrcGNfZG1hX2RldmljZSAqZW5nKQogCiB2b2lkICBjbGVh
cl9kZXNjKHN0cnVjdCBrcGNfZG1hX2Rlc2NyaXB0b3IgKmRlc2MpCiB7Ci0JaWYgKGRlc2MgPT0g
TlVMTCkKKwlpZiAoIWRlc2MpCiAJCXJldHVybjsKIAlkZXNjLT5EZXNjQnl0ZUNvdW50ICAgICAg
ICAgPSAwOwogCWRlc2MtPkRlc2NTdGF0dXNFcnJvckZsYWdzICA9IDA7Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
