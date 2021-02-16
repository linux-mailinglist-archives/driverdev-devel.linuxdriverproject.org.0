Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D49B831C835
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 10:40:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 153108567A;
	Tue, 16 Feb 2021 09:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YVB9vk5MAWcm; Tue, 16 Feb 2021 09:40:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1824684728;
	Tue, 16 Feb 2021 09:40:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC0BD1BF285
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 09:40:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D8E6A849A3
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 09:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5zJMmbTpM_Fq for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 09:40:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7EB4F84728
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 09:40:17 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id a24so5172696plm.11
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 01:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zL9s8JTAaSDRwWN4OXmU1ROilIQfKfzZVPnTeHHab7o=;
 b=ain3WCbyxh+JO3bqOV+wpzmhEyttcDNHlfdUsMep15oicyzb/ru7a2gIzSM5lbaAgP
 VuOdqxqWKnwpkNChHBC1FPRweI+Kqz+nUtx8mD8+xiSVJY+TtGFpO7dWTNIbkzxeNYZs
 fhNnk2u69MOo7JI8JZC9IZgV5xQ2EKMjWh9s6wyu9QqjR8Wa87n3yDf91F/FOukR0ACx
 LUOFNNhMGvDaRs04JagD8qzAj1J3xPqEP+LHKGaguxD7YJ2gu8sT6Fi2ZC4Vaq6wOjVN
 hc/jxVcjGLN6M37CqzDR8iS5mUv7ZyjQ0zoGZ7fvF6iqQGdcDdIf7EDaMpiB1nV7c8bV
 +oVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zL9s8JTAaSDRwWN4OXmU1ROilIQfKfzZVPnTeHHab7o=;
 b=GcHFGYMQyiDQsQEyANyVZa8gECPRkdCpt7loHere4DgeIdsgOvpZYBYzCFgqQRWe4V
 bCY/FOXjrbOIeTtGA6oC7QjKLPAUDRVA5yA8Izokt5DVcvzpSSsnNEkp85/vkUc1shQG
 nEa28BlQ5RaOaOizv76zdo2wULphVGthFPR1JAYiJviBzqrj/PiQVY1XYfNAw05Oh58f
 80rgSzjBOt2oEwlDMYcm/auooh5DqS9gx0h8ys+MelNGlGj4vrMppJ3aFXQHXvHTUcXg
 kbtGmQpNshLGKkQbFHEuTJkCRrpjVXTFXxwSk0hRWLlPhKtGL2jWivp8J8nvlKEzvoJo
 NEgQ==
X-Gm-Message-State: AOAM533FQGHPgloRnNvozcA4T+1YUxyzEXWxp18MUG6g75VdtbY/mf+m
 iTopmRjaicgzN4uvOtDvTsA=
X-Google-Smtp-Source: ABdhPJyU+CYT0bv8boOPQFHZO7YA2TXrYi9GWUDMihmzz2gkzSW3PutY8B6aCksL4sbtXqbA6ipwwQ==
X-Received: by 2002:a17:90a:df05:: with SMTP id
 gp5mr2360768pjb.163.1613468417012; 
 Tue, 16 Feb 2021 01:40:17 -0800 (PST)
Received: from ThinkCentre-M83.c.infrastructure-904.internal
 ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id m10sm2202751pjn.33.2021.02.16.01.40.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 01:40:16 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Manish Chopra <manishc@marvell.com>
Subject: [PATCH v4] staging: qlge: fix comment style in qlge_main.c
Date: Tue, 16 Feb 2021 17:40:12 +0800
Message-Id: <20210216094012.183420-1-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Du Cheng <ducheng2@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

align * in block comments on each line

This series of patches is for Task 10 of the Eudyptula Challenge

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
changes v4:
- move "changes" after triple-tiret

changes v3:
- add SUBSYSTEM in subject line
- add explanation to past version of this patch

changes v2:
- move closing of comment to the same line

changes v1:
- align * in block comments

 drivers/staging/qlge/qlge_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 5516be3af898..2682a0e474bd 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3815,8 +3815,7 @@ static int qlge_adapter_down(struct qlge_adapter *qdev)
 
 	qlge_tx_ring_clean(qdev);
 
-	/* Call netif_napi_del() from common point.
-	*/
+	/* Call netif_napi_del() from common point. */
 	for (i = 0; i < qdev->rss_ring_count; i++)
 		netif_napi_del(&qdev->rx_ring[i].napi);
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
