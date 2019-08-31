Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E9BA4325
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 09:41:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ACB9087647;
	Sat, 31 Aug 2019 07:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xWKSb8PhqwT8; Sat, 31 Aug 2019 07:41:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E6F3874C7;
	Sat, 31 Aug 2019 07:41:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E67D21BF267
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 07:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF4D1824E3
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 07:41:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1K-cO2MRNxR2 for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 07:41:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 56FBB87E75
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 07:41:07 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id h3so4366404pls.7
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 00:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=chnLX+5iIXcwerLGQG9r+UVsc2Dbf/r7ciZlTZZfaxM=;
 b=c013Ad8yHXrmAwiNw5iVbA4XJlDGivjPRePYXI9dNS61w7oMN8cyokGOXoxgcrbI47
 IbuGqLmCdrf5V9lLG0hfIO74OpBCRGSRw7KkNSPhODI8Y6ewmE00fLkCFOKa3T2Hqa82
 /k7guerGe0N2XcMInzfYqd7frtmcRGRRJ1Cca3DwwA6md1SLuCKYhCwT0VjzGVsA6jMt
 eKn6WkSy0KrJ9Crgzs3kDmfSs0iC0roIqUkeQtBUZyirAm4YrAIyVBCCm2yjmanhH6wQ
 k20EwuJ2JCFCYiefeygA3J3cu6f9L2Ci6bKxYN8e2SHss7LRpTmUdgVfajS2RK9bN4in
 fFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=chnLX+5iIXcwerLGQG9r+UVsc2Dbf/r7ciZlTZZfaxM=;
 b=EJuM+Mbh6aHM5ftnCHX9+4CG21/W8By1z4lwf59lTcKWpLdSSaR9rDspWPvpqXroZ0
 Kq5D/TYzdLuQ4lkBB7sIj/g8LJTzpdodjZ2V9/S+SrfPoiRmRjN9Re+CEkRffGjCcGKl
 7vT+shm63ZtgIQXMHniUi0xQJQnlBY2jIKoPdbxqANAulyp95dlQCzk2lf/YGT+ctUqk
 NYmrf6IfStnUfnMaYUhkVbCi7WnJzEP0Hu09JbHBVVdSgTzQSjDZ3MigfWu2Enx0a8NT
 rF6EywJRk+5f0f0iVYQBzXJWXDx86rGSjiptanX6Cr3a363qI8HPJ+SXt158xmBmL7yV
 59Vw==
X-Gm-Message-State: APjAAAUe5wqfNTVl/y094RfEiVSzSJBWwzO+xQqV2j/G1/+KvJSGHuDN
 gzG9mSC8gCPVkVVTvTmhz4I=
X-Google-Smtp-Source: APXvYqwjFvvwezds47QrplR/PAzW94gzq1A5Vm/569IXQmNEszQ7QBsL9KdmlrszNriNG33UAQsV8A==
X-Received: by 2002:a17:902:d24:: with SMTP id
 33mr19860676plu.133.1567237266794; 
 Sat, 31 Aug 2019 00:41:06 -0700 (PDT)
Received: from MeraComputer ([117.220.112.100])
 by smtp.gmail.com with ESMTPSA id q132sm1526341pfq.16.2019.08.31.00.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 31 Aug 2019 00:41:05 -0700 (PDT)
Date: Sat, 31 Aug 2019 13:10:55 +0530
From: Prakhar Sinha <prakharsinha2808@gmail.com>
To: gregkh@linuxfoundation.org, tobias.niessen@stud.uni-hannover.de,
 kim.jamie.bradley@gmail.com, pakki001@umn.edu, sabrina-gaube@web.de,
 nishkadg.linux@gmail.com, qader.aymen@gmail.com
Subject: [PATCH] staging: rts5208: Fixed checkpatch warning.
Message-ID: <20190831074055.GA10177@MeraComputer>
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
+                                               sd_card->sd_lock_status &=
~(SD_UNLOCK_POW_ON | SD_SDR_RST);

WARNING: line over 80 characters
4518: FILE: drivers/staging/rts5208/sd.c:4518:
+                                               goto
sd_execute_write_cmd_failed;

WARNING: line over 80 characters
4522: FILE: drivers/staging/rts5208/sd.c:4522:
+                               sd_card->sd_lock_status &= ~(SD_UNLOCK_POW_ON |
SD_SDR_RST);

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
