Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C324911BB46
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:15:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 216B386D26;
	Wed, 11 Dec 2019 18:15:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gVtcGbnfIShn; Wed, 11 Dec 2019 18:15:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFB2285F5D;
	Wed, 11 Dec 2019 18:15:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3F111BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 83918885A3
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cR5Y1SPgOh8E for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
 [209.85.161.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C7C508861A
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:12 +0000 (UTC)
Received: by mail-yw1-f67.google.com with SMTP id 10so9307454ywv.5
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hG8SSrSMjGXENG9FtwgNHRKUSBYB279zh/9HfEeLdlg=;
 b=SFCv+Dy8JK6iTtiVINTIW483rnpfX1DCbm/ACl7OLyTVcAjbl4psdVD/Kgnaovm3ky
 8Dfl7wPFcmdoG74f7mRj7HaTo9Bs5IinIBDoMKZGtriKYlvXFwNighzMHA2wEz8KQXDD
 xbXast2JCelPZEi6Dawwkok36exSUOK2gCsDz2aTBRBDKFBAL7efErVqMuOKaTEX89iS
 p0irw/CZjx5qgSg/m69yiPeRQmCLHInHwLNk3ZayNQp2X+bondF810Dm9K+ZuwnnrcoJ
 vuN1QW/US7nDvRRnPLbXC2Ac89pJDyHwbnkL1GYzPQCIXPCfO1ZJUY/yLObr6jF1cFVY
 TIGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hG8SSrSMjGXENG9FtwgNHRKUSBYB279zh/9HfEeLdlg=;
 b=scDvAZLQOkkoouuFrr+LiMeDDY4QfmD/TwC1QX6NF8NvffN44AM2+vK9Uch3XoLXo+
 s3GpLCBIL0a7FiVJg9I2c6cXNGCAuRERvmMAqdcb0cxfyrS1jViJAJ0/6LY3EnGjdBCa
 u1tIO6GTARXOvmTpjcskeWQ0dGc6TfLWR2xSVJLvn/BAL9wio6cI74EOIkGITOdFIgr/
 rVu9d5/c77xdmHvIhWQiYnVffj4tTPTyWLhtVXEALnzPCbCvOwuMw+BM+wVT9m1tgpew
 Yb2PG5HBysHTd6od71p5GnMsnLlaUFhR9wJ8AEZffCqhGaSvUA5M6a0XOteGzun8ajhf
 x9PQ==
X-Gm-Message-State: APjAAAX7b8blTWLdeKtdA5Nn4l8P1I/FvV36wWxh3gpDGxP1DxayGUes
 RtmHUVmrXhiP+4Jz1Ey/J2s=
X-Google-Smtp-Source: APXvYqzI09j+iI9VlzxzIt3J86LSOyuAGfFjie2v5mkyADXX0r06wRpML08SdBCGfCWqDNt1AkQmYg==
X-Received: by 2002:a81:a00a:: with SMTP id x10mr838433ywg.475.1576088111598; 
 Wed, 11 Dec 2019 10:15:11 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id y9sm1332383ywc.19.2019.12.11.10.15.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:11 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 05/23] staging: qlge: Fix CHECK: Blank lines aren't
 necessary before a close brace '}'
Date: Wed, 11 Dec 2019 12:12:34 -0600
Message-Id: <ca11055798ea77bfe8f8e78f3f6f721b48eeea6a.1576086080.git.schaferjscott@gmail.com>
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

Fix CHECK: Blank lines aren't necessary before a close brace '}' in the
following files:

qlge_dbg.c
qlge_main.c
qlge_mpi.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c  | 3 ---
 drivers/staging/qlge/qlge_main.c | 3 ---
 drivers/staging/qlge/qlge_mpi.c  | 2 --
 3 files changed, 8 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 71fce1f850c7..b44f80e93b27 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -553,7 +553,6 @@ static int ql_get_probe_dump(struct ql_adapter *qdev, unsigned int *buf)
 	buf = ql_get_probe(qdev, PRB_MX_ADDR_FC_CLOCK,
 			   PRB_MX_ADDR_VALID_FC_MOD, buf);
 	return 0;
-
 }
 
 /* Read out the routing index registers */
@@ -1205,7 +1204,6 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 err:
 	ql_sem_unlock(qdev, SEM_PROC_REG_MASK); /* does flush too */
 	return status;
-
 }
 
 static void ql_get_core_dump(struct ql_adapter *qdev)
@@ -1860,7 +1858,6 @@ void ql_dump_tx_desc(struct tx_buf_desc *tbd)
 	pr_err("tbd->flags = %s %s\n",
 	       tbd->len & TX_DESC_C ? "C" : ".",
 	       tbd->len & TX_DESC_E ? "E" : ".");
-
 }
 
 void ql_dump_ob_mac_iocb(struct ob_mac_iocb_req *ob_mac_iocb)
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 34786e2c0247..1a5b82b68b44 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -775,7 +775,6 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
 				  "Error reading flash.\n");
 			goto exit;
 		}
-
 	}
 
 	status = ql_validate_flash(qdev,
@@ -1244,7 +1243,6 @@ static void ql_unmap_send(struct ql_adapter *qdev,
 						     maplen), PCI_DMA_TODEVICE);
 		}
 	}
-
 }
 
 /* Map the buffers for this transmit.  This will return
@@ -1358,7 +1356,6 @@ static int ql_map_send(struct ql_adapter *qdev,
 		dma_unmap_addr_set(&tx_ring_desc->map[map_idx], mapaddr, map);
 		dma_unmap_len_set(&tx_ring_desc->map[map_idx], maplen,
 				  skb_frag_size(frag));
-
 	}
 	/* Save the number of segments we've mapped. */
 	tx_ring_desc->map_cnt = map_idx;
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 22ebd6cb8525..0f9bd9a8b523 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -122,7 +122,6 @@ int ql_own_firmware(struct ql_adapter *qdev)
 		return 1;
 
 	return 0;
-
 }
 
 static int ql_get_mb_sts(struct ql_adapter *qdev, struct mbox_params *mbcp)
@@ -363,7 +362,6 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
 				  i, mbcp->mbox_out[i]);
 
 	}
-
 	return status;
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
