Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3927CBE6
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24D6185C56;
	Wed, 31 Jul 2019 18:25:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKgA5Jqaguqn; Wed, 31 Jul 2019 18:25:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC5AF85A8B;
	Wed, 31 Jul 2019 18:25:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8580E1BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8272C203DF
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:25:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hM-PPD-bI55N for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:25:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 1AA512039D
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:25:34 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id i70so21724896pgd.4
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=CGOO3Qz8vz6py6i7KKOWSpuubNGLxWkIe5GopgOPJrk=;
 b=n7XN7S3C3zlpCNPVbparKSlbichuk0E/msHzh5M8NUL07f5YbqHff3uNg+enH1io7k
 1O89MzhAK6aeTCRHGJggMnklSj+5zAcwxfXmW7QwhjwJulYO/eWXXy8ZZIK+g0FFHpgN
 +U90F3xDD5RhXFdHIIDcBNqubWnCv68sEDNn1uMuZUhCg04LXXlAob5HP7rAKgH+Xu44
 hj4svatEGedzU2EwEA4O6O/dnCf3lnhlKNdAwjRlyWznJNZAlgOt1cesVd7QXZzrc0DE
 Klr3EMxJiTEPSwdgQBXtVMWjrH6arMNfD1B90CpHGwfIo0qnPOeaju8jteyx9C6DWOU3
 piZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=CGOO3Qz8vz6py6i7KKOWSpuubNGLxWkIe5GopgOPJrk=;
 b=bIVsP9AXyPoAykhYouH4x6IHa8xk4JS5lYwPwdO0FyjpeOB7k0i+GK+ZGrG5+uLNC5
 5aY8bct8KlPQD6+quk8U4mZvzaPQb+XAoLlx/PgaWgwbOiqwrXGPX4/8IHofhO08s6ZS
 wG6SFPZYL3nZTgJPkEQ5tUuj+JAK0TVfjICo9ewyjoBpsI7DvBf/pB8l4jFg1tLYlwI4
 63RmLYjMF6D/WxianSnzwWAUvf1a9L0Qz//UkA88EGpooolMx7KMYUcLHHcOxHQam3bv
 oc4Wj7PBPtj/XnG9TvMFZ+2rTWNzX1mVov1UsaXQpGsokRw19KvJZXlJU6jV6lsYOIJW
 Z1/A==
X-Gm-Message-State: APjAAAUP0RO5gOhPbuvY2wENNAx/sNCqrwJmX0ziuCwYqXgwioOGaDO+
 FMtjodC8jDeY0YT+WRsNU0U=
X-Google-Smtp-Source: APXvYqxUVw30HBVQzTRT8MRsyminQ7KjQNSeSj/zgCjKh4Yg2ucaoFQS6N4VwBDXP2aJLZkEhIaLyg==
X-Received: by 2002:a17:90a:d814:: with SMTP id
 a20mr4257773pjv.48.1564597533739; 
 Wed, 31 Jul 2019 11:25:33 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id g62sm2664106pje.11.2019.07.31.11.25.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:25:33 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:55:28 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [Patch v2 10/10] staging: rtl8723bs: core: Remove Macro
 "IS_MAC_ADDRESS_BROADCAST"
Message-ID: <20190731182528.GA9874@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

Remove unused macro IS_MAC_ADDRESS_BROADCAST. In future if one wants use
it ,use generic API "is_broadcast_ether_addr"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2 - Add patch number

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
