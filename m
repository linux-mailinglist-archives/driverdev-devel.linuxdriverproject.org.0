Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F382231A8D
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 09:46:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30FE685D7D;
	Wed, 29 Jul 2020 07:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oQo1K4LjyzQt; Wed, 29 Jul 2020 07:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 573BB857D8;
	Wed, 29 Jul 2020 07:46:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44CED1BF589
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 40B9E8731E
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgNr7zE-B-RB for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 07:46:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5BDF6870D7
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 07:46:10 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id u10so1946060plr.7
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 00:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/Kc8o8UqCU991Vni3y/o1KBZOM15r81DSmGMs9PY1+8=;
 b=mUlP7Tu9eDU7kLyU4EQLPV0YBwq3/iDMfDoNkfp4mDqI6AhWyl9f3bBrXvbvQUzBd4
 yPX6O9aseFOlKDRrryBXjhogqmYl6lVMsvX8ei01yY78VJ2A7X74T154+EqzRAWoxPVn
 Js/wpcs25VS1jqgPYaMgO2u0A78P16DviwPms9ni6xfjFF3SfCd0GSQZZ0baBEvT0igi
 FkH0WQy9KjvoKPBxBt0DkPKGPaHSk9UL2wRvQt4c1zfKs/NKKv2dbBnL4JfA0yG7Y7nl
 5zUDncrpl9+ucYfGw5o8QIQV90s1Y3GC1gfXyKAQhGgZ9v7O4Os0egHsN5dkgk8K/hn2
 XF+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/Kc8o8UqCU991Vni3y/o1KBZOM15r81DSmGMs9PY1+8=;
 b=rHJ8FQsKVXndFden+xU98TKKUlLKOPc5q+iYZpmmbDHoYpUZkgyVWBBhaKuZgpZCjI
 IjHuPmjQx3x9fwqA8+Wmb94OZVzr4n6zIN7GiWqcJLl/oPdClj4qF+dvERZdquFshq8q
 IbKqPiHS/y8riaHEZ4HJ0xt/TrHSUbKZkmGB3yA+kwE9HgU48aP0/sC8PgksjcaRUke2
 WaLS/USFs7f+5C40RyeIic/8YdTBtUyMXGK+He9BvO4hG23vTF3WF40qS0XLJhpolRHD
 uQvFAAuh6ihKDSBiGEKxGvB1FAHq3y8rKKHqUksGUFnCTLNA/FkXpmjyyNyUIZUP3WxQ
 ioCQ==
X-Gm-Message-State: AOAM532GY4Bezd59bzvNc9KLdJSFkXo6mJjaoUAzn/4LHv1wit8si0Az
 Xwbih9WITJu8QFvKyoEYZmWqhw==
X-Google-Smtp-Source: ABdhPJzhgxtOqw+ErBlwCNI6JQ8tLNWtINKyN3jyJYByNMZI9Ab/y1MtsQtE3dc2L689tAVXkn2msQ==
X-Received: by 2002:a17:902:6b49:: with SMTP id
 g9mr25244131plt.230.1596008769862; 
 Wed, 29 Jul 2020 00:46:09 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id o16sm1424762pfu.188.2020.07.29.00.45.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 00:46:09 -0700 (PDT)
From: Ankit Baluni <b18007@students.iitmandi.ac.in>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, rohitsarkar5398@gmail.com,
 mukadr@gmail.com, straube.linux@gmail.com, pterjan@google.com
Subject: [PATCH v2] Staging: rtl8712: Fixed a coding sytle issue
Date: Wed, 29 Jul 2020 13:15:41 +0530
Message-Id: <20200729074541.1972-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200728213231.26626-1-b18007@students.iitmandi.ac.in>
References: <20200728213231.26626-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ankit Baluni <b18007@students.iitmandi.ac.in>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed braces for a 'if' condition as it contain only single line &
there is no need for braces for such case according to coding style
rules.

Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>
---
Change in -v2:
	-Remove space before ':' in subject .

 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index c6f6ccd060bb..df6ae855f3c1 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -238,9 +238,8 @@ static char *translate_scan(struct _adapter *padapter,
 	/* parsing HT_CAP_IE */
 	p = r8712_get_ie(&pnetwork->network.IEs[12], _HT_CAPABILITY_IE_,
 			 &ht_ielen, pnetwork->network.IELength - 12);
-	if (p && ht_ielen > 0) {
+	if (p && ht_ielen > 0)
 		ht_cap = true;
-	}
 	/* Add the protocol name */
 	iwe.cmd = SIOCGIWNAME;
 	if (r8712_is_cckratesonly_included(pnetwork->network.rates)) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
