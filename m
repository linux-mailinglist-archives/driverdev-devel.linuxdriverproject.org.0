Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C6E32054E
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 13:26:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A48D870EF;
	Sat, 20 Feb 2021 12:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s9lgjaLqj+3w; Sat, 20 Feb 2021 12:26:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF9FE870BB;
	Sat, 20 Feb 2021 12:26:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC85B1BF2C6
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A949686B72
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BInDXXH46WV9 for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 12:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F36786B68
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 12:26:54 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id z9so5820595pjl.5
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 04:26:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=H9Ru2ZbdAQdDUxPfVhs1CR+d0Ly3rgFfBwARSfwqmPA=;
 b=BwyoMiK1I5h6ZdkGGgA7G4bedoC7Q77F4KON3RnL61Rr9/J3Wa89viUobrSVYI0URS
 861hHZufE3zVmDxlxHsvcQ3rY6hlLA0qOyMXmGTBVzUaz0Tcq6fNF8wkE6LzmUaHZBjW
 lfx0CV5c0X1vWAdhgNZ+9x2m16wsS/cVvxFehhKaaGfVbFfeEE6FOBAL6FWcBhoecsow
 dL3vInaG9xT8Csug4jiwhZ4BtPmBFLmDS7nrUuXuTy37/rlFM+uBZSvOtOf8wB+a0X3Q
 /W8Wo0Ajr2wX3LCG4r0TvnkubY8CCua1l/SmNk/hWW1wu8pZecFbl3QaehgPCt00uY90
 NRJA==
X-Gm-Message-State: AOAM5329hOc0C8iu8KMevJKf4M/5HiI9N/Jfx0azYqCDGWs7Cr6wo+Qx
 tJ10dvtA4qbQogNulYmciyY=
X-Google-Smtp-Source: ABdhPJxGPL7qGyT4nK1k/eBERoAK5bAEIU4O4G67GioCeHqTih2Vi81fKawX7e/GFJxt7uobDSeONA==
X-Received: by 2002:a17:902:b68f:b029:e3:b18:7a48 with SMTP id
 c15-20020a170902b68fb02900e30b187a48mr13549715pls.65.1613824014031; 
 Sat, 20 Feb 2021 04:26:54 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.84])
 by smtp.gmail.com with ESMTPSA id x24sm11624615pjk.7.2021.02.20.04.26.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 04:26:53 -0800 (PST)
Date: Sat, 20 Feb 2021 17:56:47 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 shivang upadhyay <oroz3x@gmail.com>
Subject: [PATCH] staging: wimax/i2400m: fix byte-order issue
Message-ID: <YDEAB/QatfBX9vQN@karthik-strix-linux.karthek.com>
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

Signed-off-by: karthik alapati <mail@karthek.com>
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
