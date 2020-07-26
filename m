Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 642A922DFB0
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 16:21:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1218586004;
	Sun, 26 Jul 2020 14:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRRoF1YAWINa; Sun, 26 Jul 2020 14:21:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E446885FBA;
	Sun, 26 Jul 2020 14:21:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5ACFD1BF46D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 57E6F877EA
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a-AlGaWwfBeL for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 14:21:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D2993877B4
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 14:21:14 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 1so7705957pfn.9
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 07:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qjht00DvaxzbF2A+NLzR7ECrZcRLCP22mrw14y7Hx28=;
 b=NgiFHivjsGNZ3EdgSkw/XPeHXByJJYCThEjKzT/95WcJS4D6IGan8Q+1TVYuaDeiMW
 EYdNisPea3wNp1/8s6CG8GzZ1mMH3Y6PQgQmxbxiXo1w9A/Nh0XqUtEgvGUoRM/RbQR+
 b2urreocYhk3Fi0ww9n3nOlWEnpDce+jY9J2FugAjUiXQqm9btQCOwt3sWpgF7fsrSgd
 G5TSDM4Tewvo5N706e1tkgGIRyWC/B3oX70DqlzKs3YvOe5MdygryRQtrsp7i9iT+Kpj
 eDfQ13hhJYyb+EUIOBKZ72cwN+1g9TTm2dVijqbAb7p7XGvBWAWgMsFYLZCQ50fGBm21
 Pckg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qjht00DvaxzbF2A+NLzR7ECrZcRLCP22mrw14y7Hx28=;
 b=Ajlxtg1Q9QV3MHI1QoJZSrgDJvjdAC8IYJkDrDMvMJwNGKVHT10w2FwUppauYRj90h
 fKd4Vb9WCwwiZ5Hdk1J41Tf9RtnaY4QU7B0MwQgcmzuRQc6jdBEZYmeU5nD3oEekwq/K
 Go4+gDJ3Xiv0NvrctxZRN6xWBZaZIvmPH7O5H+FrUndPHFWBEFrU9oZNshkUjT6yzK8S
 FSbOouDg36qy9LTuVwX4GwCpD2U07ZuhU8DvyH5oX+3yHAVPzSD7CvF2VYAr5khM9DEU
 0zMbSIyi7liDye8xWC96nLHzJK2kK7LmZaq77jNbrAnqK2OW+4Ka7Qrfv7EHX/b5/rB+
 LJ5w==
X-Gm-Message-State: AOAM532StL5p3CJ5kb8zqKlWmB/wah4fVKWf2AVs5F5gAOnkY51Z3Vym
 JB37y/x7eH7yNIZdSdfgNLo=
X-Google-Smtp-Source: ABdhPJxjFE0+OA2BXqdUggqKPDScHt/CX8GUufWfJ5TvsqQtNvhSolgLB0xp3cYFvUI5jkxrVkmsRg==
X-Received: by 2002:a63:2104:: with SMTP id h4mr16515050pgh.427.1595773274380; 
 Sun, 26 Jul 2020 07:21:14 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id
 a13sm12493235pfn.171.2020.07.26.07.21.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 07:21:13 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 4/4] staging: rtl8723bs: include: Align macro definitions
Date: Sun, 26 Jul 2020 19:50:13 +0530
Message-Id: <20200726142013.2891-4-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
References: <20200726141831.2662-1-aditya.jainadityajain.jain@gmail.com>
 <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adjust spacing in macro definitions to align them and improve
readbility

Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
---
 drivers/staging/rtl8723bs/include/hal_phy_cfg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 2b059c9c7851..b3d5d24126e8 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -8,11 +8,11 @@
 #define __INC_HAL8723BPHYCFG_H__
 
 /*--------------------------Define Parameters-------------------------------*/
-#define LOOP_LIMIT				5
-#define MAX_STALL_TIME			50		/* us */
+#define LOOP_LIMIT		5
+#define MAX_STALL_TIME		50	/* us */
 #define AntennaDiversityValue	0x80	/* Adapter->bSoftwareAntennaDiversity ? 0x00:0x80) */
 #define MAX_TXPWR_IDX_NMODE_92S	63
-#define Reset_Cnt_Limit			3
+#define Reset_Cnt_Limit		3
 
 #define MAX_AGGR_NUM	0x07
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
