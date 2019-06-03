Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532B533B42
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 00:29:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7950896C5;
	Mon,  3 Jun 2019 22:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e8RvK2WMqlGE; Mon,  3 Jun 2019 22:29:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87BB1896BF;
	Mon,  3 Jun 2019 22:29:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78F481BF2FE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 765BE87AB3
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 22:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xu6RxNKFoben for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 22:29:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2C2EE87AB7
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 22:29:29 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id y17so14851263lfe.0
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 15:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FVvkQM4fNOAgPUZLwRKZYmsBEm2aqbjd994xRlmgM+0=;
 b=eDAYzgiOQkkYd1a6x4CwFpqX67F6CPCRMEZhoDyg9V1PHmS504wYhIv6+ql1ezpqUK
 5/jhQ32ZskfDukoLpFA9SauluIzGC6eEN++ZUEHGrbno5/8dKFBAT2JgCSmEvLPuZiKr
 HzN0q115nC7onHNO1PSHflTSwzjYymwA41g/6tBwbPCcTuy0Sn1NssRsvK7xDag7EQxP
 p6hJm00qiE1MKaFZZHLdRsWLVSCSB356qVQwcwGGr24D9Zfjuu1iSPn3SsU4IlY8VCpu
 By8ZSPttIIToN3p2OqY0lBfvZcmmE8sNdID5ZSMQzWkS9OAedGuVPOo1iCeydxDwKYcm
 hEeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FVvkQM4fNOAgPUZLwRKZYmsBEm2aqbjd994xRlmgM+0=;
 b=apOHwNzVALk+6TwjhaM6znOk7LK1SWA6/qDEsNPeNEvyo8/tk1jK+spLr9cutpUB0X
 YyTp/ZQR7wihN9cfwqSATnxdWMIJaXdISK2wmrpeMusAWUxgcsqtk6AAkixAOoqBM2L1
 YbmkPLTirLkxjE5khWij5ipVfTa10ac8BsoEgXUL0jFCfpJJb+MKQLxCipQ+jHvM8b6+
 uAQx7OWKLCFlkHh2QIcfvlHpKTM3cI3gqFucYrDfH2yhNdPZTaB2CivC1n/6V/EW4Mo6
 LFyfl0rsCysK6Fou56AULTr1QneD3FxPtPlKO0FWkAKg2+M1R0OnfR+1tU8ymCrG2DON
 b/NQ==
X-Gm-Message-State: APjAAAU65PSSf0DzSoIw0IS30DnI+0fTALw5ObW7bTbU3aCj3US/U7KC
 AzynCaa3sqP2Q/zltAideKbGrA==
X-Google-Smtp-Source: APXvYqxe2HpUU1aSRP9HsZ5BwD8J12HcdP51GNkJsRx1V89E3Jniux4O101Lyb27VERsmCYexIscNw==
X-Received: by 2002:ac2:4d17:: with SMTP id r23mr9138137lfi.130.1559600967474; 
 Mon, 03 Jun 2019 15:29:27 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x20sm2175874ljj.14.2019.06.03.15.29.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 15:29:26 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 7/7] staging: kpc2000: fix incorrect code comment in core.c
Date: Tue,  4 Jun 2019 00:29:16 +0200
Message-Id: <20190603222916.20698-8-simon@nikanor.nu>
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

U3RlcCAxMSB3YXMgcmVtb3ZlZCBmcm9tIGtwMjAwMF9wY2llX3Byb2JlIGluIGEgcHJldmlvdXMg
Y29tbWl0IGJ1dCB0aGUKY29tbWVudCB3YXMgbm90IGNoYW5nZWQgdG8gcmVmbGVjdCB0aGlzLCBz
byBkbyBpdCBub3cuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWth
bm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMgYi9kcml2ZXJzL3N0
YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NvcmUuYwppbmRleCAyZDhkMTg4NjI0ZjcuLmNkMzg3NmYx
Y2UxNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMK
KysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMKQEAgLTUwMSw3ICs1
MDEsNyBAQCBzdGF0aWMgaW50IGtwMjAwMF9wY2llX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2
LAogCQlnb3RvIG91dDEwOwogCiAJLyoKLQkgKiBTdGVwIDEyOiBFbmFibGUgSVJRcyBpbiBIVwor
CSAqIFN0ZXAgMTE6IEVuYWJsZSBJUlFzIGluIEhXCiAJICovCiAJd3JpdGVsKEtQQ19ETUFfQ0FS
RF9JUlFfRU5BQkxFIHwgS1BDX0RNQV9DQVJEX1VTRVJfSU5URVJSVVBUX01PREUsCiAJICAgICAg
IHBjYXJkLT5kbWFfY29tbW9uX3JlZ3MpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
