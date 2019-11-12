Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D74CF86AE
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 03:10:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBF18861D4;
	Tue, 12 Nov 2019 02:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rJAFfZAsUDaV; Tue, 12 Nov 2019 02:10:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F91086B9E;
	Tue, 12 Nov 2019 02:10:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B2691BF37A
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 837C387FC9
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Avq+F9lPIYM for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 02:10:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CF61987F0C
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 02:10:36 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xAC2AZ38028354
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:35 -0500
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xAC2AT3L015443
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:35 -0500
Received: by mail-qk1-f200.google.com with SMTP id a13so9151914qkc.17
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 18:10:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=DPYClz7LCDj0+BjYYDN7UOMear3Iae3kG0hEuBak2P8=;
 b=iz49R2EClSUQsrQx8uitYV3nT5YQj1YIL8ToBOPwWKahyJ/PteqyF1CmA/B9Ivc2NH
 PpbjEhYRNRSp+8EnzOs4HWB28I3MUgt6ohBejZ5zDLk+w9U0U30l1PeLxoxhMKIjI3os
 rjKTeYBN2gVZNjXTn7N/Vk964mctxn+bDNG57nEAwFKcmvSeW/KfXTypVNhx/KtwYeRg
 zD4mpYzvhxl/FiT2cD5ubL6pC8CdtIjmcJTaJrOdTs4XOsn7DGBwfC/RrnG8khXXHrR9
 0B/IRuJvdqaPeUYWqBPbDyJJ6Ea3KjSEbRAV0jAyhYRNbjRCvbRvXz7sSCGak4mt0wz4
 Zkeg==
X-Gm-Message-State: APjAAAUKwRISpxlHdMapGQBRJAbNBDlV+vSHIsbjbpini6mkS6eAfMK9
 JnWY2NSkgeAx0BnD8RCJGrZk0st9oy2y5XNeNDslgY7qf7CDB5iCYmnpA8Z2DmnWYxeeSKREh6I
 bmi5yrAsN0K/Us+tmpHOBQo5lKcvE24cK
X-Received: by 2002:a37:30b:: with SMTP id 11mr3819795qkd.254.1573524629780;
 Mon, 11 Nov 2019 18:10:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqw2dur+yakoYVVJvPAEPbS3GqD5CoXaqf6BC9T/Frq5jGpMp/n1Sbs+SyzKW5RMGN/bLLZ0cQ==
X-Received: by 2002:a37:30b:: with SMTP id 11mr3819776qkd.254.1573524629505;
 Mon, 11 Nov 2019 18:10:29 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id o195sm8004767qke.35.2019.11.11.18.10.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 18:10:28 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 3/9] staging: exfat: Clean up return codes - FFS_EOF
Date: Mon, 11 Nov 2019 21:09:51 -0500
Message-Id: <20191112021000.42091-4-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
References: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Convert FFS_EOF to return 0 for a zero-length read() as per 'man 2 read'.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       | 1 -
 drivers/staging/exfat/exfat_super.c | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 286605262345..292af85e3cd2 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -217,7 +217,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_INVALIDFID          8
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
-#define FFS_EOF                 15
 #define FFS_ERROR               19
 
 #define NUM_UPCASE              2918
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index d6d5f0fd47fd..7c99d1f8cba8 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -723,7 +723,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 	if (count == 0) {
 		if (rcount)
 			*rcount = 0;
-		ret = FFS_EOF;
+		ret = 0;
 		goto out;
 	}
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
