Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBFA3A011
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 15:53:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D864D85775;
	Sat,  8 Jun 2019 13:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0uhfRQRQK8aN; Sat,  8 Jun 2019 13:53:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F1B2855BE;
	Sat,  8 Jun 2019 13:53:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69B241BF427
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 13:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5FF26855CC
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 13:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IX1KOst8r2DG for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 13:53:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 791DA855BE
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 13:53:38 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id x17so4806516wrl.9
 for <devel@driverdev.osuosl.org>; Sat, 08 Jun 2019 06:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=H30MmEEpsggHLTru0xvrLHxIqR8iOyCZJcNBqqWDdmU=;
 b=degT9g5y/7neS+Luhz7XUDQAnT2K6hd1tuBV25h7IXMpkRJi9/R9IDAg6wLkaSg+6s
 +heei7lwiuwaJRUpcS5Cq2nIlZk9N2hJH5Mi2HagULv0gH5+X3NBCpsf/PnLT5byfY0r
 DTV+kqfPYES1z4zs+ZTqDomQ/nauF+rxdh6su0gitzpcWIYLIv09Mk01iRF90T9JI9o0
 1SSM/PcVQ3Q4tLaWa3AYn7XwWiB3bDtrKAy6O0dudTpjAXRgzi8/9pMDEYvFl+Wids6M
 zf8ZMjp0APSsEImDca3SuAyUYh8TqZkui02baaQ/ZT8rociM+eZzEcGCdI3NSsPAxVNm
 CIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=H30MmEEpsggHLTru0xvrLHxIqR8iOyCZJcNBqqWDdmU=;
 b=pOaQTnUGp4A01WmKankkhBjYh+Idock71dcqIZDwZ/N6B/f28gnd0z3ajMi9aj//ls
 cF2gdHUYOdqVA8YZXRPUWov1X1VzH0ZUMhaN8+1W4t6lAYVKabGneKswr4zj6EKdP83Q
 xpp2iJOFSuiE+Yxry0H6jssIXkNNPomdEwy6YXo6Hq0eOQGXrqkuWtrat1sHfVXQQjAR
 DQAxTW5/pFdsupOLGtwsVJNT2XTHo6m0ECGKL15I9xaRd0aMWPNM71fr1fw4p4REBG0n
 1lWMa8NxLUJys8Hy4fHFAo4LWUNx0CzXSoS+xHgrNmvbAh0O5ezMDCmSd4uE2scKiRO1
 NoOQ==
X-Gm-Message-State: APjAAAWchg8NQjOAxShoQwfWhMetouRdytqrJG8jDDFkIwE+RcZxTjz3
 69qGaL7Kp+w/adeq4vioBfQ=
X-Google-Smtp-Source: APXvYqzG9/H/KwkoLM2OLhX84LY+EmAyrLb95moEe2j04/SG3GGQBZUtgjivI8QUoa7KLgOP5Rdxkw==
X-Received: by 2002:adf:ef0a:: with SMTP id e10mr22144866wro.303.1560002017063; 
 Sat, 08 Jun 2019 06:53:37 -0700 (PDT)
Received: from xe-vm.localdomain (2.red-83-34-179.dynamicip.rima-tde.net.
 [83.34.179.2])
 by smtp.gmail.com with ESMTPSA id v15sm5085608wrt.25.2019.06.08.06.53.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 06:53:36 -0700 (PDT)
From: xabi1500@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rts5208: fixed brace coding style issue
Date: Sat,  8 Jun 2019 15:53:35 +0200
Message-Id: <20190608135335.6383-1-xabi1500@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Xabier Etxezarreta <xabi1500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Xabier Etxezarreta <xabi1500@gmail.com>

Fixed a coding style issue checked with checkpatch.pl

Signed-off-by: Xabier Etxezarreta <xabi1500@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index fa597953e9a0..d16e92b09a1f 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -419,10 +419,7 @@ static int rtsx_control_thread(void *__dev)
 				chip->srb->device->id,
 				(u8)chip->srb->device->lun);
 			chip->srb->result = DID_BAD_TARGET << 16;
-		}
-
-		/* we've got a command, let's do it! */
-		else {
+		} else { /* we've got a command, let's do it! */
 			scsi_show_command(chip);
 			rtsx_invoke_transport(chip->srb, chip);
 		}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
