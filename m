Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD0825F88B
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 12:37:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93FFC8712D;
	Mon,  7 Sep 2020 10:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gfApGeJJZJTs; Mon,  7 Sep 2020 10:37:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04B3387111;
	Mon,  7 Sep 2020 10:37:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3ABA11BF2FD
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:37:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 37D6E85D50
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:37:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7DJxdyRgvaLb for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 10:37:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D17E085522
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 10:37:12 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id j7so1484287plk.11
 for <devel@driverdev.osuosl.org>; Mon, 07 Sep 2020 03:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=g+79HCibnuNCRxL91fZstxrnNLEIxYlMyCr2I4IP78M=;
 b=EbClELxXvnkjh3y+EamtKtQuNNmC/OwzyyEQzzagTIwKJhkH5mUzzG/qS6aBhhIBrS
 IeGxCaWEwM/CC4UyFIVkwi4joQFH3EjdCfJOXAEiduf7t9DKNOPruFdbcUx1SJaDelHu
 q+fXmir6DtwGSZV2bDU0ISEiBjxie/vHAdEaNcfCNaLhEMhBk5pvIqModLfgr5mphYfk
 VNqZm6XUZFUazr/J0q6awtZ3vHff0JgOzVlKwVvIv8b0N4FIxS2BVLJaij+NZQeHg65p
 QMzvnXeo76+xkXLfPu9XhnrdGRcHwzK/N3AZNpoqTt1OtI69ktyQ9/tmG1kzhdN2i08N
 38tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=g+79HCibnuNCRxL91fZstxrnNLEIxYlMyCr2I4IP78M=;
 b=SCEkwWvLN99INxpNjLj7VE1jypQF1J7IPH3pRyeoVnAegaZxzoXEDOuT1gcgrIPsGI
 Nji48BLX2wRn3N9JRM3XTFx1XejvEP1OWAmA6A8EPy66OALjWjcQnx/mvl3UUVKUPj0O
 6W/ErjrrGYXjG7uOH64qXOq80PiDkGIxYYGWl6lR1zezUjAibv6VE3DlLKurIDwFmZDn
 65CKBB2KKslXOUdH0Ft6Y5m5BrAXS3Z2TTwmzoKIx2BC8M1xepohRhsRT2eDMmK/bAI4
 W0wejEFNzC1ZIA21itNPy/usXIgBJqWOS00gRynUmE+OvsnJWgrNSm5xseM/a5+2BVxb
 uo7w==
X-Gm-Message-State: AOAM533jlIj5TZ6Z7cU4lvRYC0oPwvED+9vWLdL0N6Bhavb/nPW6LoVX
 lwZ1Jwc2U7hElkd1RUiQMtw=
X-Google-Smtp-Source: ABdhPJyPenmxkn/Y/lpcNEUhJDvuRlrpIItWXhR2ugs5byvnUuYHHOLwdl2ahHLce3ZIyMCa8N3LxA==
X-Received: by 2002:a17:90a:81:: with SMTP id a1mr7780983pja.136.1599475032314; 
 Mon, 07 Sep 2020 03:37:12 -0700 (PDT)
Received: from laptop.Scindia.edu (proxy.scindia.edu. [210.212.152.36])
 by smtp.gmail.com with ESMTPSA id b203sm14308726pfb.205.2020.09.07.03.37.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 03:37:11 -0700 (PDT)
From: Naveen Panwar <naveen.panwar27@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] driver: staging: ralink-gdma: fixing codestyle change
Date: Mon,  7 Sep 2020 16:07:03 +0530
Message-Id: <20200907103703.30208-1-naveen.panwar27@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, mpe@ellerman.id.au, psampat@linux.ibm.com,
 Naveen Panwar <naveen.panwar27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding a blank line after variable declarations

Signed-off-by: Naveen Panwar <naveen.panwar27@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index eabf1093328e..9ad012d1581f 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -122,6 +122,7 @@ struct gdma_dma_dev {
 	struct gdma_data *data;
 	void __iomem *base;
 	struct tasklet_struct task;
+
 	volatile unsigned long chan_issued;
 	atomic_t cnt;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
