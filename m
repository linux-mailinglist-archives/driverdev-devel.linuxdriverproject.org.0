Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78321526E9
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 10:41:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF877879DA;
	Tue, 25 Jun 2019 08:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xy7y74pJmTcO; Tue, 25 Jun 2019 08:41:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB7FD86C82;
	Tue, 25 Jun 2019 08:41:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C6111BF319
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 86AB52051D
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N8jU-j7jnw8c for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 08:41:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id ABD682039F
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 08:41:40 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id i21so15387979ljj.3
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 01:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Aj8XBum+Psok4AfC5NhqbglKzhmWo3QvztnHPGSovEY=;
 b=MO41+WE2fvaZeJ0tg0vTUdavI63QqHq6QZnU/mdkCevc8OiJD1qVoqVDWlHoCnm5oK
 irkXS02DUWyoRUMIKunYdsHTXUZylGnP7JzuFSgEh/B9k1Kkmiz1g+RGv3VI+xmusyS/
 OTbetwjDUo9T/1FuOU5zl5sH3pOUDrl07XLCPktl0K3qQWwWEBAwwfmAR2f9RzZwWZr5
 RGim5VFNGNdhKci3g+wTtXmvHgrJEOJTEt3owEXeu+K+UHI5eEoC04a+3UTNDgQgNKc3
 /ANVciUnRWPP2ws3qt0cGI2geQsdP5kGE3TB6UCioI4FDkdg5YEEb35Tv/pMeC4gX7UJ
 V93Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Aj8XBum+Psok4AfC5NhqbglKzhmWo3QvztnHPGSovEY=;
 b=V2zrPjtbZ+GhAEPS3aiQWu5fC7b49vpwmjDkuTnuENhr9JM0ALV8eOChyljV/rUVYx
 hJ6RsJXPXyY3hHwgBsCWtEptJx0jNylTKmwmzklTylSp/57E2v/qKVog3ue5ukZkozX5
 R2P5azXtPbJbza/a2yNEb5l/RsFS0ccfMX1z/OTWYW5H+dea4675TNPkOxnHfFds8QJ3
 lnKpTcaxaveOACKuYDAoBCGxVM/reWephUBF1gbqcRkceSusvtBgjXpMEw7gTPnNZIWF
 SoeEWy8bVXRrseEsbQh55O5cT2ZOnVtQy7RIyrmbZQdCm2Bibpwaw1o21nAKOqacKUCm
 DX4w==
X-Gm-Message-State: APjAAAVyJ42G4oPHYi8kRjMln2aHH3fLTmvSvUl03gbQFyQ6kAoxXy1c
 MoxPFUVQR7FFkKsfsOTpssgAtw==
X-Google-Smtp-Source: APXvYqz6cmZc9JF/zjdV9CtaxqABGJCl+eIOCB5Uj7sH1pyMiOMJaI+bHvXRxgUdBQ2/vhHBXYPvsg==
X-Received: by 2002:a2e:5b5b:: with SMTP id p88mr73160093ljb.192.1561452098404; 
 Tue, 25 Jun 2019 01:41:38 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id h78sm341564ljf.88.2019.06.25.01.41.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 01:41:37 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: kpc2000: remove unnecessary parentheses in
 kpc2000_spi.c
Date: Tue, 25 Jun 2019 10:41:29 +0200
Message-Id: <20190625084130.1107-4-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625084130.1107-1-simon@nikanor.nu>
References: <20190625084130.1107-1-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaCAiQ0hFQ0s6IFVubmVjZXNzYXJ5IHBhcmVudGhlc2VzIGFyb3VuZCAn
Li4uJyIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWthbm9yLm51
PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDBfc3BpLmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwX3NwaS5jIGIvZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAva3BjMjAwMF9zcGkuYwppbmRleCA5ODQ4NGZiYjlkMmUuLjY4YjA0OWY5YWQ2OSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMF9zcGkuYworKysgYi9kcml2
ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwX3NwaS5jCkBAIC0xNjQsNyArMTY0LDcgQEAga3Bf
c3BpX3JlYWRfcmVnKHN0cnVjdCBrcF9zcGlfY29udHJvbGxlcl9zdGF0ZSAqY3MsIGludCBpZHgp
CiAJdTY0IHZhbDsKIAogCWFkZHIgKz0gaWR4OwotCWlmICgoaWR4ID09IEtQX1NQSV9SRUdfQ09O
RklHKSAmJiAoY3MtPmNvbmZfY2FjaGUgPj0gMCkpIHsKKwlpZiAoaWR4ID09IEtQX1NQSV9SRUdf
Q09ORklHICYmIGNzLT5jb25mX2NhY2hlID49IDApIHsKIAkJcmV0dXJuIGNzLT5jb25mX2NhY2hl
OwogCX0KIAl2YWwgPSByZWFkcShhZGRyKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
