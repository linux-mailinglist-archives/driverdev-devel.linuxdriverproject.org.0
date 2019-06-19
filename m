Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBB94B31C
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 09:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7EF8875F4;
	Wed, 19 Jun 2019 07:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KqCjckDw-YEx; Wed, 19 Jun 2019 07:32:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7278086D41;
	Wed, 19 Jun 2019 07:32:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 790641BF23C
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 07:32:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7220E20526
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 07:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VIGvsAJIBu6t for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:32:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F7A020360
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 07:32:13 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id c85so9218757pfc.1
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 00:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I1vn1T/sZpgbsHfD8yKybfXwvQoLbK/moLO5lsYagXE=;
 b=WdXYi45tocQzs6aAQ+UsLJyIve42v/VSvGsvCSx2hOZqSMbDFFu1gFs5XTJ2RuF3fv
 b60XiBXdxBRTl89W246oafzlsxVRmXUmaLQTfAxSeznOa98hlntnGER6mMjLk+X7tym4
 ekWfEM3HAC7BnunAfcbxLxFC3BCKuA2Dk3MnqDODB08SwzuqrdAP0ZcGSDPlBcmq2kvR
 4gr/keG8ntEmNCVTgATzbIln4d9cQITngMBb1gMAgTJtafa99cvs38yVOBgKRp0WsbGj
 SIoR7JROcREERwE4lGqN8j0SMmBTqnOb3NBTKJFmlalMGPX2Und8i1w+vC5bZEKXxpSo
 O25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I1vn1T/sZpgbsHfD8yKybfXwvQoLbK/moLO5lsYagXE=;
 b=WZXvV0EAAeW5fyLSChPt8C1UXKipiZsKp8sR04azwI2LPYz2Ot/bGySrYNOlYW7VjR
 aY24Kyi//V8VoRPQ10gEzU/fi3elKlA0U315FlS0v7T9JQnHEi1uTPi0Pd0yhw7ZXoAA
 t3d42EsMqRgOm7w7W9VYUZCILsE+ZoQAjg6ADtYOtv8jFIIrgQlpw3r1ZClmU3cXsSZy
 kkDpIRdjxsQpE6J8GG1EkslQGN6Jvx3W4jQGIr9y6AVCGvTayMMr2gsVUnAMdrpbIcSX
 m4IvNqg53DNYqPGIdHjIMW962oH9E1wV0rG1sjQRLU+nvMKfjsE7R2WzfCEPvd3/7yLK
 Gu4w==
X-Gm-Message-State: APjAAAX/KLvDoLIE7/BAVU+wdhDdPrxG6ZKl+mhvXPZR1EV/TGSjt1Z7
 5f1UEF5AYwyEVYNPRnS2AsM=
X-Google-Smtp-Source: APXvYqw6sIDYRxACN10/uB/1SYsIE3dZNaFOKev6V7wdjrT4JAzQIQzHCvpCZChp3O1pTk/XFraZcw==
X-Received: by 2002:a62:1d11:: with SMTP id d17mr32753679pfd.249.1560929533311; 
 Wed, 19 Jun 2019 00:32:13 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id q10sm13628891pgg.35.2019.06.19.00.32.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 00:32:12 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH] staging: rts5208: Remove function soft_reset_sd_card()
Date: Wed, 19 Jun 2019 13:02:01 +0530
Message-Id: <20190619073201.18006-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function soft_reset_sd_card, as all it does is call reset_sd.
Modify call sites of the former to call the latter instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rts5208/sd.c | 7 +------
 drivers/staging/rts5208/sd.h | 1 -
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index c256a2398651..b3f829ed1019 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -3580,11 +3580,6 @@ int sd_rw(struct scsi_cmnd *srb, struct rtsx_chip *chip, u32 start_sector,
 }
 
 #ifdef SUPPORT_CPRM
-int soft_reset_sd_card(struct rtsx_chip *chip)
-{
-	return reset_sd(chip);
-}
-
 int ext_sd_send_cmd_get_rsp(struct rtsx_chip *chip, u8 cmd_idx, u32 arg,
 			    u8 rsp_type, u8 *rsp, int rsp_len,
 			    bool special_check)
@@ -4639,7 +4634,7 @@ int sd_hw_rst(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		break;
 
 	case 1:
-		retval = soft_reset_sd_card(chip);
+		retval = reset_sd(chip);
 		if (retval != STATUS_SUCCESS) {
 			set_sense_type(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
 			sd_card->pre_cmd_err = 1;
diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
index e124526360b2..dc9e8cad7a74 100644
--- a/drivers/staging/rts5208/sd.h
+++ b/drivers/staging/rts5208/sd.h
@@ -273,7 +273,6 @@ void sd_cleanup_work(struct rtsx_chip *chip);
 int sd_power_off_card3v3(struct rtsx_chip *chip);
 int release_sd_card(struct rtsx_chip *chip);
 #ifdef SUPPORT_CPRM
-int soft_reset_sd_card(struct rtsx_chip *chip);
 int ext_sd_send_cmd_get_rsp(struct rtsx_chip *chip, u8 cmd_idx,
 			    u32 arg, u8 rsp_type, u8 *rsp, int rsp_len,
 			    bool special_check);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
