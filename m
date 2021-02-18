Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2F031EE6A
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 19:38:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE6A786928;
	Thu, 18 Feb 2021 18:38:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bHZHmbHcFqi1; Thu, 18 Feb 2021 18:38:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD2E0868B4;
	Thu, 18 Feb 2021 18:38:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABE121BF33A
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 18:38:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A62ED86C25
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 18:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bwGMFPl6C7ut for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:38:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AEA0786C1A
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 18:38:13 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id 189so1886419pfy.6
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 10:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Rm3iKJC71AZhcv9cPHX8V7GUbemia6Ju/le2pydValk=;
 b=eu3pg3nf6z6GeVNgi0Ustk+0RI+1yIUJbeRmSSe+MZpypwBmeEZod/SkghwGJrMYys
 2WxB9U/Ag314r8ZG2h4THNZ7ZEX3tCDpqVOXrvJksvTwC5KaDFDug9e0vb1powb4Li8Q
 7BfFv8yDTMeCcOml9aLSBdfn/gTi181dtrvcnu23cXaBoehSyASJOrEr8izIbC114gen
 0s/YgJJcp/LEUxZyh8dDjCaRQCOF21Jei1gyh7KJnRXNPB8HM2Hg/p8dpOnrmGXWmEr+
 WBEQQF+aH1OMHDBZsTYBIKeYJAhixJ/04OS/u9sMPvSJ4GjQJ7pHZyaSX0NNnp6HN4Ff
 JGuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Rm3iKJC71AZhcv9cPHX8V7GUbemia6Ju/le2pydValk=;
 b=KiL71tOJI/8DqwxxFCoe1GZi6jyOt/08gurDjVaX7HGlqblDQPiR5Dsj0UGPk90I4D
 M8DmGXtjynjwp3U3qJzDng9tgRSLC15ZiwoxDGPNNz1rjMJCv8jB+fTvIcdVXOgGtVJq
 KaeRSJcOKWYht6daT3Jzg+e7ohNb5GtPyPdFVTBrn0RwkCjg85gongp5iOFbFmwp09uV
 0oDsSoKrDMkSgwI+WbBG658QhzSrhW1iCwCfXUf1JrNiDk0GL68oEu15a/iCBcCqdSWj
 51gJWpznqG7tWEXBBhjav+c3ha10Y0zjosgGG3IjmBMyxlZoJsSTmNS0oixnknVQuDuG
 mpEg==
X-Gm-Message-State: AOAM533u9mOGSaxsAeLrwt/cJbrdV4EXw0V2zqm0cxX7Kf55xTWk+yoG
 1+myMXCqnNgIJzYb6pqsKGW1acFj5hbE/g==
X-Google-Smtp-Source: ABdhPJwnr5VExSrM3WtwOAYbaZQZBI3qaxRGPcwS7bL5drTQPqfvzdC/R194Lzguk3ylDED2mgfaaw==
X-Received: by 2002:a62:b516:0:b029:1ea:34a:a70e with SMTP id
 y22-20020a62b5160000b02901ea034aa70emr5540906pfe.38.1613673493395; 
 Thu, 18 Feb 2021 10:38:13 -0800 (PST)
Received: from novachrono.domain.name ([223.235.222.137])
 by smtp.gmail.com with ESMTPSA id f3sm6545240pgh.75.2021.02.18.10.38.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 10:38:12 -0800 (PST)
From: Rajat Asthana <thisisrast7@gmail.com>
To: gregkh@linuxfoundation.org, jerome.pouiller@silabs.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wfx: Fix alignment style issue in sta.c
Date: Fri, 19 Feb 2021 00:07:57 +0530
Message-Id: <20210218183757.72995-1-thisisrast7@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: Rajat Asthana <thisisrast7@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch error for "Alignment should match
open parenthesis".

Signed-off-by: Rajat Asthana <thisisrast7@gmail.com>
---
 drivers/staging/wfx/sta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 5585f9e876e1..8c57338efc71 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -193,7 +193,7 @@ int wfx_update_pm(struct wfx_vif *wvif)
 }
 
 int wfx_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
-		   u16 queue, const struct ieee80211_tx_queue_params *params)
+		u16 queue, const struct ieee80211_tx_queue_params *params)
 {
 	struct wfx_dev *wdev = hw->priv;
 	struct wfx_vif *wvif = (struct wfx_vif *)vif->drv_priv;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
