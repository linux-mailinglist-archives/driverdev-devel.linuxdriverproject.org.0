Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 339772A92BC
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 10:30:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9248E868E7;
	Fri,  6 Nov 2020 09:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LP6nKNXPpgyT; Fri,  6 Nov 2020 09:30:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B60BA8689D;
	Fri,  6 Nov 2020 09:30:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 962681BF358
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 09:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 92AF386191
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 09:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4jIT5cmMDDYE for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 09:30:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA8CB8618D
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 09:30:30 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id w4so472292pgg.13
 for <devel@driverdev.osuosl.org>; Fri, 06 Nov 2020 01:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=9IjLA/xj+DCaqgqGoF9Azl/MuEmkxVdtKRQX7C0Fd1c=;
 b=oEMybdqmr95hrZY/hQwyBKi9MAagPUHqbE2DaSTPVO6nJ3xAap7nnQaSAl13MglVkW
 8dD7Sa0IgcuaELVi3kjGgDYV1GW64m2zF1c5rKbsyHPy9mh8iyUBHWYwxbOK3TI5b1Iq
 JwAfMNWachoFTgNndJsVtagFpY87gK0TypeP/jVbHmu5IOLxO1Sx0XFsPpCkfG89YCpv
 D0M2iikm9dks0ltM5Lc2oL4EkAO53DyGZB0lSwKJQs74UlZMg+47hltxFmaEf1IcqIzq
 1m7WaOdG9avHDRZBeD3DF17VVBg3X+08g7MH7BOFotBoXh7a/lkBOUnBFEYjsI4/IwSs
 nLBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=9IjLA/xj+DCaqgqGoF9Azl/MuEmkxVdtKRQX7C0Fd1c=;
 b=a3/3MVULsWdRXj38ArTDI8xgqHFcuYShDWtyCO9K6dsByahhy6/bj4fuGeDASWN5pm
 WFmMQasawgtajJMH0TO4EGJpORfeIQDyMt3iF/wLSRRswDRvCcJSt/PyG2+iH2/KFugS
 fg6j//qP3/XAH/s/0COllR1OlJY0kKLoOdY9FK6VNqd4t3pQL0c0L8GMd3uuvFKeBmIA
 zhcnqGWJdFTTJhEb7bIntocNDV6SwburslfsMtl0xVZPSmqZmOMn/j9FNR70b9YzjSaX
 Sfl9QvoeLpqAlVyQrE1ozbjjrdHyUUFQbjmqpVq0E+U/TxS21OOaX4ypFpHbWTmdyYqd
 BaSw==
X-Gm-Message-State: AOAM532S6h2n3vsAmk+468sOz/7kIzeSihR9FQ4JNU629GUvITqAIDyr
 pQw98QyJbcpszUAweLuLZCdBmzxFZA==
X-Google-Smtp-Source: ABdhPJyyHHQHPk/miYMvK3I7A3pJyIqVqCI4XP4bzwu4ZDR+kR8EHkhl1nQyYgOMuhMtvMvAXaeq2w==
X-Received: by 2002:a17:90b:4a4e:: with SMTP id
 lb14mr1495282pjb.23.1604655030124; 
 Fri, 06 Nov 2020 01:30:30 -0800 (PST)
Received: from Sleakybeast ([103.250.163.155])
 by smtp.gmail.com with ESMTPSA id t19sm1030428pgv.37.2020.11.06.01.30.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Nov 2020 01:30:29 -0800 (PST)
Date: Fri, 6 Nov 2020 15:00:21 +0530
From: Siddhant Gupta <siddhantgupta416@gmail.com>
To: matthias.bgg@gmail.com
Subject: [PATCH] Staging: mt7621-pci: Fix alignment warnings
Message-ID: <20201106093021.GA25237@Sleakybeast>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mamtashukla555@gmail.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 himadrispandya@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the alignment issue pointed out by checkpatch

Signed-off-by: Siddhant Gupta <siddhantgupta416@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index f961b353c22e..0e95fb33b4e9 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -278,8 +278,8 @@ static void setup_cm_memory_region(struct mt7621_pcie *pcie)
 		write_gcr_reg1_base(mem_resource->start);
 		write_gcr_reg1_mask(mask | CM_GCR_REGn_MASK_CMTGT_IOCU0);
 		dev_info(dev, "PCI coherence region base: 0x%08llx, mask/settings: 0x%08llx\n",
-			(unsigned long long)read_gcr_reg1_base(),
-			(unsigned long long)read_gcr_reg1_mask());
+			 (unsigned long long)read_gcr_reg1_base(),
+			 (unsigned long long)read_gcr_reg1_mask());
 	}
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
