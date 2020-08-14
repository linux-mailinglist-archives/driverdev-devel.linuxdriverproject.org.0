Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B952F244C6D
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Aug 2020 18:06:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2618A86E1D;
	Fri, 14 Aug 2020 16:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wdQmwJNgQAZ9; Fri, 14 Aug 2020 16:06:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71D9A81AE3;
	Fri, 14 Aug 2020 16:06:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE6E11BF396
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 16:06:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C83F22625C
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 16:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D9nf-Dp8XEPU for <devel@linuxdriverproject.org>;
 Fri, 14 Aug 2020 16:06:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B0A6B24F92
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 16:06:27 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 128so4749346pgd.5
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 09:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M9WYMSFCbeF7C9ExAqegyXspvBxyQXIsGOMcSeUJlhg=;
 b=ckxVzYmW6qBd0JVZbHsJjnSLzl9GHV9AWn58gDa+vINwM1uyUvf1wGC00VRaYpSHiM
 Xebb/7YH4bvluR2fxfI8DJDFDy9+FZ8poKaUKkAfyYVGOMdyRYyc+dqAco7FQdi61XUS
 eoBPWBlckrw72LZBDBkdesfWm9eXI8hi5919nhPznwmZrZNUUbQII5gsmR6V3x5sqEAp
 A6LcUlWem8Y568W8ivGsPN4er9eUu/+9WO4V2Sma4wjscU4voVzytodlHww5iYxarAjV
 quNsendJWgcmBxc05/rPIGpiXt7ZqiiK6IbkMp8Fi6cFAhRCIkYdorPO3x4fy8R6mhw+
 8Rkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M9WYMSFCbeF7C9ExAqegyXspvBxyQXIsGOMcSeUJlhg=;
 b=IBKBbFpYIE77YtrVvo6gLLXkp0MbW5D/fwKVBdSfw0lOG2nVwoAB73giOcwq+wNJQM
 b+KWBWie8mp1KxV8Sky0piD95CUMLnPQRiwjTNziwZ0alDdsWLhuIjT8IyTK/Xm4iTlS
 OkoNp1F2wWFmiiXdZ4M+CfqhblzMBPm//xZjYlEcHXren3earas3WfINzqd/HgPOLqjR
 5d8Ij+RXswnbTk38gWF7yfa95glKu5+YPRh6L5Z58oBQi/sKRDhxPnoPx/u7wRKe9uRd
 zzVmEkSjP4ux+aB5Syth6djb9hjnM6tqyL8WqL5O22ZeIS3BuxNrUqREnHDCMEKvjMWc
 vFqg==
X-Gm-Message-State: AOAM530w8wC8VU8xZJ+GaHIdd0CGoFbi8fhNv25kVUVI8EQAxRzH7JXa
 PCRlesT8gNkzrxOSCP5NyTE=
X-Google-Smtp-Source: ABdhPJzt1deEqWJgPawUZm7NtKgaPyOxzzdwWgxurdy29nvP9UOCpO7sF9V0J+QmVkx+fBdyw4+iDw==
X-Received: by 2002:a63:fd11:: with SMTP id d17mr2174935pgh.272.1597421187050; 
 Fri, 14 Aug 2020 09:06:27 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id z77sm10478394pfc.199.2020.08.14.09.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Aug 2020 09:06:26 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: netdev@vger.kernel.org
