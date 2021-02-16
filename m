Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AEA31C60B
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 05:44:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7FA386787;
	Tue, 16 Feb 2021 04:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z8vgKIUkSHcR; Tue, 16 Feb 2021 04:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF0C485B8D;
	Tue, 16 Feb 2021 04:44:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7842C1BF319
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 04:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7291F84BDF
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 04:44:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jrTjWZ0ScAda for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 04:44:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F056B84B1C
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 04:44:47 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id cv23so4949839pjb.5
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 20:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4qnjzE2D0d1M5saoZvfXwItwI2U1nkNRY+oaOAHaGXk=;
 b=NfIdrtAxRc/ez/iut2w8sI0y8eTytytQT76/Ki3IRPJXCzSlUexdAt4zQWgEHr+qvS
 OwrJJwPyQYbCq9u0OmhUFhgEFilfE6sUaHptxSrmrNZmPrM6TvNYWg12IytRHSy8Q3mA
 e/evCckGfUeI4OY14Ui5t39BD3XL9OHCACTJJphBNnDc0esLDvq/yMhbnSEXD9YVOtBh
 7VvNP+zwFT6mRRrEoN89T7nXieGXAZyaGPCs+23QpQXbQDNvDaxpe/l2LwO/U482D7p6
 M0dpVxm4k/kS8RdLWXlaTFs3fLytjrM7DdBnhah2XAmJCYDWc5FOFqi29dR4VSVdDjw0
 rVnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4qnjzE2D0d1M5saoZvfXwItwI2U1nkNRY+oaOAHaGXk=;
 b=J3TOsXg1dElkUMiZpRJtwBVA/Cb6HA085r9HeO1oRzzYzTYxwmPkB/vmYDvUzX0rW6
 FejX8/oNyNPqb7jEotHFQ8DvyvZCHLJpfh9ne9KrLxH2vaqzGQ+R5/0ZDKzCdw/Ivepd
 G/2AmfLI7M1lyisoOP9qaFzaMLV5808un8gzrrPtthwRpEc22ivhP2SIX9bXOxFM3gMz
 FRVq5zWj0CbzDZcpBrTgeJDJe4CBN3UlFbtvmwhSJB8rjcnwYj0AFfXjYsvMrNQcC5bQ
 2KZxODPeeQDUMcL5gizV1IADjUAwx9symsqFHjaN4Jc3xwm/A9bUHEUYB6FEWOIn/YJU
 Rq2w==
X-Gm-Message-State: AOAM532AvCJKGOiuC6SaRwOZ4xZ4bdh4W/pILrjLqvDEDAb/rS+bakIe
 bP7LpowrEuccI8X6DLgMaWQ=
X-Google-Smtp-Source: ABdhPJzKELe0uts9sO97nuqfkIKP3QpXHHwlugWg5/Rq6jPIhzJ7FzAhNChLFsUmiq/MW59Bb5EfXg==
X-Received: by 2002:a17:90b:33c4:: with SMTP id
 lk4mr2434146pjb.157.1613450687536; 
 Mon, 15 Feb 2021 20:44:47 -0800 (PST)
Received: from ThinkCentre-M83.c.infrastructure-904.internal
 ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id x17sm19305129pfq.132.2021.02.15.20.44.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 20:44:47 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] fix coding style of drivers/staging/rtl8192u/r8190_rtl8256.c
Date: Tue, 16 Feb 2021 12:44:42 +0800
Message-Id: <20210216044442.160107-1-ducheng2@gmail.com>
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

use __func__ macro instead of literal function name in RT_TRACE() in
 * phy_set_rf8256_bandwidth()
 * phy_rf8256_config_para_file()

remove unnecessary return at the end of phy_set_rf8256_ofdm_tx_power()

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index fee3bfb99075..54747fda552f 100644
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
@@ -291,5 +291,4 @@ void phy_set_rf8256_ofdm_tx_power(struct net_device *dev, u8 powerlevel)
 		}
 		rtl8192_setBBreg(dev, RegOffset[index], 0x7f7f7f7f, writeVal);
 	}
-	return;
 }
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
