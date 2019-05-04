Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D03CA1384A
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 10:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D15787AE0;
	Sat,  4 May 2019 08:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bDVKU-gBRTiE; Sat,  4 May 2019 08:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFD70878E8;
	Sat,  4 May 2019 08:23:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4FAD1BF5A9
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 08:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1AFB88502
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 08:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WM+uMzkbu4mz for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 08:23:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 33F29884F3
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 08:23:42 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id j11so4071621pff.13
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 01:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Ei1d/q9b64AgY64YtKeZNvDCgbGXYa1XWRAF1hvMqjQ=;
 b=mY9UldpHOh2Aff00BG2QSLCDNWmgdV33I2Oq0q9rBK++2b4+VV5meBrQ49oHXFvPdM
 geJGJhiUiAKKqKMIK+9jsJ0YHlbG3hu7MpVSAiwwGroTGsygS6I1l4w945WOO3WsWF4t
 a3MVZssgoQTW31r3f8kkN3jfnhUEgYfPJ0Wl9FC4c1xgHnrDAA8fcRSQE6c9vQETnLuc
 7McY9HLTn4yIhCnDAjk2bIZNavK9Q/GSUohT1UC42cbxUTjLAyWLP7KlXH64XqXzAcvX
 S88+AL5L9G1iQivqvr2ajJOwG3RtsOuSl/VF+AIPJ7NABSLsTpKz15vDvUftOwVDdXks
 gsrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Ei1d/q9b64AgY64YtKeZNvDCgbGXYa1XWRAF1hvMqjQ=;
 b=FpzGS6EoAjtPluDOOUlMs2L8ZxZ47FI3XDVQbejRDQJ6z8zfyq65E9JV8TECKm8qac
 9hlgcEGkczXEXuVxbiXrtXV3A2g+zynuj8GEiB4a7SiYTkiTjMPN35RwhlCdyZUrd18q
 D6HdXBIP6uomP1V7N0JVQIYwERAbwflcl0rMPQK7BJ9vMuQ8iSU0CpknaUXGweCIhgLy
 Cd54G+56af0mjnoAWLH7G5PhQibC4wlc2L4jaMjOcCO8BJ3AI05wiJjiN3iHmODKsHKz
 WsDlBGWOtk0sgd3KdhdC5JZPceRaDDbHIej/6KCgxKJ1CwBHk1/Ol2dHLdxDLR0gGu9K
 hPTA==
X-Gm-Message-State: APjAAAX3UUJifJ+28GMl97JeUTivKqjmAgR/tF9JNT6dLbkrmUPYMH6a
 XvJQRA21LaZ6cJY8c2A5MS0=
X-Google-Smtp-Source: APXvYqxdwgnu5k4KYGXIHhuUbcHkvlEzHdP5dhc0W0UqhYKW90TPsFbwLXfNFWYwue0M7I+tebv3CQ==
X-Received: by 2002:a65:6644:: with SMTP id z4mr16860549pgv.300.1556958221679; 
 Sat, 04 May 2019 01:23:41 -0700 (PDT)
Received: from arch ([2405:204:70c5:3a7c:f5c0:9a3:5498:848d])
 by smtp.gmail.com with ESMTPSA id k191sm8983943pfc.151.2019.05.04.01.23.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 04 May 2019 01:23:41 -0700 (PDT)
Date: Sat, 4 May 2019 13:53:34 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8723bs: core: Fix Spelling mistake in comments
Message-ID: <20190504082330.GA9002@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change spelling of 'associcated' to 'associated', to fix the spelling
mistake.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index bc0230672457..d4bf05462739 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1914,7 +1914,7 @@ static int rtw_ht_operation_update(struct adapter *padapter)
 
 void associated_clients_update(struct adapter *padapter, u8 updated)
 {
-	/* update associcated stations cap. */
+	/* update associated stations cap. */
 	if (updated) {
 		struct list_head	*phead, *plist;
 		struct sta_info *psta = NULL;
@@ -2072,7 +2072,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
 	}
 
-	/* update associcated stations cap. */
+	/* update associated stations cap. */
 	associated_clients_update(padapter,  beacon_updated);
 
 	DBG_871X("%s, updated =%d\n", __func__, beacon_updated);
@@ -2136,7 +2136,7 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
 	}
 
-	/* update associcated stations cap. */
+	/* update associated stations cap. */
 	/* associated_clients_update(padapter,  beacon_updated); //move it to avoid deadlock */
 
 	DBG_871X("%s, updated =%d\n", __func__, beacon_updated);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
