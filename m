Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4613B31F716
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:10:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B2B186E72;
	Fri, 19 Feb 2021 10:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vdnuctg3sMNR; Fri, 19 Feb 2021 10:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C61E686E70;
	Fri, 19 Feb 2021 10:10:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B0021BF2CC
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06E3F86928
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s8-roWJhgM_g
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:09:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
 [209.85.215.171])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CE49D86044
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:09:16 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id z68so3664437pgz.0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 02:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SIWLmGOvp66f/U2UVVcWV2eWaP6CYTCSh0FY9HfRF2k=;
 b=SNXqEboqURjzDXLxuVnqDuEjsuIOFHPgbnDSD4/ZrWyHnojYYm2hXFWeDeN95L+oDm
 /vwoYG5kWGttZt8JxfhVTGf3IVrTEuCckilczHxJ0ymFaTAh/sTZjKpJD0FBCYW5o5ej
 JeU/RvrSjvl2hwmctqeeine5SUjUbzT/0BQ+T+wn8ylnFyBZWk/F9XrJplVbYcWA5BT3
 BUqtB7zI68neVOkIoFAgHFQqnJP+YPaEfyAAI19RFSEICtBdN/B28ysVElz0eP+Z1WtV
 ErAkpp2EwsytyjxmSpr7u699zvMu6cyBEcmPPmhIE8s13i0rBgMfuVc1R/YvEsKEzFwL
 hbGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SIWLmGOvp66f/U2UVVcWV2eWaP6CYTCSh0FY9HfRF2k=;
 b=pUEjU/r6n6FCO3JvaSUzAfy1NTy8GJcq1YnzoK7qB04kcoqXLpys7KEy3539fQROK2
 zgY8A2zS6ixTtzvpHhWoaTQ3clLfE+BmpeJG/8NOpLqNdefZoFHZBWcEpGRlNOoIgVZU
 35+frnup/SX8dI2xQSvm2arZJo6dfP3RsNPiN8snCRxT+lJ6NftnUD/2q1pgUrtjomDJ
 WEWkIcE6kOYLbYCBtXMLC5YzCjwiBuKIv9PRCj1g+wDPifyMDNTD2Agy3O/NvPwWG6yv
 fw+g5jvRhDxTxomGTUWuun74X5UjdiHG4qWWCQY0m7Lby018CGg1r8KwXdLjptq4UoXa
 dyhg==
X-Gm-Message-State: AOAM533nwgm/4HNVjLAe+T6OK84Z6Rgmd/3RDi56JzPRoj6LCimxkJgu
 Zg9l1qe3rQPhKgB+9kmTig==
X-Google-Smtp-Source: ABdhPJzYAThq7lpK5n+fLYJT2aaTF1SC7b+IL3rE8y8xkXtRuFVZaG/F6JNnNWm1ECOEm3mm00JIOQ==
X-Received: by 2002:a63:1b1b:: with SMTP id b27mr7580888pgb.377.1613729356264; 
 Fri, 19 Feb 2021 02:09:16 -0800 (PST)
Received: from localhost.localdomain ([2405:201:7000:69ad:68c2:e0a0:9441:6688])
 by smtp.gmail.com with ESMTPSA id 8sm5172322pge.92.2021.02.19.02.09.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 02:09:15 -0800 (PST)
From: shivang upadhyay <oroz3x@gmail.com>
To: greg@kroah.com, sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
 driverdev-devel@linuxdriverproject.org
Subject: [PATCH] staging: sm750fb: added identifier names for function
 declarations
Date: Fri, 19 Feb 2021 15:38:03 +0530
Message-Id: <20210219100803.5311-1-oroz3x@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: shivang upadhyay <oroz3x@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


checkpatch.pl complains about not having identifiers names in
function declarations . This patch uses the same names as are
used in source file sm750_accel.c , but with snake case.


Signed-off-by: shivang upadhyay <oroz3x@gmail.com>
---
 drivers/staging/sm750fb/sm750.h | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index 19823c7277a4..38b85a171182 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -55,23 +55,28 @@ struct lynx_accel {
 	volatile unsigned char __iomem *dpPortBase;
 
 	/* function pointers */
-	void (*de_init)(struct lynx_accel *);
+	void (*de_init)(struct lynx_accel *accel);
 
 	int (*de_wait)(void);/* see if hardware ready to work */
 
-	int (*de_fillrect)(struct lynx_accel *,
-			   u32, u32, u32, u32,
-			   u32, u32, u32, u32, u32);
+	int (*de_fillrect)(struct lynx_accel *accel,
+			   u32 base, u32 pitch, u32 bpp,
+			   u32 x, u32 y, u32 width, u32 height,
+			   u32 color, u32 rop);
 
-	int (*de_copyarea)(struct lynx_accel *,
-			   u32, u32, u32, u32,
-			   u32, u32, u32, u32,
-			   u32, u32, u32, u32);
 
-	int (*de_imageblit)(struct lynx_accel *, const char *,
-			    u32, u32, u32, u32,
-			    u32, u32, u32, u32,
-			    u32, u32, u32, u32);
+	int (*de_copyarea)(struct lynx_accel *accel,
+			   u32 s_base, u32 s_pitch,
+			   u32 sx, u32 sy,
+			   u32 d_base, u32 d_pitch,
+			   u32 bpp, u32 dx, u32 dy,
+			   u32 width, u32 height,
+			   u32 rop2);
+
+	int (*de_imageblit)(struct lynx_accel *accel, const char *p_srcbuf,
+			    u32 src_delta, u32 start_bit, u32 d_base, u32 d_pitch,
+			    u32 byte_per_pixel, u32 dx, u32 dy, u32 width,
+			    u32 height, u32 f_color, u32 b_color, u32 rop2);
 
 };
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
