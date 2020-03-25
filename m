Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E86192194
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 08:06:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9DEA22547E;
	Wed, 25 Mar 2020 07:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q3iepShWSx8R; Wed, 25 Mar 2020 07:06:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E7DE824AFE;
	Wed, 25 Mar 2020 07:06:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 807981BF2FA
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 07:06:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D51525397
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 07:06:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9DuJYkNUYqzU for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 07:06:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id CE58424AFE
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 07:06:50 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id v23so443156ply.10
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 00:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6r1fskoo/rPmpewNG6WhrwCKIyAjmrIb2vy6uT5S69U=;
 b=DTQF38v8YnBWHsl+9ixYzJ0xE5YKQXH3zpAzq2Ik1ShxuiVRINdaYH9dBwijCtOroQ
 3+bJ2xAPc5VaDA11dqtrpJHkvl2g25DEN/HoP72Zvp4zrPitEaZEO3GgxtbGYcoG66Vu
 EdnSrhIP4ftAurqTKZZJ7W9HTsvahZYe802K9KgJsM8KaKL0QNEOw5oweg0j4TbdtkCy
 +KwF+vV9UP+JXfVlwd8BoxCaqfb6ZHiRRlx/KXy3BWAmSeMJW+zTJsfMRhLXHLSY4vsT
 8fDAFj8kcnfZmc2UtH2/2NoiZ7635e7I2ReOPqJ9sptT10N36AKnETXUWvnCGnd1V+HI
 6vmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6r1fskoo/rPmpewNG6WhrwCKIyAjmrIb2vy6uT5S69U=;
 b=PbRLcuagp03qHVY0fY90ZE9e/czjd7Ee9YSMtQ7GOlFuekw8nkNqFxXgkZf+Slqsq0
 SxyDpW0x150VKEJfUyvtRI47+YUqVYf1O5DrtjA5krIGJhCKzR7+SWY8nDeqmncuk3C5
 OlpdNfeZyxARDtkTqJU5OZizmJ9TqY3kSX6LMA9Yc8gQq3B80+dHoB34aCDd6C6+oPok
 zximtxEdDhWUZdi/TOVyHT2aCwwNFSejFbp8cVBREGdlBuAqCrn+kgZZOqqdHOfHr82F
 5ICP0can8uEuUD242YJQTOXttjyrqFojjC1TS61bk0Nexw40/JlbKA+lFDRb7M5anvIm
 ICKg==
X-Gm-Message-State: ANhLgQ007s4QgzrvMlIZCggw8cpFTdqzb8NVVHs0fRXzrpO7sKmYrFGZ
 wqdJtzrd+RzISCOkuOTCXo8=
X-Google-Smtp-Source: ADFU+vs3isqopxoifQh7lOOmzhO/2YTv6RkIdXU2LOyuhtT4JCjGoCUyAY7MU+HCk6mc1DTVt8GYWA==
X-Received: by 2002:a17:902:59dd:: with SMTP id
 d29mr1876294plj.246.1585120010514; 
 Wed, 25 Mar 2020 00:06:50 -0700 (PDT)
Received: from VM_0_35_centos.localdomain ([150.109.62.251])
 by smtp.gmail.com with ESMTPSA id y207sm18172916pfb.189.2020.03.25.00.06.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Mar 2020 00:06:50 -0700 (PDT)
From: Qiujun Huang <hqjagain@gmail.com>
To: gregkh@linuxfoundation.org,
	osdevtc@gmail.com
Subject: [PATCH] staging: wlan-ng: fix ODEBUG bug in prism2sta_disconnect_usb
Date: Wed, 25 Mar 2020 15:06:46 +0800
Message-Id: <1585120006-30042-1-git-send-email-hqjagain@gmail.com>
X-Mailer: git-send-email 1.8.3.1
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
 Qiujun Huang <hqjagain@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We should cancel hw->usb_work before kfree(hw).

Reported-by: syzbot+6d2e7f6fa90e27be9d62@syzkaller.appspotmail.com
Signed-off-by: Qiujun Huang <hqjagain@gmail.com>
---
 drivers/staging/wlan-ng/prism2usb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wlan-ng/prism2usb.c b/drivers/staging/wlan-ng/prism2usb.c
index 352556f..4689b21 100644
--- a/drivers/staging/wlan-ng/prism2usb.c
+++ b/drivers/staging/wlan-ng/prism2usb.c
@@ -180,6 +180,7 @@ static void prism2sta_disconnect_usb(struct usb_interface *interface)
 
 		cancel_work_sync(&hw->link_bh);
 		cancel_work_sync(&hw->commsqual_bh);
+		cancel_work_sync(&hw->usb_work);
 
 		/* Now we complete any outstanding commands
 		 * and tell everyone who is waiting for their
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
