Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC01728DF30
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 12:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9F96E2E284;
	Wed, 14 Oct 2020 10:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b3AOwp227WVi; Wed, 14 Oct 2020 10:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 503342E26D;
	Wed, 14 Oct 2020 10:43:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C69A71BF575
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C336587B70
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnRgyPwOMT9D for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 10:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D71D87B6A
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 10:43:34 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id w21so1551736plq.3
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 03:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qIgU8Plb5Hs46cFWHX9Gbtdd89uW5HBlBB0rZ1YZFlg=;
 b=sed0cA5GJzQVFFxJrrUlxVNNrQL7JVk/2PDFawxTg7W7vZA9xbiBn3gZO48cwpVcqO
 pvCd8v+o1eGzyMJFWGWTx4bXKkROcotiWyzAzPcztVaH/CjLhaBua+9L3YIycnfCd0X8
 Qn4nroqgSejm/to27vVOHccyF64rvyIm0VAw78wiMrMyZnWzJkkN0CQPWkgIJ3PWrHTq
 52CuP/doyCEFOQIKR25fN89oH5yER27mSCuxIuvx/g+zV2+pRGXOhzwDdIkPon6wC7zq
 XL4FwgJ3z3bSu3hF60fzspC5TLI5Tq8rnDFYaAA8KTFjm8MTqLmK15p8Ek53ace0T+zo
 uUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qIgU8Plb5Hs46cFWHX9Gbtdd89uW5HBlBB0rZ1YZFlg=;
 b=G0IpGeZ7/L9nQfvS6yjdwrLqTYPwFdo4EMeJSzjYUXIBaobAC48tf99KBZrWegkyoD
 q+jIn3XZBx2YXdro82wwP7jwwVg4XC+Bm0QfBUZCgTTkqKoAmG5bks+A2071sbnYLvCc
 vhy5yPveiKEH9xkkhyf+Ks3L9RSasLzQhT5srETNSas+kqKefxbLV6WO2M0vWPdcc7AP
 7Jg3RuqhwoVkHh6a+Jp120x5pcdgMIzuiG6PkeQUzUxx07JT/2zP4Ly9cAvdaPC4pPO1
 qEEI6yWRf64TI3/fDiix3kFIOvnvDVtGrmiltOJuX5xVtAYRo437umiyAA11cryz2bJL
 N0hQ==
X-Gm-Message-State: AOAM533gL8bQwNuQcvjv2jfIgbZpIE+iuufeC8odvI+u/BK8JWYjFapW
 kqFRO8iIjGkv9sF7xfPL9VZUM8b4m4HgP7nM
X-Google-Smtp-Source: ABdhPJyEXvzgUfT3YSJriY5rR1QEp4asxteO8MpeOSa+DQzMg1Qf1j35iMp8l2HeCTND5MdwKDIOMg==
X-Received: by 2002:a17:902:778e:b029:d2:8046:efe2 with SMTP id
 o14-20020a170902778eb02900d28046efe2mr3693851pll.44.1602672213426; 
 Wed, 14 Oct 2020 03:43:33 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id c15sm3100887pgg.77.2020.10.14.03.43.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 03:43:33 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 3/7] staging: qlge: coredump via devlink health reporter
Date: Wed, 14 Oct 2020 18:43:02 +0800
Message-Id: <20201014104306.63756-4-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104306.63756-1-coiby.xu@gmail.com>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
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
