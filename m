Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 132EC31FB2B
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 15:46:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 846B060711
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 14:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8VCMuyQ0TPUw for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 14:46:38 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 7630960701; Fri, 19 Feb 2021 14:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 698F1606EC;
	Fri, 19 Feb 2021 14:46:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D06D1BF846
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 14:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 59BED86C02
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 14:46:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 89uD6FNrl4+c for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 14:46:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E301B86C25
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 14:46:11 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id k22so3480622pll.6
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 06:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=slTXshU8vidGGVMSxD6AxHpQCaGZpeJQ08PMj6GSx14=;
 b=mOadbSwJ+lN9/8jOAuB+LIN+eQWxBpaU2nHGShDsNkBu2OSL8S3R+PzRAqWtxF/AyT
 MoZBbqj4PNdvabwxpbOinc8JfA6nKUqhMIZsz+x4ddILZLMsvl+giO01S5Y4tnL6ZKqc
 TDFhNs0uCazV1NrTKzk6q8TXXhGnfLtXzf/R1JxM/eDcceLtxhmInB2xavxQA7ihcMN/
 M8EW+PUuCgD3Zi9tnpVZfEqajheLedQjk9P4m3jHuhDmoeT1CmY+lechFOw+2K6zyTeu
 AKcKeVUEES2U/eS29EdHRxj/FNDu+X0Wae+KR1HXCMTFTCwaTFu95fQoh6M+MuIRN8m0
 Pe1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=slTXshU8vidGGVMSxD6AxHpQCaGZpeJQ08PMj6GSx14=;
 b=KheBxSCyzGw4rewuh++DYZSiwI2jYiJiXvDu0w2YgYpdKFnchosjr/AueyZX+/5KL/
 0eBZGTq7iLZCW7GTaRYGwuQqUwesQaoFSGMU0BRs9SMLMwMBjYlYWpAQU8wxNHLWdCDR
 Ubr/cqY8j//kxMY7mQsDpwJ7yBBR3lvTeMnRaXS3yFHY6U6zm+6Wa4CVRI8dT7Zuc4JN
 b7C4r/Q0DCuZcXHyKatVM/aQdQenRj6arFf88CmbbnQl5ihvmq/rjLwWWGb0LIyanM0p
 AJTaDQvWspEfOojiZvmOK0AlyGkQcrdsyJWEyjQ8rt7idKDxDgi9Ug2YhczAZO+/MlL+
 BDLA==
X-Gm-Message-State: AOAM530Sj/pb6zvJ7zeM+tJBQgIr2O6zN7ssk6uiPDmtcr2MyHTGIIhF
 XwNmmQqb3U7GRSfU8loSWOw=
X-Google-Smtp-Source: ABdhPJyqHMbC6dTR+BB6SR6heG0MwTmAa5lseJ80Z8WddGX3n6NsiVuKO/5qiPoAnmthmOTWLND8Pw==
X-Received: by 2002:a17:90a:2a4e:: with SMTP id
 d14mr9797342pjg.36.1613745971421; 
 Fri, 19 Feb 2021 06:46:11 -0800 (PST)
Received: from localhost.localdomain ([49.36.144.93])
 by smtp.gmail.com with ESMTPSA id k13sm10457329pfg.146.2021.02.19.06.46.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 06:46:10 -0800 (PST)
From: Amrit Khera <amritkhera98@gmail.com>
To: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: Fix blank line style issue in sdio.c
Date: Fri, 19 Feb 2021 20:12:31 +0530
Message-Id: <20210219144230.32055-1-amritkhera98@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Amrit Khera <amritkhera98@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch check for "Please don't use
multiple blank lines".

Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
---
 drivers/staging/greybus/sdio.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/sdio.c b/drivers/staging/greybus/sdio.c
index 0939f4a4c963..37bf04c22dbc 100644
--- a/drivers/staging/greybus/sdio.c
+++ b/drivers/staging/greybus/sdio.c
@@ -33,7 +33,6 @@ struct gb_sdio_host {
 	bool			read_only;
 };
 
-
 #define GB_SDIO_RSP_R1_R5_R6_R7	(GB_SDIO_RSP_PRESENT | GB_SDIO_RSP_CRC | \
 				 GB_SDIO_RSP_OPCODE)
 #define GB_SDIO_RSP_R3_R4	(GB_SDIO_RSP_PRESENT)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
