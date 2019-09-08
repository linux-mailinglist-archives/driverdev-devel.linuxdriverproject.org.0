Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2227BACBBF
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 11:10:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D546485810;
	Sun,  8 Sep 2019 09:10:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0RuqbQ39twAo; Sun,  8 Sep 2019 09:10:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 057D1855B1;
	Sun,  8 Sep 2019 09:10:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9231BF584
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 09:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 018178542B
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 09:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jk+jlKGA1nGT for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 09:10:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8ABB58547B
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 09:10:32 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id t11so5204405plo.0
 for <devel@driverdev.osuosl.org>; Sun, 08 Sep 2019 02:10:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fYQNOXMD3jzyscjpP4PPleqhgSxn6sjugBxXKeo0Qfk=;
 b=nzb5LrK/pHBcimjNwl0n749O+ImXLI0JZuUhCzlfnPgw85d5wDdUckQL5dJmquF3Vc
 IvvZmyPOeiRKfuP8uHvPViq4EVBMBKtX6EzmfGUCzq5zOUcq/X620GK6XSxqB3c9d4ln
 ZfRzh6IWjFoPSBOFuwtNkWosmhSgSrzp/NXGJWPKVknkWQOvTYltODIet8kZCIVd3IH6
 XiQ34N0it+vAECzUsTqnjxQRMKouULnEwVqInc4+xRtu872gztwOmEQPCqFxJqGtLMYq
 rzWOe2ZTPDXrZrvDACjBwzfGZ1ekXfUWnrZnqDKy1y57tKzVnYQh8rs2OWSAM5n+UC3D
 4rqg==
X-Gm-Message-State: APjAAAWLxvC9bcW0M6D989HrhdNCvIuCUzhb57Fkb/P/rkXnU4/ASnZa
 xlr5CJcOKtalxbSJHbNu49k=
X-Google-Smtp-Source: APXvYqwS6ZwgHVMHF2L6NwI8phU3eT5dD6aydmzLNoSkIyiawdJ9LzEwcjvzbPONeKWudVKdjUoW0Q==
X-Received: by 2002:a17:902:b18e:: with SMTP id
 s14mr4830152plr.231.1567933832081; 
 Sun, 08 Sep 2019 02:10:32 -0700 (PDT)
Received: from localhost.localdomain ([183.83.88.189])
 by smtp.gmail.com with ESMTPSA id s4sm11962378pfh.15.2019.09.08.02.10.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Sep 2019 02:10:31 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: rtl8723bs: core: Remove Macro
 "IS_MAC_ADDRESS_BROADCAST"
Date: Sun,  8 Sep 2019 14:39:35 +0530
Message-Id: <1567933780-2790-1-git-send-email-hariprasad.kelam@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mukesh Ojha <mojha@codeaurora.org>, linux-kernel@vger.kernel.org,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Remove unused macro IS_MAC_ADDRESS_BROADCAST. In future if one wants use
it ,use generic API "is_broadcast_ether_addr"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index 8eb0ff5..eb08569 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -9,13 +9,6 @@
 #include <drv_types.h>
 #include <rtw_debug.h>
 
-#define IS_MAC_ADDRESS_BROADCAST(addr) \
-(\
-	((addr[0] == 0xff) && (addr[1] == 0xff) && \
-		(addr[2] == 0xff) && (addr[3] == 0xff) && \
-		(addr[4] == 0xff) && (addr[5] == 0xff))  ? true : false \
-)
-
 u8 rtw_validate_bssid(u8 *bssid)
 {
 	u8 ret = true;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
