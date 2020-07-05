Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1304214D2C
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 16:36:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4DE71221D5;
	Sun,  5 Jul 2020 14:36:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dd-x7oCGZ3YH; Sun,  5 Jul 2020 14:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 15B6222176;
	Sun,  5 Jul 2020 14:36:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE2431BF36F
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA18788139
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ZN8A4tOLCWV
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EA69F88157
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:17 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id v19so27157593qtq.10
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 05 Jul 2020 07:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z11eLO4rrwZ6GV3KASgWrMmBEKgXPsx+uzrd7Dexm1w=;
 b=OU65QocJ1PiwQVRy/5ZLJVomlskMa+dJRRPn2CEMjJTTC4UGt25OYdYsTce+5Uew2f
 FFV0MlnltvdDC8PGFvXohW6myLBEBGrYZcCNa0qbmGIaZEOkfqS/TGwt+dyadC6m/REJ
 dnO3kI/73Tx67f98I3LXS5YIxRkiqPW04IAmSo2c0lKW11wxyB0qZOd24Mv1P42Ni/3Y
 u2MCGrxWIy1B+H5dReNJEYgZ5bIJRpcyEiUyzS+r2LiUd9BtcSCvXqrxhWeasBGkr49f
 m8eSCF7nM0L3qlWzbO5Fh1XTHpdPonMqpO45wIcZCBmYNWXhHjIjkYrk1hXFos3A+7A2
 LxoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z11eLO4rrwZ6GV3KASgWrMmBEKgXPsx+uzrd7Dexm1w=;
 b=dw2XQxUwzD8FICaDNPi3uY5mNJZger2kSh1+MyuRqu9uW8T2NSOonDIJ6z1/OqxkCc
 2Mf4Oia68/oKjlPUovebPOdQkz3c4wGOaVUp/uszAXRvHVdbbK8/vXfyE1sKXTHSj76X
 wjz9/Q2FJ/plWCo2Ugb6exirgg63Gvco66jiMF/RhzxoG1/qDGbul3KLJiKK18iECeVb
 dTZ5Ez/4DDa8pmBI581pdwD4t9pg/AeI9Fva/z/IOsQMw3OdSqeV9ptjtB9g4DqlA7YL
 jP6FtFEMiuLPkVNcFvd8dyGxmzppMe8f9pnAlL+RLvpKV+B4oRrsbf09mN678Q++MFgZ
 PaSw==
X-Gm-Message-State: AOAM531iyEwwPoBK0fdODFKMQVfYTGr39srck4gJL4xDvAbY/HthJyX9
 WIOR8YQ7sQUSeiykyUi4Ts4=
X-Google-Smtp-Source: ABdhPJyQvDRcpAjA0kSaUIPBVkTNoGSe790b7vAcOBhL2IGJCzPu0gagdETKYI19oWX1pTHbm98xZA==
X-Received: by 2002:aed:2f04:: with SMTP id l4mr342045qtd.227.1593959777061;
 Sun, 05 Jul 2020 07:36:17 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:569e:3621:89b:963e])
 by smtp.gmail.com with ESMTPSA id
 j198sm15903286qke.71.2020.07.05.07.36.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jul 2020 07:36:16 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH v2 5/5] staging: rtl8712: Use proper format in call to
 dev_err()
Date: Sun,  5 Jul 2020 11:35:52 -0300
Message-Id: <20200705143552.9368-6-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705143552.9368-1-mukadr@gmail.com>
References: <20200705143552.9368-1-mukadr@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In the call to dev_err(), remove the cast of size_t to int
and change the format string accordingly.

As reported by the kernel test robot, the correct
format string for a size_t argument should be %zu.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index d7b30152d409..ed51023b85a0 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -68,8 +68,8 @@ MODULE_FIRMWARE("rtlwifi/rtl8712u.bin");
 static u32 rtl871x_open_fw(struct _adapter *adapter, const u8 **mappedfw)
 {
 	if (adapter->fw->size > 200000) {
-		dev_err(&adapter->pnetdev->dev, "r8172u: Badfw->size of %d\n",
-			(int)adapter->fw->size);
+		dev_err(&adapter->pnetdev->dev, "r8712u: Bad fw->size of %zu\n",
+			adapter->fw->size);
 		return 0;
 	}
 	*mappedfw = adapter->fw->data;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
