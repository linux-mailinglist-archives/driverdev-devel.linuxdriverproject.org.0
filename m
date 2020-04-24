Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B255B1B7C59
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 19:05:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 632D8886F5;
	Fri, 24 Apr 2020 17:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0rmjfi4lxNQ0; Fri, 24 Apr 2020 17:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91EF78816A;
	Fri, 24 Apr 2020 17:05:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EDAB1BF2A2
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 17:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 18989879CC
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 17:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1E5InLD3-h+y for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 17:05:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 84D768798A
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 17:05:25 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id g2so3958774plo.3
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 10:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3U+a3uev8d2352EB+p1AL9exeCeOG/zkKwiEaOROeNo=;
 b=Y4iC1BYdMjXV2Tiut0aUt4eedeczo5MFseq5FrqlExx10LxxrKAssVqFZyX5yDxlZ/
 zrvvtO3R9PX4XPcomeNHXOeOkt3Hq2Pd3wQQSiW6bUM9qxKycq+op4YZnecizAn250+e
 pFvpHiq5VRyuf/k50JZHOPFQrwkx0bOdf3Zef1WSoa7bqkkhpERrfnaVHEKolbCn4vMN
 f+8lJyLh1lXEBbv3+aLUleHLu3cCH4Ud31JIDX1W2fajD8oemGpDd9uF670YKqimdjnT
 ngPr4Xtxb4hD4ktk1aFQhopF3zcf1XUccjwHdkeO7JtAjbSEazow170+lsaENyfghqOx
 3M7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3U+a3uev8d2352EB+p1AL9exeCeOG/zkKwiEaOROeNo=;
 b=eFLba1qW8Mo9WcCiVDiZHJe8gIgK/9giqeke7KJtLT4GiC9meZ4RD5kwwDgO694Nwb
 wZt0TK2PLCGA0iNNUJBW+6LTJtAKwbRsEDrqrIv4SnNlg3rgU5xpl7Fett28NeQQ27PO
 VHaUsIGrWFCL7/IoyfdpWgx8xSVXu7brIw9mgl9x5par5IvAhbbuEHQ0xKy63r8cXkz6
 Ky+xFx09ICFTegUlbNtgSzXKjNG3Vp6CPOwV22BXL0kyo7MEVlRLmE90B+ipB7trxILK
 WC9rCTV/Vh+81ZuoUWzcEDknc87HNPeQ7eHT9UZ0r6W1mLThFtoN9FUaCpKHVbWh2ZCs
 UBUA==
X-Gm-Message-State: AGi0Pua1CbTvFYXWf8Wc1VQfIfWthQzVVmjXsDGnfnUMD8/66dxc5sdd
 TNwckjMkf3JRBdyb4iZ19uw=
X-Google-Smtp-Source: APiQypLJGHki/O4NyxEo4REtwndVeMiBhj/1YwNXViHoZyTPTQRjtcXGvs2tTAJHs7VX+1gCGzmglg==
X-Received: by 2002:a17:90a:f418:: with SMTP id
 ch24mr7230962pjb.68.1587747924260; 
 Fri, 24 Apr 2020 10:05:24 -0700 (PDT)
Received: from koo-Z370-HD3 ([143.248.230.14])
 by smtp.gmail.com with ESMTPSA id q64sm6176821pfc.112.2020.04.24.10.05.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 Apr 2020 10:05:16 -0700 (PDT)
Date: Sat, 25 Apr 2020 02:05:12 +0900
From: kyoungho koo <rnrudgh@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: rtl8723bs: Fix comment typo "the the".
Message-ID: <20200424170508.GA10761@koo-Z370-HD3>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

I have found double typed comments "the the". So i modified it to
one "the"

Signed-off-by: kyoungho koo <rnrudgh@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index efb5135ad743..bd18d1803e27 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -822,7 +822,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 
 	psecnetwork->IELength = 0;
 	/*  Added by Albert 2009/02/18 */
-	/*  If the the driver wants to use the bssid to create the connection. */
+	/*  If the driver wants to use the bssid to create the connection. */
 	/*  If not,  we have to copy the connecting AP's MAC address to it so that */
 	/*  the driver just has the bssid information for PMKIDList searching. */
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
