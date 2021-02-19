Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1BC31F8AC
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 12:55:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BDA6870FC;
	Fri, 19 Feb 2021 11:55:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FD5pdmiF4Eru; Fri, 19 Feb 2021 11:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 342B1870FD;
	Fri, 19 Feb 2021 11:55:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 391791BF2C2
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27F786068A
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:55:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id igwwcupjI1Fu for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 11:55:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 655C2606D7; Fri, 19 Feb 2021 11:55:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 398466068A
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 11:55:46 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id cx11so1443906pjb.4
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 03:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uXMkBCpRJ6scjkc2bs9pppvaxjEwsHUsIpJYb192gzM=;
 b=ONImUYKohQApRvDB/kPK1nvhxOaeK2W9mbtcYdxfBTUnAn9Vqd71381SikuYntDrLr
 k5bGvlAGHeXC1YGUJtlfiem6LAfbeoF8dubeF7UZErtFQ/UuEWap3Co478zVuoEkCLR1
 d1PBzV2qWhpneaH+1S8iKpXe38PJZdnl88Btm51E0ObLsl9zznsmDkuAcKEyY0Q9qmd8
 zGzREhLEmsYtqv9Ye50K7apFVLNFvbxacCwh59m86IMHddGeeOVQhKv6L9mcSfeREqV4
 6Mv9SqyI4sEdCjDAFL0dRPuFpw5RzyNHERwPK7mrcbBPDHsYEZV5uLbSwdu3edmmvJUf
 OTLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uXMkBCpRJ6scjkc2bs9pppvaxjEwsHUsIpJYb192gzM=;
 b=bjruJ7GGC/mUBPgI7N86Z4BUI8yMNx/3M6dfDYCRnN7g4BVOVJbSUqf9n0PFP0rpB1
 JOetCaiiAjR5kbkfzj4RQ2GhAdi6JxSgrXyApNvd6z39TxQUfxSWSI87R5QzA8/voqG3
 4FU1a65ABXHbg1aNZgSb4sVqNHY4LRLPorriFna7dRqDil7br0e9BE9WQglokEnFfyVL
 ktgDhjC7YQc3ngSHr1gc81w3dSoGj/pM2xp/gataUUjWDSem1ttHqmo0EfFiR+B0pGaW
 XG8BgIHwER5V02sfLalnwKAHC64/YeLWOWF2XrqhU+erVU4tj6us6pDjnN6M4Bp1Zxw/
 aHnw==
X-Gm-Message-State: AOAM530OiMmbmT6514l9VBfGUqTeKIOFOL4XW2fwbMLXITxyEKvqRsyO
 HRmVhvHuVGZH6xHfW+a4XeI=
X-Google-Smtp-Source: ABdhPJx+LwIdFtXV6DXEAzOCOIva0KS0qeRXaXmx0YQJXpqzG5CHz4GBCNnXouCI6RK8PEYiuwJbmA==
X-Received: by 2002:a17:90a:fb4e:: with SMTP id
 iq14mr9047295pjb.18.1613735745545; 
 Fri, 19 Feb 2021 03:55:45 -0800 (PST)
Received: from ThinkCentre-M83.wg.ducheng.me ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id a5sm8957224pgl.41.2021.02.19.03.55.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 03:55:45 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 1/2] staging: rtl8192u: fixed coding style of
 r8190_rtl8256.c
Date: Fri, 19 Feb 2021 19:55:40 +0800
Message-Id: <20210219115541.6420-1-ducheng2@gmail.com>
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
