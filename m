Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D78531F7EC
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 12:08:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 186F4870AA;
	Fri, 19 Feb 2021 11:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQ7bJ9aSyWhu; Fri, 19 Feb 2021 11:08:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23E90870B1;
	Fri, 19 Feb 2021 11:08:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67C9D1BF2C2
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:08:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 629DE86BA4
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:08:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qZrGPjlvmj1W for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 11:08:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C3E5086B33
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 11:08:03 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id r2so3166562plr.10
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 03:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u5F72tWqz3dbWWau6aSsgoog6J6+mBzVvjp77XY1zTQ=;
 b=BKf5uhQHsJELvSI4S0XcpgEY5puijd14YYKq23NCH8ly25PUz/kV+g07FXlDZfRMiG
 k2KmNT5v5rWbOuWq/kahtq7siVLVOaglFy9fAmiRssAYAHbbv7xWgGiIB+8qEZMn2Ubv
 TFq85UT3N7/l4lLU2rHVwjvUbu9kZG7MAocexjjjOCQuPMIbmG0YrdDHIJC7hTFSlTDb
 pZCo+/WmN2y7Kj6ogjpcwS4WZaY7vEa6ftjOxzdp6O55Emhm31rP5PIhSNP6qxkC9MMJ
 FtZFmKOmLFiN46FvOz8olUZfWqb2kjCNWfhF7cEzETRve5X6GnbIrDs0aDD64Kr0fhP1
 biJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u5F72tWqz3dbWWau6aSsgoog6J6+mBzVvjp77XY1zTQ=;
 b=aBbVbOdF5huWb0mvCbJ3MdmkSFMG/9SardUkAmDZS0aFX4stdYl1U0GhyDYNdXvPvD
 Z81jYT4B8FQxnlT3LxZ5qM/HQyCPbPW/z0Z5K79r/Dlnvae2gwBlhRRao0WEKRjtftq7
 Zaegx31S0kCpM3DR6OFeDacjQrjaWNol1eDtfpqDyRXCn/wdUQqr9ImmYa4AZI0DrbYZ
 4ApDK3aD1pFlMaq7ENh0FuHEvtfmVHH+OLSC6np60cmvv1szWb1dEGBBVVFA5ftQVxxZ
 NgXepSqqkURftMHHBrigy/JaWxOgOtjYXkpS+VZVLACh3U6PQYVUmUYXLBhQ0AE1lD0j
 pkYg==
X-Gm-Message-State: AOAM532vCAkMG83zrvbdl0dEPhw/sn0kWq9c0lq0DiRYRAejPHxnyWaW
 psCRSBqLFmCgVzBfVOWVygY=
X-Google-Smtp-Source: ABdhPJx5IatJrigs8jbbZXEDSasj/jqHYo1082PYknUB5GczJsReUXehYD7C7gt3VLcx93CN065Ecg==
X-Received: by 2002:a17:902:7e02:b029:e3:7810:a78d with SMTP id
 b2-20020a1709027e02b02900e37810a78dmr8741714plm.17.1613732883411; 
 Fri, 19 Feb 2021 03:08:03 -0800 (PST)
Received: from ThinkCentre-M83.wg.ducheng.me ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id t21sm9555113pfe.174.2021.02.19.03.08.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 03:08:03 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 3/3] staging: rtl8192u: fixed coding style of
 r8190_rtl8256.c
Date: Fri, 19 Feb 2021 19:07:55 +0800
Message-Id: <20210219110755.4993-3-ducheng2@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210219110755.4993-1-ducheng2@gmail.com>
References: <20210219110755.4993-1-ducheng2@gmail.com>
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

remove the unnecessary return at the end of function
phy_set_rf8256_ofdm_tx_power(), reported by scripts/checkpatch.pl.

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 3e6bd6caf9da..54747fda552f 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
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
