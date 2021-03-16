Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E08333D361
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 12:55:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C6F043171;
	Tue, 16 Mar 2021 11:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C9BOOnoBUarN; Tue, 16 Mar 2021 11:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70944414FD;
	Tue, 16 Mar 2021 11:55:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E31E1BF2FB
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AEA742D19
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FDm-ASbxXp4M for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 11:55:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00DF442FF6
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:55:05 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id 16so8655731pfn.5
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 04:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=jWE9eh2B2TDFsfKZq6plW/Qgh7fGvrwGQEU3uEE1lDE=;
 b=M1exAiX4O77an0oYe+7mH5vA8CmSpcAOX3UebdGH0hQY3Bk/F3e2Gj9VHKb8EGYKwA
 Vz6rXa50w42/WEvGpRDM+5QUvQT6MWA0CEaaqkTATyl7GPrVoSCDs9dmhy7rqzZU8i7d
 Rb4s3HKbHtaDUtbLelJxUl+oPX9EeKl3p4sTSWqzgz68ZC8duNVOPlHDSLg2cJUYHR9v
 ZqxQUj8uEGI7QUXcM9RYMAghcZzAqAjWfxEnXP6/P2jMPwEsNtb7Y1uy5PgU9VwWn1s0
 HoefiT+yZ3PuM5J0S3MFWtGgHKIgZdX8f5yIhFEFWoUfgud6yqYUSYXYnMtuo8ptIJAu
 O6cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=jWE9eh2B2TDFsfKZq6plW/Qgh7fGvrwGQEU3uEE1lDE=;
 b=d/n6qUq2UnMwXV/gRySmF209EVtDmD5E3eDb6AjVFu/syGRgkKvlf1IhL3BG5UaHtz
 WO4WBKPCyxJdNc5il1d486tl597gK1FWudOjbhOvOHBrwr/C83MvJ3teEDmVrrYZnMxX
 3UlB/lUgUBMuICsmcz3R7nwaLM8jR/JVDXNvsvsr49wApQvUQNKfuz+YiipVEJJyCBmd
 2KWzFzpHsHrjgakbpdBhhxCTanssXsL1oXmhGRKugZ2kzy15f2SwqQgpWTOdsKg7eAju
 mRIQA1vPVgf9shPT1VpvmhvUOQdejBvh7XSVW6t9mU2L4v2D5rJAli7/vg9hw2nn3C2w
 SfgA==
X-Gm-Message-State: AOAM531IyoTSNHh3y4xjzTG3CJ83nHRuJx6PSyqi0l2UKDcO7D85D5NC
 wk+s3bHVG7JPYpHhpE7E+7Q=
X-Google-Smtp-Source: ABdhPJxVyIZEOPrvRi25YXD/IyvAy2fWxwhWnVNpLCd4x5ADgBjDh0crpLd4NJwWkC4mgvR46wv0vQ==
X-Received: by 2002:aa7:8d92:0:b029:1ee:75d1:c87 with SMTP id
 i18-20020aa78d920000b02901ee75d10c87mr29268650pfr.9.1615895705397; 
 Tue, 16 Mar 2021 04:55:05 -0700 (PDT)
Received: from shreya-VirtualBox ([49.207.217.47])
 by smtp.gmail.com with ESMTPSA id u66sm9271455pfu.186.2021.03.16.04.55.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 04:55:05 -0700 (PDT)
Date: Tue, 16 Mar 2021 17:24:58 +0530
From: Shreya AJith <shreya.ajithchb@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3] staging:rtl8723bs:core:rtw_wlan_util:fixed indentation
 coding style issue
Message-ID: <20210316115458.GA2302@shreya-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 bkkarthik@pesu.pes.edu, linux-kernel@vger.kernel.org, d.straghkov@ispras.ru,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed the indentation of the else part of the conditional statement.

Signed-off-by: Shreya Ajith <shreya.ajithchb@gmail.com>
---
v1-> v2:
Changed name in signed-off-by to match name in From.
v2-> v3:
Reversed the change and made change in From instead.

 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 975f2830e29e..4b5afaeac916 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1760,7 +1760,7 @@ void update_wireless_mode(struct adapter *padapter)
 
 	if (pmlmeext->cur_wireless_mode & WIRELESS_11B)
 		update_mgnt_tx_rate(padapter, IEEE80211_CCK_RATE_1MB);
-	 else
+	else
 		update_mgnt_tx_rate(padapter, IEEE80211_OFDM_RATE_6MB);
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
