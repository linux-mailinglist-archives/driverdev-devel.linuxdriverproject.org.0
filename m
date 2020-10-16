Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA4A2904B8
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 14:05:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 78CE02E796;
	Fri, 16 Oct 2020 12:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8CKu-1JksdAL; Fri, 16 Oct 2020 12:05:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 112102E78D;
	Fri, 16 Oct 2020 12:05:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 926131BF3A4
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 12:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EAB18879F
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 12:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dSwvP_CCRZeS for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 12:05:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 787028879D
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 12:05:27 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 10so1383221pfp.5
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 05:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qIgU8Plb5Hs46cFWHX9Gbtdd89uW5HBlBB0rZ1YZFlg=;
 b=Q8jJiAPhYm/407VOToSm9Nu8DVPvMyM63t+fLFLP0YhChsutdYM1TvbMNMGfPLnS8e
 rmI0DBy7197y40qusGvm4Nfp/ro2mqsFrr7vOP3CUmT6+uTrGRkWjrDclhgrHwujqdGO
 xlvNlVv7EW7p+v/H9Y+sJ4aP7ihBPpUlCuAD5GvLhfkzAlCE4HM/3gRxps4QwGiiaq7b
 suaQp3pzNyzyntqox3J9QxylOZnLBWRKY9wnOMDEkokpTZHVmzhDOMKW2bOkh+/DlEMe
 E0D/S1NV6yBpUWz7ZFlym/H0TT90D6n7/ikzG3uvuVIeQ4/eYD+J1BDHI1IVD6Z5hPEN
 fhNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qIgU8Plb5Hs46cFWHX9Gbtdd89uW5HBlBB0rZ1YZFlg=;
 b=do1xu26eq/buvb4cConYsVjacgBCSJiyQzMCBzw9GVfpxSceT5l8iKSg85YEbent/Q
 x0tFPQ+HQ//Iq0sLY3O86bxe8FIU2dGMDrbzeI7uWLx8+iLH4N9JcbcqkYWP3JAanFpl
 u7Mxis1c+DWRwOv4q8XqA4xKYPVdaRRglM3p+ZcZpu4+qdz+G5ICajrEOjjyVwXfj7X/
 kswki6zokvzhrM+qyrMNcvl6I758EF0b9JJMJpH4ON1IDJHJGLurUolXgkhHz5lBlPwu
 qNA1CBwVrkL/Di4aP8stGMZTq/SgfA9vzWR1IFQwd9GJR9s5qFYkm+wk0FtJIEYYiFWB
 pNKQ==
X-Gm-Message-State: AOAM5307cOQeU3MY+1LPpwHC/aCshJsvhgrB6JeINzFXMpZ1nGwSjRuf
 MbrSyW5alb93DPkvz2bTo3Rc8eh9q7itsV1d
X-Google-Smtp-Source: ABdhPJx4YgQUKDxWrW658qt080dTPpi/N6P2877g03FerOyS1Efpo35bR51xKc/8cFKjKMixK+ju6A==
X-Received: by 2002:a63:2246:: with SMTP id t6mr2892831pgm.103.1602849926703; 
 Fri, 16 Oct 2020 05:05:26 -0700 (PDT)
Received: from localhost ([160.16.113.140])
 by smtp.gmail.com with ESMTPSA id e19sm2701300pff.34.2020.10.16.05.05.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 05:05:26 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v3 4/8] staging: qlge: coredump via devlink health reporter
Date: Fri, 16 Oct 2020 19:54:03 +0800
Message-Id: <20201016115407.170821-5-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016115407.170821-1-coiby.xu@gmail.com>
References: <20201016115407.170821-1-coiby.xu@gmail.com>
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

    $ devlink health dump show DEVICE reporter coredump -p -j
    {
        "Core Registers": {
            "segment": 1,
            "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
        },
        "Test Logic Regs": {
            "segment": 2,
            "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
        },
        "RMII Registers": {
            "segment": 3,
            "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
        },
        ...
        "Sem Registers": {
            "segment": 50,
            "values": [ 0,0,0,0 ]
        }
    }

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_devlink.c | 130 ++++++++++++++++++++++++++--
 1 file changed, 124 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
index d9c71f45211f..b75ec5bff26a 100644
--- a/drivers/staging/qlge/qlge_devlink.c
+++ b/drivers/staging/qlge/qlge_devlink.c
@@ -2,16 +2,134 @@
 #include "qlge.h"
 #include "qlge_devlink.h"
 
