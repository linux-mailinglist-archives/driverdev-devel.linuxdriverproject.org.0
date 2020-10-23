Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D45296C7A
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 12:06:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B73387051;
	Fri, 23 Oct 2020 10:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BGXHwCLyyOLg; Fri, 23 Oct 2020 10:06:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4295986C90;
	Fri, 23 Oct 2020 10:06:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12FD41BF3FC
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 10:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 088422050D
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 10:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6+z3zk1nRX1d for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 10:06:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A8AB72035C
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 10:06:34 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id 23so939639ljv.7
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 03:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a7qotuzDXU7tRMHMYUcGj25j4MwPZ2+w83VIsxxur88=;
 b=jj2Wz9MZCN35uW7UEHokTpH8YggAOHwjxRm0AgjDpJpizpzVWlkqOATU4xTOU28fW2
 FQwHaj2638uSdGqelsBISZB3p/wmUGdvDC5WQ1OBO2i2aiCL3+ZsQ40n8ZnY41uY/k3y
 NFUTF59QrMoxtgNfWAmCyh+G8dls98oD6AbdTWmbVa6qfwEohrP4r5iLZ1TgU5kGeqdx
 2R9fV0jwbWPSMAsKGFW7Mju9JAjcxmF15swUtCQdGd6lsAcksOxnGMT7UiqOTXbYkRpY
 M/RLaeMLpC4+dTG7hC6bbcryp01RSHGg8+RKlMY2HOgGG9Ne2cOTQZpcaRQjTZhFUK+3
 VbxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a7qotuzDXU7tRMHMYUcGj25j4MwPZ2+w83VIsxxur88=;
 b=reW1BUiU94p4gRVgKRDXPcv+ttkAiRuOrqc1N1s6iGeCL99zXrPsWbKVUExR0umyNy
 3foq95CNIPqtZ72DHEJ5F8CVI1VHpqoBwVroQKW39l8N6h+zgZRfCc6lH8EDmrO8prQr
 hd61iImmhQfah+lzj6I0QvWGjUgjPASbIWgRLFSKi+d2yD7iv56YwQYSUWl8g0dcjed0
 Ibd1GPGTg0sbG+tcHLQKdIYxcBkyToZaVMtseSmOAf4p7ZDqdU+l3Lo4jFr6d2fzqVhl
 tk3X7qIgDKmbBKGAjXtI1oBsJbomj4OjOEcAtYG42AlwCIRAri2i+TaLRbZSGQbnrdip
 uQTg==
X-Gm-Message-State: AOAM533VAw0EzjO6if5abd7z1cOwbqpel+7SQVdTT2B3E/HY71KnRCX4
 OTldnA/+YbwnoOhLhkDRUJc=
X-Google-Smtp-Source: ABdhPJx9N6rqxq1nNIK3VJxVsbrdmbENHqksTGqQTPoOOO5x9qQiFYLsOP6pMNue08tIwseLmdf5Ew==
X-Received: by 2002:a2e:8799:: with SMTP id n25mr593384lji.348.1603447592851; 
 Fri, 23 Oct 2020 03:06:32 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id w18sm93381lfc.5.2020.10.23.03.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 03:06:32 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/rtl8192u/ieee80211: replace kmalloc with kzalloc
Date: Fri, 23 Oct 2020 03:05:07 -0700
Message-Id: <20201023100507.4569-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Elena Afanasova <eafanasova@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

kmalloc() and memset() calls can be replaced with kzalloc().
Found with Coccinelle.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 63a561ab4a76..fb8483c499b3 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
 {
 	struct ieee80211_txb *txb;
 	int i;
-	txb = kmalloc(
-		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
-		gfp_mask);
+	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct ieee80211_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = __cpu_to_le16(txb_size);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
