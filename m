Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1FD3091BC
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 04:45:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89A74873AC;
	Sat, 30 Jan 2021 03:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wwEyUkoUd46M; Sat, 30 Jan 2021 03:45:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D089872D5;
	Sat, 30 Jan 2021 03:45:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B5EE1BF285
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 03:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 37C4A86AB5
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 03:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPZmkotxOSLt for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 03:45:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EC1ED86AAB
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 03:45:38 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id kx7so6791941pjb.2
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 19:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RLVEqQslVYjHN6/GcJQt+a0YkZ+s/rJ3wnnBKP9zCJs=;
 b=aVcISZ6U1WUb/MBfsNoMjDe01a+7Ze7PsO/fiIIYYp3q/anDbe/RPR9lp5PskAEJmn
 fQgG134PgkcMHy++VGVO6SYsJ3lzG5x9nPfxJBfqJWbdZ3MhUOrT+GKlUNqTzkPIzKIC
 0jLdDiBHmaPrhOSEhZwgUNcWNgoWQN/ce795lXEzMiZDX765sYzLZYscadXrdVTRfM6M
 +Wa0cmtJp9P06WMXrBN19wRJk5EawW4r/0ka9mklLHJ7P43kZjga/43NHEggOKESzq40
 oVFa5Zc46StXRtilvrEy/mqC6GKM9B3Y9P2svdjfrYyXC/GstmPPTlyFqsfHurvqaPj9
 dMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RLVEqQslVYjHN6/GcJQt+a0YkZ+s/rJ3wnnBKP9zCJs=;
 b=qnTEdc49QxZjbea0arzwtDkp2wRLaMkCN+/D9SNRg3ZnZqAXCJNfepljL/vwvL0H8l
 zd1F1uQjA7WToheE62UdGOM1JntQ3bRw5GI3/ULzmhSBFcSCd4BgcKue6mrk+8tR0bLy
 eS3tDyMMyl2nwOrryVvsVpjXH3De8+33NybzEaWiSkewJAK5o1XtTAV2yXCJGPTH+GR/
 mFzO1RvsETK7vDtIDbyTN+i4BUOVqB7HeI0/+ES9+FMqmM/2jJM8j6t3917JPvbpDhjo
 tX0r42cgU8LFJfC0drszKKMp6XPm4uglOp84J1rlQuFnX3OMfQGhf9L3vpP+hSuoIlXG
 osog==
X-Gm-Message-State: AOAM5308LDweVL/NGGdpSyfFKbyf0qgijcW4OJvL8aRdMeyotV7ZsUNI
 U8LhCwmWZ64iNCgUI/5sqvE=
X-Google-Smtp-Source: ABdhPJy7dxNEh/s8aLVTOojEvzmD8hAb6UsK5wfhGDgHoKui+q3X1jaYRBCJTzk61S/biGE6vwofIA==
X-Received: by 2002:a17:90b:8d1:: with SMTP id
 ds17mr7259357pjb.194.1611978338548; 
 Fri, 29 Jan 2021 19:45:38 -0800 (PST)
Received: from z640-arch.lan ([2602:61:7388:8f00::678])
 by smtp.gmail.com with ESMTPSA id b26sm10265928pfo.202.2021.01.29.19.45.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 19:45:37 -0800 (PST)
From: Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] staging/mt7621-dma: mtk-hsdma.c->hsdma-mt7621.c
Date: Fri, 29 Jan 2021 19:45:07 -0800
Message-Id: <20210130034507.2115280-1-ilya.lipnitskiy@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org, Masahiro Yamada <masahiroy@kernel.org>,
 Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>,
 linux-mediatek@lists.infradead.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Also use KBUILD_MODNAME for module name.

This driver is only used by RALINK MIPS MT7621 SoCs. Tested by building
against that target using OpenWrt with Linux 5.10.10.

Fixes the following error:
error: the following would cause module name conflict:
  drivers/dma/mediatek/mtk-hsdma.ko
  drivers/staging/mt7621-dma/mtk-hsdma.ko

Cc: stable@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
---
 drivers/staging/mt7621-dma/Makefile                        | 2 +-
 drivers/staging/mt7621-dma/{mtk-hsdma.c => hsdma-mt7621.c} | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename drivers/staging/mt7621-dma/{mtk-hsdma.c => hsdma-mt7621.c} (99%)

diff --git a/drivers/staging/mt7621-dma/Makefile b/drivers/staging/mt7621-dma/Makefile
index 66da1bf10c32..23256d1286f3 100644
--- a/drivers/staging/mt7621-dma/Makefile
+++ b/drivers/staging/mt7621-dma/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_MTK_HSDMA) += mtk-hsdma.o
+obj-$(CONFIG_MTK_HSDMA) += hsdma-mt7621.o
 
 ccflags-y += -I$(srctree)/drivers/dma
diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/hsdma-mt7621.c
similarity index 99%
rename from drivers/staging/mt7621-dma/mtk-hsdma.c
rename to drivers/staging/mt7621-dma/hsdma-mt7621.c
index bc4bb4374313..b0ed935de7ac 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/hsdma-mt7621.c
@@ -749,7 +749,7 @@ static struct platform_driver mtk_hsdma_driver = {
 	.probe = mtk_hsdma_probe,
 	.remove = mtk_hsdma_remove,
 	.driver = {
-		.name = "hsdma-mt7621",
+		.name = KBUILD_MODNAME,
 		.of_match_table = mtk_hsdma_of_match,
 	},
 };
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
