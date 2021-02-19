Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B95E31F6E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:58:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 235DF86B9E;
	Fri, 19 Feb 2021 09:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wU1aOmALS96U; Fri, 19 Feb 2021 09:58:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0505586B67;
	Fri, 19 Feb 2021 09:58:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94FE21BF853
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8EA0986BF7
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZSBNbTaWbEkm for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 09:58:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 184B986BE9
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 09:58:41 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id t11so3606143pgu.8
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 01:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9R7TqZBC+3ku7IayrARzfjApMcK4UJZfz3xwuRBDZoU=;
 b=rhErhTWx/rsHtg84Tlq7Cl7aiIuZldMn3rlvsQySywuE5mIExqh/EcuMe/5uWqrWPc
 X0ZH3JU4Zo89eG/pq638CmZlwvdgC38EOLXdEtxuq3yTiqJ6FhNQl0KTe1NGTrcYr3GA
 /wwmNNzHuMUfldh5rACGTQAsR6CvtAq9BghUN3CkLx4HSHLB/Ht8lFAuRFFxaOpUrwuK
 KnPC5notjGtMan8Yi6EBaU7TU8ZPFd4cBkVROLlOJUlPimpuszdwRbzb82yVSd/Ob/DG
 bbD8pqcc2ZcT1ZGyyCCsmzG7JJmpi6fFfnhamrD+7bgdAatTQFYSDKuFGillgc14GMOP
 rBHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9R7TqZBC+3ku7IayrARzfjApMcK4UJZfz3xwuRBDZoU=;
 b=aGnXOW6gJ5hnx5k1RXuLatfn4gAmF5VtKP0fGLq+xl/vt/eFOfpA6bQ0ZffP32Zw8p
 h3k48yzRwONdvGvZF831LGgw0MR6KN1dJ6KrBhGphtgJgTZ7cXHyighSnprnmAQZRi7U
 iSAKRGel+kaCkdme11VUWpsJDCJFD6H3tzXnpFi5EObeyWH1+FjjaW/57sFAu+hn5qZR
 nNIM6TYP3Pu1SYVMV3FhKgs7W164uSPcH+lSQgxEGclZgWkYKG1/rGx1Glwn2ps2SxnI
 HeuztJDaIc/ZxpZ22LvXp7Et6JHmptgEgtZbMeV9KguoX28RG62+NPFZwrcUcOnT/IJR
 JJHA==
X-Gm-Message-State: AOAM531uURqKQfTGOZv6G7DhMdWs96w087VF7HQTQebYTYtOWDCGQZry
 vy2mYHqMeYRrbkxfYNTWGmc=
X-Google-Smtp-Source: ABdhPJwfXKl74BMTlb9TrVSg1BpPcW2GcKyq81oK/YUci3i9Db+JCllTh0I19NhAodM+qs1oBsVSDA==
X-Received: by 2002:a63:4e44:: with SMTP id o4mr7970778pgl.46.1613728720586;
 Fri, 19 Feb 2021 01:58:40 -0800 (PST)
Received: from localhost.localdomain ([116.73.181.117])
 by smtp.gmail.com with ESMTPSA id i15sm3980371pjl.54.2021.02.19.01.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 01:58:40 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org, tvboxspy@gmail.com,
 oscar.carter@gmx.com
Subject: [PATCH] staging: vt6656: fixed a CamelCase coding style issue.
Date: Fri, 19 Feb 2021 15:28:35 +0530
Message-Id: <20210219095835.9687-1-selvakumar16197@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel-mentees@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch renames CamelCase macros uVar and uModulo into u_var and
u_module in device.h

This issue was reported by checkpatch.pl

Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
---
 drivers/staging/vt6656/device.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 947530fefe94..6615d356f74a 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -385,11 +385,11 @@ struct vnt_private {
 	struct ieee80211_low_level_stats low_stats;
 };
 
-#define ADD_ONE_WITH_WRAP_AROUND(uVar, uModulo) {	\
-	if ((uVar) >= ((uModulo) - 1))			\
-		(uVar) = 0;				\
+#define ADD_ONE_WITH_WRAP_AROUND(u_var, u_modulo) {	\
+	if ((u_var) >= ((u_modulo) - 1))			\
+		(u_var) = 0;				\
 	else						\
-		(uVar)++;				\
+		(u_var)++;				\
 }
 
 int vnt_init(struct vnt_private *priv);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
