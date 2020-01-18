Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8681418C4
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jan 2020 18:34:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E52E2867D4;
	Sat, 18 Jan 2020 17:34:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yG47Eo72cGKu; Sat, 18 Jan 2020 17:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F10AA8493F;
	Sat, 18 Jan 2020 17:34:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1ADF1BF5F8
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 17:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A71C787E39
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 17:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eX2sgrFPIiyj for <devel@linuxdriverproject.org>;
 Sat, 18 Jan 2020 17:34:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AC52F85F29
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 17:34:26 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id f129so10665243wmf.2
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 09:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1jOnsoF053Km6go/T2sCH79lEV40yjl4edkCjg1CpyA=;
 b=NoQZ24VXAyUj4z6tsBB8Qx+DzGN4a1DQTYFtEIpb7diIEpZYqyhfAOj31Nzyf0fYjx
 cD0iXSQccKQ7Cs7WUFE4kyNP3mVSPIJrtp55wfvKcWoeFQf+xAhLX3MbNXkjKBX37XFy
 46FwWhV4ereyL9ZbBt5br183WhNqWC7qQmofDVdOS4i4VojlPsSgQHPBrGn6PsW7vMsj
 MuWJggoip9CBuTZULSdO3MOQBwii++yVMNYSlH0zZhXwPrmSYNJKJLgBJWDmsxGKThSe
 OeQ649qlQ8TnfLyNSKwo87xxYyAKfVyBTYpTJkjZmgrB11zhhjAdl7DskO4RDuVDNM7b
 zvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1jOnsoF053Km6go/T2sCH79lEV40yjl4edkCjg1CpyA=;
 b=dK8nvoNZB+20MPCllbJyQGFcYqXiHdk3wFDOBYyay1yTvQH9yDwrTKWoZ//3RsS9LM
 0L0RxALNvfgvXPTyfoDa9TNLDtf6HBKHN0wePsQ7NfMTyrHWRHsgexNqnJUQBCZvTzM2
 hvk8AuNj7x3Kt/e3vw1OU86qih/Ruw0q64nsJC5IdWRz0Mh6YmkToZN8UGq5h3EP1jeB
 OjjoZlNMzSIQzmWx3ihEf1hEqLeimxGmRxqI25otrNPvYTfSM0lSYoOPj2EY6lwXM+8A
 3+2weoSWtICJo21QJSnpekW8E5Mu4oiysKGcK3V83NXNvPij0/kJ0BdrwT5Bwf3n7FYY
 ch7w==
X-Gm-Message-State: APjAAAW0su1DpygCRL1fJEJCIYgadov9SBhu/fE0+NR6DXQtN+WTFnMS
 kXRSGqzdV35MTmrLy1nanc4=
X-Google-Smtp-Source: APXvYqyNJ/ed669KI1Q4xpHUpOtEtMZxe1Ov8qJKVXQrA7IRH9Na9w1OuE5JpYQx1lrWhi569zSstg==
X-Received: by 2002:a1c:f008:: with SMTP id a8mr10427783wmb.81.1579368865111; 
 Sat, 18 Jan 2020 09:34:25 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-143-199.002.204.pools.vodafone-ip.de. [2.204.143.199])
 by smtp.gmail.com with ESMTPSA id q11sm39884347wrp.24.2020.01.18.09.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 09:34:24 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8188eu: remove redundant defines
Date: Sat, 18 Jan 2020 18:33:42 +0100
Message-Id: <20200118173343.32405-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200118173343.32405-1-straube.linux@gmail.com>
References: <20200118173343.32405-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove redundant defines from hal8188e_phy_cfg.h and rtl8188e_dm.h.
All of them are defined in odm.h with the same values.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h | 5 -----
 drivers/staging/rtl8188eu/include/rtl8188e_dm.h      | 7 +------
 2 files changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h b/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h
index da66695a1d8f..0c5b2b0948f5 100644
--- a/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h
+++ b/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h
@@ -15,11 +15,6 @@
 #define MAX_TXPWR_IDX_NMODE_92S		63
 #define Reset_Cnt_Limit			3
 
-#define IQK_MAC_REG_NUM			4
-#define IQK_ADDA_REG_NUM		16
-#define IQK_BB_REG_NUM			9
-#define HP_THERMAL_NUM			8
-
 #define MAX_AGGR_NUM			0x07
 
 
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_dm.h b/drivers/staging/rtl8188eu/include/rtl8188e_dm.h
index 19204335ab4c..910b982ab775 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_dm.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_dm.h
@@ -10,12 +10,7 @@ enum{
 	UP_LINK,
 	DOWN_LINK,
 };
-/*  duplicate code,will move to ODM ######### */
-#define IQK_MAC_REG_NUM		4
-#define IQK_ADDA_REG_NUM		16
-#define IQK_BB_REG_NUM			9
-#define HP_THERMAL_NUM		8
-/*  duplicate code,will move to ODM ######### */
+
 struct	dm_priv {
 	u8	DM_Type;
 	u8	DMFlag;
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
