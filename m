Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5126E34123B
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 02:43:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87DA883638;
	Fri, 19 Mar 2021 01:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PXDTSus9Se5Z; Fri, 19 Mar 2021 01:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 809C6834F5;
	Fri, 19 Mar 2021 01:43:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDD811BF365
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 01:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CCC5C400F8
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 01:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jO8Aiqq7_tWW for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 01:43:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F278400F2
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 01:43:39 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id q3so1388939qkq.12
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 18:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GtYe40cMvpJ5jW+cxbW4Q+QoxKOLjta5r1ofkTXrT5c=;
 b=fjD+Nbvw1GiY2cjJRBQ2po42ta5HsUJafxM9qRNADnvSwx4n/aUQwWp3IR1QLGpa6p
 iKWaS7ROFEBBNlvzZdzOB4+XeOs+JA9xELijHXmk0iP8MCoi7tGK/rnbN6xMdre7UbwS
 rUfbgXtI9cEXizYn5FiwmReZqM4xh6JPUQmnuA4HBN130unkbGiP07Hbu9DFE3F6f7tE
 ZCLcPm5UqUyWuPVhRJM5lM9gSgYQcYWzc2tC1bzk/wj58o63GYiTNnYhw9H+xDjFTI/t
 /Cm9Gh/xUfXmw2dOOMXFCfTCMtz4ewRcv4p6Ot3n+9cSwp4R8cGuKvax/V3+BjuaqZIV
 hsnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GtYe40cMvpJ5jW+cxbW4Q+QoxKOLjta5r1ofkTXrT5c=;
 b=VaFrKmMCBsdfWesFBKvu3uLI0bUqykecqCEl4RA84RIRjGuIjRkp5G1QWTSD3ZorRY
 ggWb6UOQpyX//5DqY9fMd83/W6hm/cAfOXa0UhH8WtXpOV+xISCIFHXtQxGoZTR3dwFI
 4Dx2awc9wI0xh/Vcmgvt13MKfb7a+XFACH0wYLq5B6rKhq8WdM/QyOuQTKIhtUUKEY6X
 kAjbBf2CNTI5zIY4xWcbLxlb/rgsibpSl8lFmtgzG41xGA9GJ+uZLZWYLl+rdPw5uN61
 YuC6fL0EevFbGohPp2kciOnNvty3p3DvbLe9gUi+HGFWchAjmogb10dxTD3OF1AyKJPL
 NM0Q==
X-Gm-Message-State: AOAM531zUlI5fQOM6BSUqh0h9PHmi7aHX6FBb8xf7a3NvRcx19SBOStX
 djRLuGky45mY0eMRGShjISU=
X-Google-Smtp-Source: ABdhPJwjQoVoFuwgNAjbpcHou4wIwDyctQhezSdONC/uCtzIchh2AGBI66dG+FmreNw/Vohbs1ViEA==
X-Received: by 2002:a37:94f:: with SMTP id 76mr7835587qkj.222.1616118218167;
 Thu, 18 Mar 2021 18:43:38 -0700 (PDT)
Received: from localhost.localdomain ([37.19.198.87])
 by smtp.gmail.com with ESMTPSA id o125sm3168515qkf.87.2021.03.18.18.43.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 18:43:37 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, insafonov@gmail.com, dinghao.liu@zju.edu.cn,
 dan.carpenter@oracle.com, yepeilin.cs@gmail.com, unixbhaskar@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: Fix a typo
Date: Fri, 19 Mar 2021 07:11:20 +0530
Message-Id: <20210319014120.6474-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


s/pasive/passive/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index f87dd71934c3..96d15fca48b0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -37,7 +37,7 @@ int rtw_init_mlme_priv(struct adapter *padapter)
 	pmlmepriv->pscanned = NULL;
 	pmlmepriv->fw_state = 0;
 	pmlmepriv->cur_network.network.InfrastructureMode = Ndis802_11AutoUnknown;
-	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: pasive. Maybe someday we should rename this varable to "active_mode" (Jeff) */
+	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: passive. Maybe someday we should rename this varable to "active_mode" (Jeff) */

 	spin_lock_init(&pmlmepriv->lock);
 	_rtw_init_queue(&pmlmepriv->free_bss_pool);
--
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
