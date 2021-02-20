Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FE132053C
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 13:25:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75A9A870C3;
	Sat, 20 Feb 2021 12:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ydo+UBm9RkaG; Sat, 20 Feb 2021 12:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C09B287097;
	Sat, 20 Feb 2021 12:25:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6DF51BF2C6
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3CBC87098
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RzBQ9MIJRFoF for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 12:25:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D97887097
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 12:25:47 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id w18so3649797pfu.9
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 04:25:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=kfSr9wGDBaeTdPfP9BpaWnIALsMQibOPcyKNdfyx780=;
 b=T1VEpyJ0MxLObqlO1JnfMioCxnA1zkSsCHZIYfxbSHVDHAU82MGyINadSEDfGEQmu6
 DBbVSFwTkliDm8saeB2X2kXVkvZCTU6Jfphiw+lw7Frs1GLsg5r8+Mlbf8Vr1AyFaaC+
 ROSkCfV7ecVSVjjgB4qxKyL4eL/2l4qxPiCeCpQbGg18yy6UhlemTiW4FavkCIYLHfVX
 28CN59I3VSjUNS12LIuiNhO5TlsjPTx47PIkkDL0KqpOHHY2TQRsYvgmtA1TnVHIsekS
 bAtGWAtMv3iwhAi/DfCs0NhWhptqmz4z42dVeTOCH1X0lGb7but5WauZbntcETioRlBf
 Nzjg==
X-Gm-Message-State: AOAM531vxLAg5WaZ7rUuSDcIuIOZxFOZrijhCcCn8IirPJsIX100tBe7
 POsIVUIyZ9IwJC5xjc4dgl4=
X-Google-Smtp-Source: ABdhPJzZ64Xpr7tvcYyCFMBE1WGAtudkcdluTRxySrO7x3NXG/cHK803UCNrV9OedTZW4CS2uiETpg==
X-Received: by 2002:a63:1f1e:: with SMTP id f30mr12622514pgf.141.1613823946831; 
 Sat, 20 Feb 2021 04:25:46 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.84])
 by smtp.gmail.com with ESMTPSA id z68sm409492pgb.41.2021.02.20.04.25.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 04:25:46 -0800 (PST)
Date: Sat, 20 Feb 2021 17:55:42 +0530
From: karthek <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 shivang upadhyay <oroz3x@gmail.com>
Subject: [PATCH] staging: wimax/i2400m: fix byte-order issue
Message-ID: <YDD/xqjmlibz72XP@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix sparse byte-order warnings by converting host byte-order
types to le32 types

Signed-off-by: karthek <mail@karthek.com>
---
 drivers/staging/wimax/i2400m/op-rfkill.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/op-rfkill.c b/drivers/staging/wimax/i2400m/op-rfkill.c
index a159808f0..0f438ae6a 100644
--- a/drivers/staging/wimax/i2400m/op-rfkill.c
+++ b/drivers/staging/wimax/i2400m/op-rfkill.c
@@ -86,7 +86,7 @@ int i2400m_op_rfkill_sw_toggle(struct wimax_dev *wimax_dev,
 	if (cmd == NULL)
 		goto error_alloc;
 	cmd->hdr.type = cpu_to_le16(I2400M_MT_CMD_RF_CONTROL);
-	cmd->hdr.length = sizeof(cmd->sw_rf);
+	cmd->hdr.length = cpu_to_le16(sizeof(cmd->sw_rf));
 	cmd->hdr.version = cpu_to_le16(I2400M_L3L4_VERSION);
 	cmd->sw_rf.hdr.type = cpu_to_le16(I2400M_TLV_RF_OPERATION);
 	cmd->sw_rf.hdr.length = cpu_to_le16(sizeof(cmd->sw_rf.status));
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
