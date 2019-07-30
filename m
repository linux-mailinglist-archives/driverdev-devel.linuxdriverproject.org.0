Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DD179F69
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 05:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D737B860DB;
	Tue, 30 Jul 2019 03:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1hsWgTyAN99R; Tue, 30 Jul 2019 03:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7928846C0;
	Tue, 30 Jul 2019 03:04:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 557B41BF333
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 03:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E99B846C0
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 03:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 63qgOYYZsjyZ for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 03:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A3D6C841DA
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 03:04:18 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id o13so29233054pgp.12
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 20:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=gD5mfEMWuXarGCctKEueAm1TQYwfzvdTbbmFFyNOtWo=;
 b=UVBvxgZ6r/zLyKNUUmC7qzvDk5EBxkpH1aC3y+kIo97u1sg42yewB7FkZdIpZMqvpS
 QIB4TpEnF3SyEtGHbXb/AB4jlJ9mRLrxHLY5bz5G9UFc70g+I+IJA+g1/ySrcOw/pfWt
 tzD7FDrpyDosPIvxQacedkrga26Bv7MfrsThJiWoy5ymskilTpMy8SO2zzUd7beqKfsl
 u4Bbb9PSRp/zymco+TgOhWf3RH0SNTve4sqmjJQ8YX7KeQehRXgKMlEsLB5DVtQL2FOR
 sfTCYP4R/1c2eDlXt/0WCDtWBVhW7r29c2S1WcHEstdLYrR/syUqDu72U6O9LfaWd3Qt
 0WkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=gD5mfEMWuXarGCctKEueAm1TQYwfzvdTbbmFFyNOtWo=;
 b=CwK5mUrU06yUmn+8WDkcadD7p55NbWhH2+qGqN6xNp3zotIv35i6h9K/nGzKR77hI5
 f8N3+z4AoUViszF81n3/gljiRn/sV1WXIEX6zHKQ6+H7/JNwyt8IHJBnOtec9vmOA0TM
 OEMgXzpVSXYe9miZovX+jwezOzp4upN2kymuh9xHRt2JTcYHMZdvWE4pIz+D4UEPxbAr
 LNYx2eSMaOAMLwxbizmiiIfEXu7F2MssrATgR7bDvenDtUPEqfb6AXYY5rM92F/2FKpE
 aVdb4K6X3AE7+ScNNeBvZ5VT4OsEAWDidENbMxTDO8LxPgIydxebJ8xS4cKGcb3iP1D8
 WEag==
X-Gm-Message-State: APjAAAUvoeS50zjhloXe83t3PjXt3hMj96bWBiPUPu25p6+HaTaoT1T7
 LhLb0iQtwxVZkVrtvzxSxUU=
X-Google-Smtp-Source: APXvYqzdWv0EJeJ8yPP/yNdZlsxyvWTQ6kqL8q4wcSPSHXHBf6Lp1lQKBVsPsqDq/ZrNU2RgtE/OJA==
X-Received: by 2002:a17:90a:1aa4:: with SMTP id
 p33mr116749314pjp.27.1564455858074; 
 Mon, 29 Jul 2019 20:04:18 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id n185sm45771965pga.16.2019.07.29.20.04.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 20:04:17 -0700 (PDT)
Date: Tue, 30 Jul 2019 08:34:11 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeeeun Evans <jeeeunevans@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Mukesh Ojha <mojha@codeaurora.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8723bs: core: Remove Macro
 "IS_MAC_ADDRESS_BROADCAST"
Message-ID: <20190730030411.GA6140@hari-Inspiron-1545>
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
