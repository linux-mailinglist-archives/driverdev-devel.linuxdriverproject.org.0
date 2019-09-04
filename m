Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30674A8359
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 15:06:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B2A1323100;
	Wed,  4 Sep 2019 13:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dYNue4MiHyAd; Wed,  4 Sep 2019 13:06:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5FB2223077;
	Wed,  4 Sep 2019 13:06:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7BA1BF3CC
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 13:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 62CE3869C0
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 13:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30gX9OdCf8wQ for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 13:05:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDA758697E
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 13:05:37 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u72so7038969pgb.10
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 06:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=qk0OuOrMg5tOAzN4rz02JAWnOMG6qE8NiffpgXWoJIA=;
 b=N4YK1Gs2/2Z5emAWr4rJ6LlOxnQIH/unOWSowk+HvjjBI420gcZERK249bDAeb3iQZ
 qhloqYi6Evcw8E6l2PHMJMkjYXJ0IgTIkxxVYG1bl5JhspLW5beXsOBpYB/cTm4mdhxv
 KujH3nGRXzNVcjeNXxE8If5Xs2mQlgL7uhfaKqw/uhQvyOdQAKG0Pxhaq13E1FroDukE
 8/JVfclzHgbNMCMyPys4IsLG56WLWFLUg4t9jv7gIkiI35IC9RDBpwGxrRgIeLxHZ55k
 GaAAKaZPEPJBEjoC9YLo2JMb3n98QpYnnHdYND4fMtXBS+AwE0vlqvy2zkOcWLHyHV1Z
 TyaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=qk0OuOrMg5tOAzN4rz02JAWnOMG6qE8NiffpgXWoJIA=;
 b=kFYaMBVskXOT3W9bGXOFPdXBy/SJLqsrkXwGtb60TFBmcxylxs5L88iQJxyL5yAcHg
 wDdvCI6tOrUmAObDJkUNtDNnAuoqZHiVw5coEE4/qSNZDQ7YzZ2Hrh+lD13tbNztUqn7
 hym0O0Sa/56IX07Y47tUAGLIDW6P2B5nBdS1hUZiAU247YMTVYCArgjswzojws5gUxa0
 z3RDueDMbQ2gRqJvgBuPSc05H54L9Szre2TPvUCUx+A3aCn4nrOVEm+ZU46frhpHLRxf
 kDAQyWHjkVA/e+hB3Ea3Mp/FAf0PIHBjC6h2DJeQHQGp2N5GxOFgHGwbVESiXJoc8I7X
 Oqgg==
X-Gm-Message-State: APjAAAW/ejlbgdz+FVyd+H8QI5fkeOL5sS238iWcaLneaeHEIEnGNFa0
 55QOt0r/7IDsCiXjaFRPVD0=
X-Google-Smtp-Source: APXvYqyr1WQwei2qjMxwIDgD3cmeL28e2tXbuoEH2pJa/xjAC5DFJbtgv41/0opqn3xvXL7seEGsvQ==
X-Received: by 2002:a65:621a:: with SMTP id d26mr28659658pgv.153.1567602337098; 
 Wed, 04 Sep 2019 06:05:37 -0700 (PDT)
Received: from MeraComputer ([117.220.112.100])
 by smtp.gmail.com with ESMTPSA id h12sm26159377pgr.8.2019.09.04.06.05.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 06:05:36 -0700 (PDT)
Date: Wed, 4 Sep 2019 18:35:23 +0530
From: Prakhar Sinha <prakharsinha2808@gmail.com>
To: gregkh@linuxfoundation.org, tobias.niessen@stud.uni-hannover.de,
 kim.jamie.bradley@gmail.com, pakki001@umn.edu, sabrina-gaube@web.de,
 nishkadg.linux@gmail.com, qader.aymen@gmail.com
Subject: [PATCH] staging: rts5208: Fix 80 char warning by re-structuring
 if-blocks.
Message-ID: <20190904130523.GA17126@MeraComputer>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch solves the following checkpatch.pl's messages in
drivers/staging/rts5208/sd.c

WARNING: line over 80 characters
4517: FILE: drivers/staging/rts5208/sd.c:4517:
+                                               sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON | SD_SDR_RST);

WARNING: line over 80 characters
4518: FILE: drivers/staging/rts5208/sd.c:4518:
+                                               goto sd_execute_write_cmd_failed;

WARNING: line over 80 characters
4522: FILE: drivers/staging/rts5208/sd.c:4522:
+                               sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON | SD_SDR_RST);

Signed-off-by: Prakhar Sinha <prakharsinha2808@gmail.com>
---
 drivers/staging/rts5208/sd.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index a06045344301..7d6f2c56e740 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -4505,22 +4505,20 @@ int sd_execute_write_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 		dev_dbg(rtsx_dev(chip), "sd_lock_state = 0x%x, sd_card->sd_lock_status = 0x%x\n",
 			sd_lock_state, sd_card->sd_lock_status);
-		if (sd_lock_state ^ (sd_card->sd_lock_status & SD_LOCKED)) {
+		if (sd_lock_state ^ (sd_card->sd_lock_status & SD_LOCKED))
 			sd_card->sd_lock_notify = 1;
-			if (sd_lock_state &&
-			    (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE)) {
-				sd_card->sd_lock_status |= (
-					SD_UNLOCK_POW_ON | SD_SDR_RST);
-				if (CHK_SD(sd_card)) {
-					retval = reset_sd(chip);
-					if (retval != STATUS_SUCCESS) {
-						sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
-						goto sd_execute_write_cmd_failed;
-					}
-				}
-
-				sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
+		if ((sd_lock_state & !(sd_card->sd_lock_status & SD_LOCKED)) &&
+		    (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE)) {
+			sd_card->sd_lock_status |= (SD_UNLOCK_POW_ON |
+						    SD_SDR_RST);
+			if (CHK_SD(sd_card) &&
+			    reset_sd(chip) != STATUS_SUCCESS) {
+				sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON |
+							     SD_SDR_RST);
+				goto sd_execute_write_cmd_failed;
 			}
+			sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON |
+						     SD_SDR_RST);
 		}
 	}
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
