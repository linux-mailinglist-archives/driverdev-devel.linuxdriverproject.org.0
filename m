Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EA930FFB9
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 22:55:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E63FC868EF;
	Thu,  4 Feb 2021 21:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SmZzxwWEdZcC; Thu,  4 Feb 2021 21:55:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05F92868D9;
	Thu,  4 Feb 2021 21:55:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C863A1BF33E
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 21:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD8222043C
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 21:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrh1katidI0X for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 21:55:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 by silver.osuosl.org (Postfix) with ESMTPS id 8BD0920432
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 21:55:35 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id e15so3596680qte.9
 for <devel@driverdev.osuosl.org>; Thu, 04 Feb 2021 13:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TpNR/qUQzjMgrNMY8WiD0ezGe7uykjtuTLC9thjn8a4=;
 b=RNpwBclZVwN9RxcPCe+47atq297vQ3yjHyfe3aRBa0mPQyIzbTyjxaQLuP2D35m1HZ
 aHLGzjzAiiItFIkjqEbKdKfcoofm5NnPSCK9xY0em2J1NLgx1YGFwSFutZcO/4Ex7796
 U/WCHURkUYWOOrLYgnIzL0Cn1zTF5RbGEEqENiyXG/fJER1YJPUtq16vqJa67Rck5Ql/
 GrqL03lMn3kbGbKMMpLQp+V1ws74gKDpRub9eyN4ky0E+DuXiiC5lOCZf0fTAaAthSvZ
 RsQLKLRRkGRKCh9ZOlkq/+3xcFKfR3C0bUG2stT3yg7To/6QPy18i7+9/asarXLnMFlp
 dBOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TpNR/qUQzjMgrNMY8WiD0ezGe7uykjtuTLC9thjn8a4=;
 b=EJUZr9ACk3jvE19mtyLla0xOasNEvr+tYNFjsGjch1UGRdAKvUHL+aDreinz62FVRf
 DY2h98632xKwiVEkug7x+LuY/7MkfO6wXLlNbLrWqt/bi9CPYQrby1IGVZpuRJjA/2ln
 86tmTHH9NO0/LMGYA3wkfZKk8iM0Zab4xbuKNxNitUI//Oxn5zWhlYdcsm8APpxdgwcf
 3pln4H/qTyQuDqiPHEfplitnFAoro56Os9Ksvnsi/ul9mAj+LHCMOLpzReBmSd7xnBfC
 tyUalpysAkMztWXFDpeh3/4lwg+mNRzDnu7DUqUpKc6/0BAFA8agWlW/VqcjQIza1Nn1
 /W0w==
X-Gm-Message-State: AOAM531M+FaTexgGfumMF4y0nK0omLETy7P6TXxJfh2oUN4dzY6/KOPp
 Bch+XBpjwr1VBWbUWM6mfsc=
X-Google-Smtp-Source: ABdhPJzlpDuhn/mJzhWCfkUnpQCI85+erWHahrbX/wavXQ+zIuymbwaFTRyApeqeHTmTBEzDIL8QKQ==
X-Received: by 2002:ac8:5995:: with SMTP id e21mr1665445qte.294.1612475734577; 
 Thu, 04 Feb 2021 13:55:34 -0800 (PST)
Received: from localhost.localdomain ([45.87.214.195])
 by smtp.googlemail.com with ESMTPSA id l30sm5366573qtv.54.2021.02.04.13.55.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Feb 2021 13:55:33 -0800 (PST)
From: ameynarkhede02@gmail.com
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: qlge/qlge_main: Use min_t instead of min
Date: Fri,  5 Feb 2021 03:24:51 +0530
Message-Id: <20210204215451.69928-1-ameynarkhede02@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amey Narkhede <ameynarkhede02@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Amey Narkhede <ameynarkhede02@gmail.com>

Use min_t instead of min function in qlge/qlge_main.c
Fixes following checkpatch.pl warning:
WARNING: min() should probably be min_t(int, MAX_CPUS, num_online_cpus())

Signed-off-by: Amey Narkhede <ameynarkhede02@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 402edaeff..29606d1eb 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3938,7 +3938,7 @@ static int ql_configure_rings(struct ql_adapter *qdev)
 	int i;
 	struct rx_ring *rx_ring;
 	struct tx_ring *tx_ring;
-	int cpu_cnt = min(MAX_CPUS, (int)num_online_cpus());
+	int cpu_cnt = min_t(int, MAX_CPUS, (int)num_online_cpus());

 	/* In a perfect world we have one RSS ring for each CPU
 	 * and each has it's own vector.  To do that we ask for
--
2.30.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