Subject: [RFC 2/3] staging: qlge: coredump via devlink health reporter
Date: Sat, 15 Aug 2020 00:06:00 +0800
Message-Id: <20200814160601.901682-3-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200814160601.901682-1-coiby.xu@gmail.com>
References: <20200814160601.901682-1-coiby.xu@gmail.com>
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
Cc: Michal Kubecek <mkubecek@suse.cz>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

    $ devlink health dump show DEVICE reporter coredump -p -j
    {
        "Core Registers": {
            "segment": 1,
            "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
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
 drivers/staging/qlge/qlge_health.c | 125 +++++++++++++++++++++++++++--
 1 file changed, 119 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/qlge/qlge_health.c b/drivers/staging/qlge/qlge_health.c
index 292f6b1827e1..a146cca6a3dc 100644
--- a/drivers/staging/qlge/qlge_health.c
+++ b/drivers/staging/qlge/qlge_health.c
@@ -1,16 +1,129 @@
 #include "qlge.h"
 #include "qlge_health.h"

-static int
-qlge_reporter_coredump(struct devlink_health_reporter *reporter,
-			struct devlink_fmsg *fmsg, void *priv_ctx,
-			struct netlink_ext_ack *extack)
+static int fill_seg_(struct devlink_fmsg *fmsg,
+		    struct mpi_coredump_segment_header *seg_header,
+		    u32 *reg_data)
 {
-	return 0;
+	int i;
+	int header_size = sizeof(struct mpi_coredump_segment_header);
+	int regs_num = (seg_header->seg_size - header_size) / sizeof(u32);
+	int err;
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
+#define fill_seg(seg_hdr, seg_regs)			       \
+	err = fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
+	if (err) {					       \
+		kvfree(dump);                                  \
+		return err;				       \
+	}
+
+static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
+				  struct devlink_fmsg *fmsg, void *priv_ctx,
+				  struct netlink_ext_ack *extack)
+{
+	int err = 0;
+
+	struct qlge_devlink *dev = devlink_health_reporter_priv(reporter);
+	struct ql_adapter *qdev = dev->qdev;
+	struct ql_mpi_coredump *dump = kvmalloc(sizeof(struct ql_mpi_coredump),
+							GFP_KERNEL);
+	if (!dump)
+		return -ENOMEM;
+
+	err = ql_core_dump(qdev, dump);
+	if (err) {
+		kvfree(dump);
+		return err;
+	}
+
+	fill_seg(core_regs_seg_hdr, mpi_core_regs);
+	fill_seg(test_logic_regs_seg_hdr, test_logic_regs);
+	fill_seg(rmii_regs_seg_hdr, rmii_regs);
+	fill_seg(fcmac1_regs_seg_hdr, fcmac1_regs);
+	fill_seg(fcmac2_regs_seg_hdr, fcmac2_regs);
+	fill_seg(fc1_mbx_regs_seg_hdr, fc1_mbx_regs);
+	fill_seg(ide_regs_seg_hdr, ide_regs);
+	fill_seg(nic1_mbx_regs_seg_hdr, nic1_mbx_regs);
+	fill_seg(smbus_regs_seg_hdr, smbus_regs);
+	fill_seg(fc2_mbx_regs_seg_hdr, fc2_mbx_regs);
+	fill_seg(nic2_mbx_regs_seg_hdr, nic2_mbx_regs);
+	fill_seg(i2c_regs_seg_hdr, i2c_regs);
+	fill_seg(memc_regs_seg_hdr, memc_regs);
+	fill_seg(pbus_regs_seg_hdr, pbus_regs);
+	fill_seg(mde_regs_seg_hdr, mde_regs);
+	fill_seg(nic_regs_seg_hdr, nic_regs);
+	fill_seg(nic2_regs_seg_hdr, nic2_regs);
+	fill_seg(xgmac1_seg_hdr, xgmac1);
+	fill_seg(xgmac2_seg_hdr, xgmac2);
+	fill_seg(code_ram_seg_hdr, code_ram);
+	fill_seg(memc_ram_seg_hdr, memc_ram);
+	fill_seg(xaui_an_hdr, serdes_xaui_an);
+	fill_seg(xaui_hss_pcs_hdr, serdes_xaui_hss_pcs);
+	fill_seg(xfi_an_hdr, serdes_xfi_an);
+	fill_seg(xfi_train_hdr, serdes_xfi_train);
+	fill_seg(xfi_hss_pcs_hdr, serdes_xfi_hss_pcs);
+	fill_seg(xfi_hss_tx_hdr, serdes_xfi_hss_tx);
+	fill_seg(xfi_hss_rx_hdr, serdes_xfi_hss_rx);
+	fill_seg(xfi_hss_pll_hdr, serdes_xfi_hss_pll);
+
+	err = fill_seg_(fmsg, &dump->misc_nic_seg_hdr,
+		       (u32 *) &dump->misc_nic_info);
+	if (err) {
+		kvfree(dump);
+		return err;
+	}
+
+	fill_seg(intr_states_seg_hdr, intr_states);
+	fill_seg(cam_entries_seg_hdr, cam_entries);
+	fill_seg(nic_routing_words_seg_hdr, nic_routing_words);
+	fill_seg(ets_seg_hdr, ets);
+	fill_seg(probe_dump_seg_hdr, probe_dump);
+	fill_seg(routing_reg_seg_hdr, routing_regs);
+	fill_seg(mac_prot_reg_seg_hdr, mac_prot_regs);
+	fill_seg(xaui2_an_hdr, serdes2_xaui_an);
+	fill_seg(xaui2_hss_pcs_hdr, serdes2_xaui_hss_pcs);
+	fill_seg(xfi2_an_hdr, serdes2_xfi_an);
+	fill_seg(xfi2_train_hdr, serdes2_xfi_train);
+	fill_seg(xfi2_hss_pcs_hdr, serdes2_xfi_hss_pcs);
+	fill_seg(xfi2_hss_tx_hdr, serdes2_xfi_hss_tx);
+	fill_seg(xfi2_hss_rx_hdr, serdes2_xfi_hss_rx);
+	fill_seg(xfi2_hss_pll_hdr, serdes2_xfi_hss_pll);
+	fill_seg(sem_regs_seg_hdr, sem_regs);
+
+	kvfree(dump);
+	return err;
 }

 static const struct devlink_health_reporter_ops qlge_reporter_ops = {
-		.name = "dummy",
+		.name = "coredump",
 		.dump = qlge_reporter_coredump,
 };

--
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