-static int
-qlge_reporter_coredump(struct devlink_health_reporter *reporter,
-		       struct devlink_fmsg *fmsg, void *priv_ctx,
-		       struct netlink_ext_ack *extack)
+static int qlge_fill_seg_(struct devlink_fmsg *fmsg,
+			  struct mpi_coredump_segment_header *seg_header,
+			  u32 *reg_data)
 {
-	return 0;
+	int regs_num = (seg_header->seg_size
+			- sizeof(struct mpi_coredump_segment_header)) / sizeof(u32);
+	int err;
+	int i;
+
+	err = devlink_fmsg_pair_nest_start(fmsg, seg_header->description);
+	if (err)
+		return err;
+	err = devlink_fmsg_obj_nest_start(fmsg);
+	if (err)
+		return err;
+	err = devlink_fmsg_u32_pair_put(fmsg, "segment", seg_header->seg_num);
+	if (err)
+		return err;
+	err = devlink_fmsg_arr_pair_nest_start(fmsg, "values");
+	if (err)
+		return err;
+	for (i = 0; i < regs_num; i++) {
+		err = devlink_fmsg_u32_put(fmsg, *reg_data);
+		if (err)
+			return err;
+		reg_data++;
+	}
+	err = devlink_fmsg_obj_nest_end(fmsg);
+	if (err)
+		return err;
+	err = devlink_fmsg_arr_pair_nest_end(fmsg);
+	if (err)
+		return err;
+	err = devlink_fmsg_pair_nest_end(fmsg);
+	return err;
+}
+
+#define FILL_SEG(seg_hdr, seg_regs)			                    \
+	do {                                                                \
+		err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
+		if (err) {					            \
+			kvfree(dump);                                       \
+			return err;				            \
+		}                                                           \
+	} while (0)
+
+static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
+				  struct devlink_fmsg *fmsg, void *priv_ctx,
+				  struct netlink_ext_ack *extack)
+{
+	int err = 0;
+
+	struct qlge_adapter *qdev = devlink_health_reporter_priv(reporter);
+	struct qlge_mpi_coredump *dump;
+
+	if (!netif_running(qdev->ndev))
+		return 0;
+
+	dump = kvmalloc(sizeof(*dump), GFP_KERNEL);
+	if (!dump)
+		return -ENOMEM;
+
+	err = qlge_core_dump(qdev, dump);
+	if (err) {
+		kvfree(dump);
+		return err;
+	}
+
+	FILL_SEG(core_regs_seg_hdr, mpi_core_regs);
+	FILL_SEG(test_logic_regs_seg_hdr, test_logic_regs);
+	FILL_SEG(rmii_regs_seg_hdr, rmii_regs);
+	FILL_SEG(fcmac1_regs_seg_hdr, fcmac1_regs);
+	FILL_SEG(fcmac2_regs_seg_hdr, fcmac2_regs);
+	FILL_SEG(fc1_mbx_regs_seg_hdr, fc1_mbx_regs);
+	FILL_SEG(ide_regs_seg_hdr, ide_regs);
+	FILL_SEG(nic1_mbx_regs_seg_hdr, nic1_mbx_regs);
+	FILL_SEG(smbus_regs_seg_hdr, smbus_regs);
+	FILL_SEG(fc2_mbx_regs_seg_hdr, fc2_mbx_regs);
+	FILL_SEG(nic2_mbx_regs_seg_hdr, nic2_mbx_regs);
+	FILL_SEG(i2c_regs_seg_hdr, i2c_regs);
+	FILL_SEG(memc_regs_seg_hdr, memc_regs);
+	FILL_SEG(pbus_regs_seg_hdr, pbus_regs);
+	FILL_SEG(mde_regs_seg_hdr, mde_regs);
+	FILL_SEG(nic_regs_seg_hdr, nic_regs);
+	FILL_SEG(nic2_regs_seg_hdr, nic2_regs);
+	FILL_SEG(xgmac1_seg_hdr, xgmac1);
+	FILL_SEG(xgmac2_seg_hdr, xgmac2);
+	FILL_SEG(code_ram_seg_hdr, code_ram);
+	FILL_SEG(memc_ram_seg_hdr, memc_ram);
+	FILL_SEG(xaui_an_hdr, serdes_xaui_an);
+	FILL_SEG(xaui_hss_pcs_hdr, serdes_xaui_hss_pcs);
+	FILL_SEG(xfi_an_hdr, serdes_xfi_an);
+	FILL_SEG(xfi_train_hdr, serdes_xfi_train);
+	FILL_SEG(xfi_hss_pcs_hdr, serdes_xfi_hss_pcs);
+	FILL_SEG(xfi_hss_tx_hdr, serdes_xfi_hss_tx);
+	FILL_SEG(xfi_hss_rx_hdr, serdes_xfi_hss_rx);
+	FILL_SEG(xfi_hss_pll_hdr, serdes_xfi_hss_pll);
+
+	err = qlge_fill_seg_(fmsg, &dump->misc_nic_seg_hdr,
+			     (u32 *)&dump->misc_nic_info);
+	if (err) {
+		kvfree(dump);
+		return err;
+	}
+
+	FILL_SEG(intr_states_seg_hdr, intr_states);
+	FILL_SEG(cam_entries_seg_hdr, cam_entries);
+	FILL_SEG(nic_routing_words_seg_hdr, nic_routing_words);
+	FILL_SEG(ets_seg_hdr, ets);
+	FILL_SEG(probe_dump_seg_hdr, probe_dump);
+	FILL_SEG(routing_reg_seg_hdr, routing_regs);
+	FILL_SEG(mac_prot_reg_seg_hdr, mac_prot_regs);
+	FILL_SEG(xaui2_an_hdr, serdes2_xaui_an);
+	FILL_SEG(xaui2_hss_pcs_hdr, serdes2_xaui_hss_pcs);
+	FILL_SEG(xfi2_an_hdr, serdes2_xfi_an);
+	FILL_SEG(xfi2_train_hdr, serdes2_xfi_train);
+	FILL_SEG(xfi2_hss_pcs_hdr, serdes2_xfi_hss_pcs);
+	FILL_SEG(xfi2_hss_tx_hdr, serdes2_xfi_hss_tx);
+	FILL_SEG(xfi2_hss_rx_hdr, serdes2_xfi_hss_rx);
+	FILL_SEG(xfi2_hss_pll_hdr, serdes2_xfi_hss_pll);
+	FILL_SEG(sem_regs_seg_hdr, sem_regs);
+
+	kvfree(dump);
+	return err;
 }
 
 static const struct devlink_health_reporter_ops qlge_reporter_ops = {
-	.name = "dummy",
+	.name = "coredump",
 	.dump = qlge_reporter_coredump,
 };
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
