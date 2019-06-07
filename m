Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7D33850E
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 09:30:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3C2B86470;
	Fri,  7 Jun 2019 07:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptAt9b0bAOYk; Fri,  7 Jun 2019 07:30:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1706086308;
	Fri,  7 Jun 2019 07:30:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 89E891BF333
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 876DE87D76
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82nTg+hK8V+h for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 07:30:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C136F87CE1
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 07:30:24 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 20so702815pgr.4
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 00:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L5Z2jE2hiR8M4s/s+RbNowguHNU4m4jFgbMfAGDtbrs=;
 b=h0So86n8F43BSUeT5JqqEZz6m8os4UsSercQ21Q9ZOsOi7OhR/UDRaKcLrzU5qTgPr
 jUHFSNSkOWtPuqnP9cv2qFk1jx1q03U9/u7ykrP6bq9dS3/vz/iCCF2hlnYBQgEZbkJL
 dOjv/dhBN01b5kAb2k5rxCDRomTrRW/MywohTIxeEEsNTiLMMLShkkD/ujtyuJZ3MfsN
 P+uhvIMJe92oPJR1/PjjuLYQNiTHDVzP7pluT9OfSBbWiy3JHlLEgWwhnE1JU6nPpYVh
 VQQGqeqisSs37hW62kYsoO3NOWizXwvwKnT6SNBcBsorPNFnK1OKgVcna/TR2L7SRG74
 qLcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L5Z2jE2hiR8M4s/s+RbNowguHNU4m4jFgbMfAGDtbrs=;
 b=uGWL0oJ5D3A44FHYYpwHwPId0uMwyEMQhx2zRTvHs759NQJLRoykFqCgJeMmaLo32r
 tI4dQV3vLiDJ0ehnc9KRM3wQNm/vybM452/k/fQPBDp8WmGRud7NOaWO5xozt8+e6ytY
 MRKVIw3JyWoG73iI/RhuqLFX2bG1rReLPMCA3FJVKx1vyOp/AiVncZ9oS48zP+hMwQjB
 ODpY37BrGgyqR+c5zCI4lfm/CJSiCi0LMhtpCYypWyYAxXZgKU3U7eDG378P8AehIx88
 m2W10jDMMeQ6RJgav0ylITgqeL5Nv3ned2+B0kFuOuugaujAO8ImcqGi6LDpT2rXe5pV
 gtGw==
X-Gm-Message-State: APjAAAX4T/pQ11XOzsfwuvyS3XqrsQoEqI2yv8iWPbtInHKLHV2MhAoI
 aXbRycVMFOSpOon+HwxIOGY=
X-Google-Smtp-Source: APXvYqw1oUzCSW0QdRUcITg8B26D/16r3u4gVAm/66+wx+nR1sX5il3np25ess0kyjNYWLMOsoDMIQ==
X-Received: by 2002:a63:224c:: with SMTP id t12mr1544454pgm.227.1559892624472; 
 Fri, 07 Jun 2019 00:30:24 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id 2sm1297060pfo.41.2019.06.07.00.30.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:30:24 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, straube.linux@gmail.com,
 mamtashukla555@gmail.com, hariprasad.kelam@gmail.com,
 benniciemanuel78@gmail.com, christophe.jaillet@wanadoo.fr,
 puranjay12@gmail.com
Subject: [PATCH] staging: rtl8723bs: os_dep: ioctl_linux.c: Remove return
 variables
Date: Fri,  7 Jun 2019 13:00:08 +0530
Message-Id: <20190607073008.28690-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove return variables and return the values directly, as the functions
all return 0 in all cases.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 236a462a4936..a6fce63ad4db 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2601,9 +2601,7 @@ static int rtw_p2p_set(struct net_device *dev,
                                union iwreq_data *wrqu, char *extra)
 {
 
-	int ret = 0;
-
-	return ret;
+	return 0;
 
 }
 
@@ -2612,9 +2610,7 @@ static int rtw_p2p_get(struct net_device *dev,
                                union iwreq_data *wrqu, char *extra)
 {
 
-	int ret = 0;
-
-	return ret;
+	return 0;
 
 }
 
@@ -2623,9 +2619,7 @@ static int rtw_p2p_get2(struct net_device *dev,
 						union iwreq_data *wrqu, char *extra)
 {
 
-	int ret = 0;
-
-	return ret;
+	return 0;
 
 }
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
