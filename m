Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D741027E00
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 15:23:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4ABF687E59;
	Thu, 23 May 2019 13:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kCopgFJS5vPH; Thu, 23 May 2019 13:23:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BFFC87E38;
	Thu, 23 May 2019 13:23:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A26D1BF291
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 13:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 970C987E2F
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 13:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eUDSHM-NqCp5 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 13:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E3C9087E25
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 13:23:48 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id d30so3143049pgm.7
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 06:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IXUSqhWKpNXueUwu9xgWPW4SvpSlIVLK8VFFvoIyjkg=;
 b=UhXIhYmRzGdKbWHnMSc3BMSk3wEnttvhYKdLEMp20gS9zTefkW2BOKc5AnyTN+6WhN
 /96S+JyibDLOQfU1wEgDdPzWZMSRl9vqUuMFPgBBfOsFLktykrnSx9Nyd8Fi8n1DmbDY
 QIHKbSzRG1rPVOT4GwHR3u7bLZ3x4XWVUf0oh7KFGouuJ1hASRk+F+iAG4Bt5oZlPMua
 H/YwLkJOvjj4fPxYLeryTL3YN35mAppJU9tMErHPWqpwKZiyhE1FC6OkNDeibT5e3Fc3
 kOjB6wCq5FL+GUyZLwNdXoulYKLpqHPJkSSIBpWpFAi3dThhudXCC5mZtChFdHuKd5C+
 A3RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IXUSqhWKpNXueUwu9xgWPW4SvpSlIVLK8VFFvoIyjkg=;
 b=SH5hJDbfJTS2TjeqDEJHQI9+Icba0TsP+p+c5fDlIV18rLZmCA7DmgDKXcf3KPfP9A
 ZogJmhfEVu6mfo7pLVwo0pueuFrIfdOaDDuelTwQxVbtYth2Vo0qgoi6pct5IyjOMbW2
 E6JEJyhIbPmBkxsZ3ilMRXhmLpJtOPSs1nb7TQGxIOWrrqb4yDX8bdzGbTuoqnNpg/WF
 v3aUqnXLnEDAyF0mvFaYrHsYuHq2n2GpBQZ7dHUVrWYehJZAgivmrNrJ0/EdqX65zKU7
 SwjPIobxspWuoQpevCWZxnb+an2QQly5e9uUEIrw7fbloz634l27+xXsTb135A388lON
 KnJg==
X-Gm-Message-State: APjAAAVT7LBaAhXTq3wp6vzYuZwxjQ7K2BhKs1Yc0Cb55ZnOLrt8gJ5X
 Ratj+Q7JGBo8YmEo9tG18YpukWxSrKo=
X-Google-Smtp-Source: APXvYqx9C3Z3FscObDjTgasbmhEhfuOgrL73/haGCZs2W8h1x4CwhgY5Fv3LpoV30r4DzQpH730vgA==
X-Received: by 2002:a62:2b94:: with SMTP id
 r142mr13112527pfr.184.1558617828679; 
 Thu, 23 May 2019 06:23:48 -0700 (PDT)
Received: from localhost.localdomain ([122.163.94.48])
 by smtp.gmail.com with ESMTPSA id f36sm35845239pgb.76.2019.05.23.06.23.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 06:23:48 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, christian.gromm@microchip.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: most: usb: Remove variable frame_size
Date: Thu, 23 May 2019 18:53:34 +0530
Message-Id: <20190523132334.29611-1-nishkadg.linux@gmail.com>
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

Remove variable frame_size as its multiple usages are all independent of
each other and so can be returned separately.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/most/usb/usb.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 360cb5b7a10b..751e82cf66c5 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -186,32 +186,28 @@ static inline int start_sync_ep(struct usb_device *usb_dev, u16 ep)
  */
 static unsigned int get_stream_frame_size(struct most_channel_config *cfg)
 {
-	unsigned int frame_size = 0;
 	unsigned int sub_size = cfg->subbuffer_size;
 
 	if (!sub_size) {
 		pr_warn("Misconfig: Subbuffer size zero.\n");
-		return frame_size;
+		return 0;
 	}
 	switch (cfg->data_type) {
 	case MOST_CH_ISOC:
-		frame_size = AV_PACKETS_PER_XACT * sub_size;
-		break;
+		return AV_PACKETS_PER_XACT * sub_size;
 	case MOST_CH_SYNC:
 		if (cfg->packets_per_xact == 0) {
 			pr_warn("Misconfig: Packets per XACT zero\n");
-			frame_size = 0;
+			return 0;
 		} else if (cfg->packets_per_xact == 0xFF) {
-			frame_size = (USB_MTU / sub_size) * sub_size;
+			return (USB_MTU / sub_size) * sub_size;
 		} else {
-			frame_size = cfg->packets_per_xact * sub_size;
+			return cfg->packets_per_xact * sub_size;
 		}
-		break;
 	default:
 		pr_warn("Query frame size of non-streaming channel\n");
-		break;
+		return 0;
 	}
-	return frame_size;
 }
 
 /**
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
