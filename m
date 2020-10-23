Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3D7296C78
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 12:04:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C30278784C;
	Fri, 23 Oct 2020 10:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AdgeH0PPBCG1; Fri, 23 Oct 2020 10:04:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CB508782A;
	Fri, 23 Oct 2020 10:04:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E80CB1BF3FC
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 10:04:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DFB3D86C2B
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 10:04:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P7YKveje+nA2 for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 10:04:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 19CC086913
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 10:04:42 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id a7so1366448lfk.9
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 03:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZqzZOkkQhGsCMz2cHtUHXACq+yiPZPMxH0amNRjDG5E=;
 b=mLXJwCGssO++PBuZLocN9OZw23erg0HlFo2Ry9zymGOp5//uhahs0/xil9qkmLk4bB
 jTPEnlyNkvQexT2+TCFfDnVFoYYgTLkg6SEns+LIUKSLrspovX7qYasjZllX/IQwCO1E
 9mRNgBXszKrJ1BYkIijDBvyZMm0lrx642Fm7KMWMdMnaPavxg9RmC7t2jAv68W/d12bd
 iEKm00BCbmhU6rA5FrZIIdBs3Dw5s0ctwxuRzbDTE7zx47M1nPmk6aufvKtWCSz9EHSH
 2dOnhAEEvZN3GKW3VvtZ+CvS55Pr61IGT9tsQvZ6bjUOVdg2jvoegXcM99soG/a9BsBx
 48pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZqzZOkkQhGsCMz2cHtUHXACq+yiPZPMxH0amNRjDG5E=;
 b=NDHximMQRrLbs9exLo3D8tr39mBySloLD7knuQqIsRuVIuvv95tZJAUK+C+7hL8MiO
 3AbVfkJW7sVVvy3OOfeAaAJAElSuHprXpisWhujHE6/zRWbdxOp8hdiiEPeMKNBz+zdw
 ijI/4jCPFkaOzoXboh0wODAwFLDeZUfHxP+t8q3zK19lKkC8pXra2SazoFnmVJDOqB8N
 L7rNSWzLfi7ZDUSOVwfZKbQW5xoO8zvV4Q2l4ZvT9iIfH+ebBVf7GMbivGPecCXCIiSb
 4nApzW2I3iH1BzkgYPoJ0aykjTFjdlCVfmtRgMQ7ycfvlzHhP/aa0y9n0l/R5XwkUkWO
 gWMg==
X-Gm-Message-State: AOAM531ufOe41jGMua3Q7qe84q05hK6iH4O5m4Ym+HTQa5UidDiHg9r5
 3qsJw6ADAG2Uv8GDS2IYiWM=
X-Google-Smtp-Source: ABdhPJyg0iGMJmScG537IlBguQLqsxuzRLsoiDLPI9t7w5tiKPK3IwVGVUkrv1XhIaU14s3hyXrqhw==
X-Received: by 2002:a19:8087:: with SMTP id b129mr529747lfd.471.1603447481015; 
 Fri, 23 Oct 2020 03:04:41 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id b137sm92631lfd.105.2020.10.23.03.04.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 03:04:40 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/rtl8192e: replace kmalloc with kzalloc
Date: Fri, 23 Oct 2020 03:03:17 -0700
Message-Id: <20201023100317.4473-1-eafanasova@gmail.com>
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
 drivers/staging/rtl8192e/rtllib_tx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index e0d79daca24a..c9959bb4ab63 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -205,12 +205,10 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
 	struct rtllib_txb *txb;
 	int i;
 
-	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
-		      gfp_mask);
+	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct rtllib_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = cpu_to_le16(txb_size);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
