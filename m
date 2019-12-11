Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E590311BB53
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:15:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AA1087F51;
	Wed, 11 Dec 2019 18:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HNpL2A7d--yz; Wed, 11 Dec 2019 18:15:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2DEF87F44;
	Wed, 11 Dec 2019 18:15:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 620231BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4192420480
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4cTTX+rgzCEa for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f68.google.com (mail-yw1-f68.google.com
 [209.85.161.68])
 by silver.osuosl.org (Postfix) with ESMTPS id D949B2302C
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:21 +0000 (UTC)
Received: by mail-yw1-f68.google.com with SMTP id u139so9275592ywf.13
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9JkncaeesNuIE8WTvQZUx23mWDrSVoIuwHyLPtUCqSg=;
 b=lb/1J8qoTqW559dDxbrZtC+Nc0RkCijPhbQu6TquMAUYo9YknkwlnswA/RcJI+TG4t
 eiVoaB+f49UTber3RiaUNi3bt81q0u/5oVbYDWt7nBgBg/lR7/dS9fVZQtVsMDCweT0c
 Ru4/HiFGWOcAciXRc1yKeURXjiupHk2DFzYJm0c4B2kExx7zKP7lUpIBJ8+rpur1oSl5
 XSmbPK6pKbSGUYCEi1Cr5EU6D2gPBDh+n+puUPML+/WX5+HJlGH9jpzygaHddeu9zVjy
 rEsNyp8fvlZog8yeuVVMIMrYzfCFj1fwyH6HzwYm10R0FZp3uz2ftIXFQ0b5NXjM3SBu
 NJiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9JkncaeesNuIE8WTvQZUx23mWDrSVoIuwHyLPtUCqSg=;
 b=jMM288zxvB/Ez3LiFlplk60eKmm5YBsBpvcwO5n9ZgaOi/06s0z1TwLAHM72pnbNyC
 LFBwlfmxCAjNB2Y6E7fVrc6aG/AcfImvcDObq81H+t4z3hGCm+3HmURwNRGh8IrOvICi
 GKMZmunvEKFELDKc2NjVQPcbe7MpPlfi6YYuRZhYKYDoh8KYmVQvge9txowt47DgWS44
 /d/D4a8M0sPS/DYtqK8GqO0xbBu64NGU2CSs4jMDJkwczoLv69pQ9K8H888OTkP3uKuP
 f4lmeq948Dbp4DgzcCN0rqteqJPXo3mxOHilnXGGP/Ni/k39GbG4WwJulfd9KfcHYf+Z
 Chnw==
X-Gm-Message-State: APjAAAWf4lHV/vaasUWKGIkHuyhdHEDfoTTSX7IZ7Wmpk8oueMJSMS0t
 T0RWPNUvwTdQM62KJRt8v6c=
X-Google-Smtp-Source: APXvYqx5pecnyYiOx1TlmB0rRSstCJuZC9sA9sSJoO3GNjbXZHsIXz2oRCyF+vJ27Jn3veL28cm4RA==
X-Received: by 2002:a81:7a0d:: with SMTP id v13mr867889ywc.175.1576088120905; 
 Wed, 11 Dec 2019 10:15:20 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id c187sm1275416ywb.97.2019.12.11.10.15.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:20 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 11/23] staging: qlge: Fix CHECK: braces {} should be used
 on all arms of this statement
Date: Wed, 11 Dec 2019 12:12:40 -0600
Message-Id: <0e1fc1a16725094676fdab63d3a24a986309a759.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix CHECK: braces {} should be used on all arms of this statement in
qlge_ethtool.c and qlge_mpi.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_ethtool.c | 18 ++++++++++++------
 drivers/staging/qlge/qlge_mpi.c     |  9 ++++++---
 2 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index 794962ae642c..b9e1e154d646 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -260,8 +260,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 				  "Error reading status register 0x%.04x.\n",
 				  i);
 			goto end;
-		} else
+		} else {
 			*iter = data;
+		}
 		iter++;
 	}
 
@@ -274,8 +275,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 				  "Error reading status register 0x%.04x.\n",
 				  i);
 			goto end;
-		} else
+		} else {
 			*iter = data;
+		}
 		iter++;
 	}
 
@@ -291,8 +293,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 				  "Error reading status register 0x%.04x.\n",
 				  i);
 			goto end;
-		} else
+		} else {
 			*iter = data;
+		}
 		iter++;
 	}
 
@@ -305,8 +308,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 				  "Error reading status register 0x%.04x.\n",
 				  i);
 			goto end;
-		} else
+		} else {
 			*iter = data;
+		}
 		iter++;
 	}
 
@@ -317,8 +321,9 @@ static void ql_update_stats(struct ql_adapter *qdev)
 		netif_err(qdev, drv, qdev->ndev,
 			  "Error reading status register 0x%.04x.\n", i);
 		goto end;
-	} else
+	} else {
 		*iter = data;
+	}
 end:
 	ql_sem_unlock(qdev, qdev->xg_sem_mask);
 quit:
@@ -489,8 +494,9 @@ static int ql_start_loopback(struct ql_adapter *qdev)
 	if (netif_carrier_ok(qdev->ndev)) {
 		set_bit(QL_LB_LINK_UP, &qdev->flags);
 		netif_carrier_off(qdev->ndev);
-	} else
+	} else {
 		clear_bit(QL_LB_LINK_UP, &qdev->flags);
+	}
 	qdev->link_config |= CFG_LOOPBACK_PCS;
 	return ql_mb_set_port_cfg(qdev);
 }
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 4f8365cf2092..4cff0907625b 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -278,8 +278,9 @@ static void ql_link_up(struct ql_adapter *qdev, struct mbox_params *mbcp)
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Failed to init CAM/Routing tables.\n");
 			return;
-		} else
+		} else {
 			clear_bit(QL_CAM_RT_SET, &qdev->flags);
+		}
 	}
 
 	/* Queue up a worker to check the frame
@@ -351,8 +352,9 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	mbcp->out_count = 6;
 
 	status = ql_get_mb_sts(qdev, mbcp);
-	if (status)
+	if (status) {
 		netif_err(qdev, drv, qdev->ndev, "Lost AEN broken!\n");
+	}
 	else {
 		int i;
 
@@ -996,8 +998,9 @@ int ql_mb_get_led_cfg(struct ql_adapter *qdev)
 		netif_err(qdev, drv, qdev->ndev,
 			  "Failed to get LED Configuration.\n");
 		status = -EIO;
-	} else
+	} else {
 		qdev->led_config = mbcp->mbox_out[1];
+	}
 
 	return status;
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
