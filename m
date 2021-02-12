Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1C331A0FE
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 15:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C88A986287;
	Fri, 12 Feb 2021 14:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TqPt7Z_BBoVu; Fri, 12 Feb 2021 14:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC98586004;
	Fri, 12 Feb 2021 14:59:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E559F1BF271
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 14:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9FA86F71A
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 14:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kAxgm0jovKml for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 14:59:12 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id D8EF36F763; Fri, 12 Feb 2021 14:59:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2EF2C6F765
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 14:58:42 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id u14so1296091wmq.4
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 06:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K8hSkoUmfBulq+yHz3wJFmvWeXwkFbdhHHcnOeQCVlM=;
 b=t83NhmMo6pwaQPI5Zng04ZOiiFb4/YaXQfRDzVj2ok7hthn7uCjsuhRPmblwKuZrdX
 vrP4mdL3C52Vh1mOdvRUnze7TrWj8T0YHWskCOyy19rF1HY/5ZSJ2tEa+W7kXT4m62ww
 E0ECDrOhXzT1RTGnZiT9gQ+SurP7tC/o/HaJZQKNYHoEK8ryyI78qzYjhlObePKCQVWI
 urAY8LrKqZGMmvPFOy6E2hKpoeFrGdX9d/JgUs2zDWerpKXSaMDpdaO0+8ftasy1QlbA
 +94bI9JtVFru25GUawL+Otsj9hrN3NSI6Zvaf2b4flqDut1B/FVTF1Yai8ZH2A/wu4Kf
 mUNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K8hSkoUmfBulq+yHz3wJFmvWeXwkFbdhHHcnOeQCVlM=;
 b=VmZ45q7+hkTclBQ0bThmOGnec2eLBKis9SsvikMskbnc6TUEKISAkjiFF4dSchK+Dm
 TVvNE9dgVHo9Ll6ZIhW1eR09i/J/SgUR3lvpqxNM7fs5yLM32Rcrk0SotYbjBiGsTGue
 dMqmOwcPcD1aX+T1QRHIhtABNlZcMHhlWS3QE/En/cR+EBq5RBZo43xkorrBDNdZ9KAm
 6vtrtw0D4WX0G74yzC7hvJ1uRrPfjXXb4tF1Q6l13DI4KRc3si/Adw2lyKN7IWfyo/Bg
 MdeDVab0G8Nc3Caufx1nq7hoTaqvIybdUlWFse4/jOiGVOa6sDWp82V4BVxXUS6pydx9
 7f7A==
X-Gm-Message-State: AOAM531Hiz8oulCMueH7/APQ9+FvlTmE7dhwRt4XyDHrdak4Z/7ILo9Q
 bXhn1AK57rxa4h4+g39gXaw=
X-Google-Smtp-Source: ABdhPJzTHuqPrdid7EiN+/Q1zJfLj7UNAo13dBfxmXTLFjk6lxb9i9aoCZIXEwqb0c97b/kLIzpMYg==
X-Received: by 2002:a1c:20c7:: with SMTP id g190mr3010312wmg.156.1613141920327; 
 Fri, 12 Feb 2021 06:58:40 -0800 (PST)
Received: from alaa ([197.57.74.212])
 by smtp.gmail.com with ESMTPSA id d5sm11442525wrb.14.2021.02.12.06.58.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 06:58:39 -0800 (PST)
From: Alaa Emad <alaaemadhossney.ae@gmail.com>
To: gregkh@linuxfoundation.org, mh12gx2825@gmail.com,
 alaaemadhossney.ae@gmail.com, sbrivio@redhat.com, colin.king@canonical.com,
 oliver.graute@kococonnector.com
Subject: [PATCH] Fix space prohibited issue in fbtft-bus.c
Date: Fri, 12 Feb 2021 16:58:33 +0200
Message-Id: <20210212145833.3809-1-alaaemadhossney.ae@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch error for "space prohibited before that close parenthesis ')'"

Signed-off-by: Alaa Emad <alaaemadhossney.ae@gmail.com>
---
 certs/x509_revocation_list        | 0
 drivers/staging/fbtft/fbtft-bus.c | 4 ++--
 2 files changed, 2 insertions(+), 2 deletions(-)
 create mode 100644 certs/x509_revocation_list

diff --git a/certs/x509_revocation_list b/certs/x509_revocation_list
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
index 63c65dd67b17..847cbfbbd766 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -62,9 +62,9 @@ out:									      \
 }                                                                             \
 EXPORT_SYMBOL(func);
 
-define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8, )
+define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8)
 define_fbtft_write_reg(fbtft_write_reg16_bus8, __be16, u16, cpu_to_be16)
-define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16, )
+define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16)
 
 void fbtft_write_reg8_bus9(struct fbtft_par *par, int len, ...)
 {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
