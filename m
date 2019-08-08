Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2AE85AF6
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:41:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD24920382;
	Thu,  8 Aug 2019 06:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HXgSJsn7s0rf; Thu,  8 Aug 2019 06:41:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED7771FEAE;
	Thu,  8 Aug 2019 06:41:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FC2F1BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 353692045B
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vGE4F1v0K6fq for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 72DE220382
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:49 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id o13so43490219pgp.12
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PI6uRAS0NtuZv3z7y3JfNi0jD8syAa9bxXQlCU6DU3E=;
 b=ZoRhS6NOz3pIz/lHs5SdjPi0kPzTJfIZjBp+qMnKPuoL8m+JKaQRwQ0r+X3zNvpxYl
 iLWHyfjAT65bAtRJRhrxbK0cl3sTFcCDk8XvLqkgjkJh9K14pa9EDG/jv82+dgUaw3y+
 bg+cJeVQ1W1f1BjlCbgIeB/gAS6cLrRbmnxPU9Mhy560PzT8jDv46NgZ7Q37eJxkb72G
 aa0hRYQlqaVC95qM/wIgR/HtvSc/Z6ZN/DHo/PHqglqkcQDZcM4oGgXDwhgrBof6bsr6
 cVAdvsQqjHpT0g9yTkqDzoYNUqiT+taRE0F1Mf2JCtED9ia+gtiT/oS8oWfKyW5FQaAh
 alog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PI6uRAS0NtuZv3z7y3JfNi0jD8syAa9bxXQlCU6DU3E=;
 b=BtjBfwCGDpV09AVY9hFalWlQ6Z4Z6aVDW9BnOv/ieeqfuQxNtuQQtihZHbPOFQSF03
 Xvh2Xlo6vjtwXxAHhFGrO+ycw+w1Oa6a3SdeeK/rw/WBPixITMMjwh4xugxIQjW7AcM+
 HbeCRoMVdmjAWZrqYohFbpuP7yHbPsIqFgk77QCJsD52eQ7/7v8HhAHyeUfAFqLPEz+d
 GQaR0906vOjCXD+D7NXPO+w4yJT02A4an8STWK+qpqmyfTCuxrVQU3uEOj3y2JX4RMUs
 D+m/qJC+h3nDJhZqyq1Ozb0EX4coTr47ydN69uFq0aGtNuiTTLfLrlVCeu0jwybszHjB
 07gA==
X-Gm-Message-State: APjAAAWshEgThLd0wwm5CFO/F0XvDhaoAE6p+dUpzb+R6uhBReyXnPmo
 xGiTgpG8TUZT2iQq4sB98aQ=
X-Google-Smtp-Source: APXvYqwpK8/wVPqwJChaW7eMaCQNzd+V+Y0oMF7Kh8iaaot/G1paRL6hIKtqSenndyEEpBc+4TDETQ==
X-Received: by 2002:a63:f048:: with SMTP id s8mr11062797pgj.26.1565246449104; 
 Wed, 07 Aug 2019 23:40:49 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:48 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 09/10] staging: rtl8712: Remove while loop and check_cmd_fifo()
Date: Thu,  8 Aug 2019 12:10:11 +0530
Message-Id: <20190808064012.12661-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190808064012.12661-1-nishkadg.linux@gmail.com>
References: <20190808064012.12661-1-nishkadg.linux@gmail.com>
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

Remove while loop as it only runs while the function check_cmd_fifo
returns _FAIL, whereas check_cmd_fifo always returns _SUCCESS (and hence
this loop will never run).
Remove now unused function check_cmd_fifo.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index f99fd7cfa445..ff3cb09c57a6 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -263,11 +263,6 @@ static struct cmd_obj *cmd_hdl_filter(struct _adapter *padapter,
 	return pcmd_r; /* if returning pcmd_r == NULL, pcmd must be free. */
 }
 
-static u8 check_cmd_fifo(struct _adapter *padapter, uint sz)
-{
-	return _SUCCESS;
-}
-
 u8 r8712_fw_cmd(struct _adapter *pAdapter, u32 cmd)
 {
 	int pollingcnts = 50;
@@ -359,13 +354,6 @@ int r8712_cmd_thread(void *context)
 					       (pcmdpriv->cmd_seq << 24));
 			pcmdbuf += 2; /* 8 bytes alignment */
 			memcpy((u8 *)pcmdbuf, pcmd->parmbuf, pcmd->cmdsz);
-			while (check_cmd_fifo(padapter, wr_sz) == _FAIL) {
-				if (padapter->driver_stopped ||
-				    padapter->surprise_removed)
-					break;
-				msleep(100);
-				continue;
-			}
 			if (blnPending)
 				wr_sz += 8;   /* Append 8 bytes */
 			r8712_write_mem(padapter, RTL8712_DMA_H2CCMD, wr_sz,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
