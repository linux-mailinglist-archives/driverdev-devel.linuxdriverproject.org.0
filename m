Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F012E33B40
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 00:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8738788DB1;
	Mon,  3 Jun 2019 22:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zYFof-S80ZMY; Mon,  3 Jun 2019 22:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D63D588DBE;
	Mon,  3 Jun 2019 22:29:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D237A1BF2FE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C7C122CF21
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 54a3nE9eLvh3 for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 22:29:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 716E02CB21
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 22:29:24 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id r15so14827770lfm.11
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 15:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=knrbzBuDehhtfPEvKniXQQfSPEDHGGizKqNa8Zubbfg=;
 b=EjM5lDCiMw6pXgAainRP5g/6sW/3yKfXeYL1CNZoC0BQuAktWkxX3dyb5aZUPQJUev
 UZlr4MdGCD597hOvjCTD3/jxp+mVmm7WTZZDDv24f1W9CVjKOREZWCsIoKhsKMCpYQSF
 gBxK/bgtj2QQXNZ6srHy9cnbWtRp5R4vbH50vu0azBEUKMn/jY22QdAbEDkSmBqgVG8u
 s1CxX8yhFvkpc7HQNjgBIlmnk5nIt3Lmqt3e5exmEaNpxtXR90K1Sxh13i8IVl0OIc8y
 M3Y6/Zodpsr7Pm+YDAFPxsS49ID+HB96VCuBj0hp9RCuvRWJnnO2IyIz5/mw9vkM9GgX
 5bAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=knrbzBuDehhtfPEvKniXQQfSPEDHGGizKqNa8Zubbfg=;
 b=QxNIwDgH9CbTfeYix8L79c1+OhHT6Dy9BZSZZ2+fu0dkJOCDcoB0Z1nSY3jW4mHzsU
 7AonJh7QawepRn+CJYvyvHenwq2TnmEDXLkq58BL03VIftfIBvc5d1KIkDSylKzMN8h8
 AiUEHqXFYN9lPKlP70qFZVApLF2+HtsB9O8tGq98rLsM99MX3p44cbpT9sn5eX3rat0D
 nyot8d4aE4pei+7az6Kxzd+siBRiNVHY5KUesJ6X4AY0vsa5Sa8ZcyRQvlC+iNtJYtpQ
 LhH1B0ufxgYmu3wzfFzbHgPzEnwDhaNN0ClHOkgbvWF/f/xbl7r8SNiQSojR2CWLa8Gw
 5esA==
X-Gm-Message-State: APjAAAU0qcgwhGsVTGGBZTzUje4T7CTgTyxv2fPI5mEAQHPRb75XoLCo
 1ksz81/HuDz08DPCbKuVgLaIog==
X-Google-Smtp-Source: APXvYqxmRVrpJxfb8ZX6pzol8sIO/jZaTkrcussFYhqIEtc8sF9OLnnbp4UPgEp616MGLfhDvHZ5vQ==
X-Received: by 2002:ac2:51a3:: with SMTP id f3mr10276923lfk.125.1559600962748; 
 Mon, 03 Jun 2019 15:29:22 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x20sm2175874ljj.14.2019.06.03.15.29.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 15:29:22 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/7] staging: kpc2000: remove unnecessary oom message in core.c
Date: Tue,  4 Jun 2019 00:29:12 +0200
Message-Id: <20190603222916.20698-4-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603222916.20698-1-simon@nikanor.nu>
References: <20190603222916.20698-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaC5wbCB3YXJuaW5nICJQb3NzaWJsZSB1bm5lY2Vzc2FyeSAnb3V0IG9m
IG1lbW9yeScKbWVzc2FnZSIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1v
bkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5j
IHwgNSArLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIGIv
ZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMKaW5kZXggZGM2OTQwZTZjMzIw
Li5hNzA2NjVhMjAyYzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIw
MDAvY29yZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCkBA
IC0zMTksMTEgKzMxOSw4IEBAIHN0YXRpYyBpbnQga3AyMDAwX3BjaWVfcHJvYmUoc3RydWN0IHBj
aV9kZXYgKnBkZXYsCiAJICogU3RlcCAxOiBBbGxvY2F0ZSBhIHN0cnVjdCBmb3IgdGhlIHBjYXJk
CiAJICovCiAJcGNhcmQgPSBremFsbG9jKHNpemVvZihzdHJ1Y3Qga3AyMDAwX2RldmljZSksIEdG
UF9LRVJORUwpOwotCWlmICghcGNhcmQpIHsKLQkJZGV2X2VycigmcGRldi0+ZGV2LAotCQkJInBy
b2JlOiBmYWlsZWQgdG8gYWxsb2NhdGUgcHJpdmF0ZSBjYXJkIGRhdGFcbiIpOworCWlmICghcGNh
cmQpCiAJCXJldHVybiAtRU5PTUVNOwotCX0KIAlkZXZfZGJnKCZwZGV2LT5kZXYsICJwcm9iZTog
YWxsb2NhdGVkIHN0cnVjdCBrcDIwMDBfZGV2aWNlIEAgJXBcbiIsCiAJCXBjYXJkKTsKIAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
