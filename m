Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6719E31C8C5
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 11:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7CDE87095;
	Tue, 16 Feb 2021 10:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T14Dm5efTkbD; Tue, 16 Feb 2021 10:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EB7A86F5E;
	Tue, 16 Feb 2021 10:28:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD8FD1BF300
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 10:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B59F986FF2
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 10:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZQUAq84Zb1Db for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 10:28:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 00A5E86F5E
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 10:28:17 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id ba1so5266163plb.1
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 02:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MJg33NNZXXG6FBcEl6Td0Ng2Z0yMii4gRK7tTsDNBmY=;
 b=VyqBdn3xtsvpSe4i9iC27yBbHRQ/hokLD8fesD4IXKz3g3a6FW+3FQekY6Eq8K0I3p
 PLUFdry0V3WrbLDbJ0NrxodmVK+b6o1qUPi5hVcnoatz5yQe1HaF2uqgi/5xqwCAHXwS
 hi8h0CeitNHeSDw0k6rbBh7V9t0tM1XsIdgoFi9Fv3bwNKkKRwW7o6CeJ01lB/0ivUwf
 GukVNv/33fycJsL5/2ebWhiWbGRgH7HwKznJDeVGwo1SUNSXl+S4cShq/PUdFUcmShdv
 0HSs2NM1Gm3IHKzw3g/hxX8Y0NSWj77kJgrTgcRK4Ca5wtnZnx5k5Jd5lOR9So4iTfKw
 Tolg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MJg33NNZXXG6FBcEl6Td0Ng2Z0yMii4gRK7tTsDNBmY=;
 b=A0Cl4qeXBOB3mf7gnX/EMnxVwQ4DxjLH6EdO+GRmJ3wy8zTv0MI5QVnYwtzQSWK+ol
 4Eio5JI9qyL5Wbi5J+OVLJFDIHCP/2byJADa193ksPlOUCVduMlX6qkRmYRyRJK606yQ
 ibRcuYpC9ciaTDlSk8O6qFY7gf2ttlyVjA/+cgLdbaI4iut824Uo2fI3Ah1P5aZKNUar
 CINdEf9bwyQ0uIGQNsNqiM4vbALr+/OyuG0mtrgzVzQAszyQ34yeS4VGaCPN/WQdc+em
 Jw2+g3KlekwNNkU9gByLr/eDMbEpwnTmcayjI7P117CmQ4TeDmDDxUwDtpyGmbDS69+P
 PZfQ==
X-Gm-Message-State: AOAM531cDebbtMRKYqJDhuvGFOYczcnvsmn9Et8qz8Oti4e7zvFqwJI7
 kpyAgTlQISu/WKUQ+69+7WM=
X-Google-Smtp-Source: ABdhPJzTLN/O9VJ6JkYwxjiNzTveWRAsJM7/0A7vSfuGWkJpTtASOxoJcOenGabmruXHHVevaRY+yQ==
X-Received: by 2002:a17:90a:f2d8:: with SMTP id
 gt24mr3457035pjb.167.1613471297549; 
 Tue, 16 Feb 2021 02:28:17 -0800 (PST)
Received: from ThinkCentre-M83.c.infrastructure-904.internal
 ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id 21sm21087336pfh.56.2021.02.16.02.28.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 02:28:17 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: rtl8192u: fix coding style in r8190_rtl8256.c
Date: Tue, 16 Feb 2021 18:28:06 +0800
Message-Id: <20210216102806.188405-1-ducheng2@gmail.com>
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

these coding style issues are flagged as warnings by scripts/checkpatch.pl.


Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
changes v2:
* improve description and subject

changes v1:
* fix coding style

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
