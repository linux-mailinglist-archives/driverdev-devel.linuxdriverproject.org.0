Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69484A649F
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 11:03:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B359186709;
	Tue,  3 Sep 2019 09:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7nBAGpwbHv-i; Tue,  3 Sep 2019 09:03:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3FE186644;
	Tue,  3 Sep 2019 09:03:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E85A1BF96B
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 09:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 282FD85D68
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 09:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7RGW3cQSwaI7 for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 09:02:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0F1286644
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 09:02:52 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id o3so7576171plb.13
 for <devel@driverdev.osuosl.org>; Tue, 03 Sep 2019 02:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=chnLX+5iIXcwerLGQG9r+UVsc2Dbf/r7ciZlTZZfaxM=;
 b=nzlV5Y3ji7qQ0aAndFBX5AaqDKpuKabFvVCc2+JWUeR0DvTI/MXKGdOLH8Ql5T/hgS
 lNEmiQe4o4BrzoQYcE5uuj3Dg8dHGuX/hgCrZVf5CY75MdLKSiIPNqBKqlt29LeH8bT0
 O20tFPUKCy9eVRv1VuOGoxXaIaIcssf1/KZK9qx4CZ/a/qfVAf6ZmYA6xbwvuGfKZrPO
 J6pF0DCANQxOgY2H5GH1Oa9mt8gUfoxhbLNFCIU4VhEM8ASs6N25TqY8BhAvcK5URf42
 35KDxmJkrdkMQgmIg+v8lZVnjMgLGvfs0vJHrRuObPIcp57jmlRIInu1DmG4glAqB39q
 JWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=chnLX+5iIXcwerLGQG9r+UVsc2Dbf/r7ciZlTZZfaxM=;
 b=cPqHAq6jqYZQEkm6IcfioDWYamRvHDVFEq0aT6S7L5/hCUdu2NdGSmKmYJav7OT6HL
 9VGy0RR0/4sk0Ah+CvLVtSW+t3z8C3pt71Q8vc4oJ9zIgJvMfvMBUL3zLcF6cNJ5MQi/
 bDEorPhLYJ9CKbSftN8f6Qxx0FYlYkT4dO+sybCOW6abJY4EPr1Qi72FLmu/wR9YgeQN
 kIU6eOoJ7kJ2ZSddgt9ih6/5QvnCnEdfoYY1SOfF7/vHLcS0daj/w432n8PJ7Slm3Khb
 awMkgPZ2Cax9FdsZwEjkYbC8urTVJh/6ddBh3f1DoZJ+W8qH3Zmpx2g9Mie9Pmu/0PGY
 ILGQ==
X-Gm-Message-State: APjAAAV+MgpNCWXS0ddOcsCiqX/6y+u9i7/Zajfnxj6aHPbXmrAdPA3C
 TgUXXiIPbX5KNp2FmFr1xtc=
X-Google-Smtp-Source: APXvYqy8Pc0k7syw8RXECdN/xfVnPbwOUeriVOkp53FTg2gIUnD9q4L18wUCp7YK8hytic/PDTXaYw==
X-Received: by 2002:a17:902:2f03:: with SMTP id
 s3mr22591562plb.333.1567501372125; 
 Tue, 03 Sep 2019 02:02:52 -0700 (PDT)
Received: from MeraComputer ([117.220.112.100])
 by smtp.gmail.com with ESMTPSA id c15sm4278215pfi.172.2019.09.03.02.02.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 02:02:51 -0700 (PDT)
Date: Tue, 3 Sep 2019 14:32:40 +0530
From: Prakhar Sinha <prakharsinha2808@gmail.com>
To: gregkh@linuxfoundation.org, tobias.niessen@stud.uni-hannover.de,
 kim.jamie.bradley@gmail.com, pakki001@umn.edu, sabrina-gaube@web.de,
 nishkadg.linux@gmail.com, qader.aymen@gmail.com
Subject: [PATCH] staging: rts5208: Modified nested if blocks.
Message-ID: <20190903090240.GA6104@MeraComputer>
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
