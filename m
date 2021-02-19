Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3D731FBA0
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 16:05:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF3BE8715E;
	Fri, 19 Feb 2021 15:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wqRgAHVq5Q3F; Fri, 19 Feb 2021 15:05:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80C0B87132;
	Fri, 19 Feb 2021 15:05:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A46451BF3C1
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 15:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9FB6D86B2A
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 15:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cfHW0TbPQIeL for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 15:05:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1CFC86B02
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 15:05:33 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id ba1so3526626plb.1
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 07:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hznqCu5rB3qhJG4IlA+PgbBO43fgv40AJPIU51KoO/k=;
 b=QWn+JXD/mb7r2oZ0kuHuifInJ4tO2A2S3+FsXjLeSR3M9JdAhQzhaNpkSLjSC2mGXC
 ao99NFanFQqbiUBzMsHb+JpNqGiIOtDvv8qCaG8DCtl7FZ5m2KLwxhIsbHpZXOZg8Gs8
 XYRXUhRngiTU8qeOfKLJLWdMgzV/DyzCrTpZku9Ol3JxT9wX9DF32hzkjMGstAi8iKNX
 frnaL5F0CG7SlzS+5s9MGRFou4+0XCpYIbcjnkboHhImqjbA4JBUd6HA52Hqlh2CiTGV
 ity0EjjaT/0LdHTEobeYhz6KmLn5tLrz41Didi9SAPrDVwa/3eAxtZVxN4LO3wSmmq8c
 VWqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hznqCu5rB3qhJG4IlA+PgbBO43fgv40AJPIU51KoO/k=;
 b=ZVYB26SIIu94dkAiEYClR0jEhHhl185/7RsSPQ2Yv8htcJYmg6M74vplj/tQKptJBa
 N0bAI1WU9GFb5ybxv8bO2d7ylxMrlWcd216pjryiywcTwLTd9bISiJTpQbUc29nlrCXo
 s3hgc7Dh9jSBNErZEG5aryMI4uJl45LdBR+oNLT1fgxXlBih17WAyHx7CPRkrVTdQn8P
 FaYjl7E1LntqRMOyXYy9RiyaiIhHB05Ca9Ux+/lH/Vj4gNXBBrt3jSOggc2byC7uLtJq
 xItP0ljVkhFbQpqkKuBVLdY73nc0bzP+rEUr2As24s3NcU56OvudNHu6y7geepOQ1LVD
 2Kdw==
X-Gm-Message-State: AOAM530ktnYIBtq4Y+A7fgoYN/tOYlhxhyFU8udyv0bhw7AfYhIrnBeU
 /vXB/MVNkgW5HeLnYrt/xgmyjluwM6GlgRQV
X-Google-Smtp-Source: ABdhPJx3zPrnyzTbInHJIeJqlBooGCCGbAP9jh1hZlkIb2YXAodCii03PuWMTB9YSFnDaecwcKhGWg==
X-Received: by 2002:a17:902:6b87:b029:dc:3402:18af with SMTP id
 p7-20020a1709026b87b02900dc340218afmr9898482plk.29.1613747133202; 
 Fri, 19 Feb 2021 07:05:33 -0800 (PST)
Received: from ThinkCentre-M83.wg.ducheng.me ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id b15sm5635956pgg.85.2021.02.19.07.05.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 07:05:31 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v5 1/2] staging: rtl8192u: fix RT_TRACE() in r8190_rtl8256.c
Date: Fri, 19 Feb 2021 23:05:26 +0800
Message-Id: <20210219150527.8358-1-ducheng2@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Du Cheng <ducheng2@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

use MACRO __func__ instead of the literal names for RT_TRACE()
in phy_set_rf8256_bandwidth() and phy_rf8256_config_para_file(),
as reported by scripts/checkpatch.pl.

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
changes v5:
* fixed subject lines to be distinct and more specific

changes v4:
* merge two similar patches into 1

changes v3:
* break up changes into 3 patches

changes v2:
* improvedescription

changes v1:
* fix coding style

 drivers/staging/rtl8192u/r8190_rtl8256.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index fee3bfb99075..3e6bd6caf9da 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -73,11 +73,11 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
 					else
 						rtl8192_phy_SetRFReg(dev, (enum rf90_radio_path_e)eRFPath, 0x14, bMask12Bits, 0x5ab);
 				} else {
-					RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown hardware version\n");
+					RT_TRACE(COMP_ERR, "%s(): unknown hardware version\n", __func__);
 					}
 				break;
 		default:
-				RT_TRACE(COMP_ERR, "phy_set_rf8256_bandwidth(): unknown Bandwidth: %#X\n", Bandwidth);
+				RT_TRACE(COMP_ERR, "%s(): unknown Bandwidth: %#X\n", __func__, Bandwidth);
 				break;
 		}
 	}
@@ -213,7 +213,7 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 		}
 
 		if (ret) {
-			RT_TRACE(COMP_ERR, "phy_rf8256_config_para_file():Radio[%d] Fail!!", eRFPath);
+			RT_TRACE(COMP_ERR, "%s():Radio[%d] Fail!!", __func__, eRFPath);
 			goto phy_RF8256_Config_ParaFile_Fail;
 		}
 	}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
