Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E73BD2A7626
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 04:48:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5174855C6;
	Thu,  5 Nov 2020 03:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-P0JJMCoY3g; Thu,  5 Nov 2020 03:48:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22C4C85507;
	Thu,  5 Nov 2020 03:48:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 884D81BF31C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 848C085513
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oHe3MZ2RlTAP for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 03:48:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EF0CA854FC
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 03:48:11 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id y17so159577ilg.4
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 19:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5f5BTIPme4ikP9+zfLnqigWbwnM0CQmfkQuYPkT+kSQ=;
 b=Y6dM+PyXrN1z0I+jPyi4us2CYcNDgW3IpbwtPVDDZhBmASMbGNf9euRATLRkI0E8LS
 Uggu5B2W4x4r/GVnoVgxK+97K1BXojW4F4eO5aJ1Czri/2ldHwUggcH065PrWs1yxWWJ
 GWQycbCVZMKPQF8XjrTqCS7D5K3OSR8bZ/16oBbfZH/7ck7X1HTm3aF5RuwPfPDayjrQ
 QrcORZXjCJim70ULW19PecJE4gl0CO2ZIz2fOLwdPkW2lcS6kHztebbusSoByvm3I572
 VCN1K3e/aQdkpN/NeiTzcAbOOU7yCYwfA3plTgOjncO3BvLy4V+6se+uS70st3PWhgze
 JyGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5f5BTIPme4ikP9+zfLnqigWbwnM0CQmfkQuYPkT+kSQ=;
 b=mPA0jAM7r/1IPvq9BFxUlTeodyTvnoXK/wd7Qcy6ov7fEuWiBJ3NoXTAjTYGukUTSL
 X0L6xyhLczj7iOTH2/Yhz7GPHgy9LH5jqzvtd0/lSGJHOjsrF8cR0yfJdJmX65N6dn4s
 cmIw40ASwnV883L1HFmq7Cv+fBqvNzA4PAeCTVHHkzJ26qW1LJ3nEJzoZ+YeNgYe6dxj
 Nnan/1VXVv5WzW4RQSamvF1a9qzgs5hZJM0E03XFHp3rNVjA85TXpiPGjI5ebmpQ4AdL
 +KdOR2Hsv2bsl2aWRLUTIK/e3R7IHxIJu8HCC20grMZHWRAQ0slwCKpcQcQd2ovCV9gW
 51Bg==
X-Gm-Message-State: AOAM531+5FxsiV1dK6hroVZmhcBv9/rg9ghgxiyx83A1NBnBxkz7Inmd
 3k/UoxTbsmivEy70J/DYfh8=
X-Google-Smtp-Source: ABdhPJxMjdLDRJ/Eynb00o7q+dA54IKGrLuxUpkMN482+T2MMQv8M6jlK9Ho4GE0Bx+hHu83g8Q1UA==
X-Received: by 2002:a92:b656:: with SMTP id s83mr477295ili.280.1604548091362; 
 Wed, 04 Nov 2020 19:48:11 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id p6sm172877ilc.26.2020.11.04.19.48.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 19:48:10 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/9] staging: rtl8723bs: remove NDEV_FMT macro
Date: Wed,  4 Nov 2020 21:47:49 -0600
Message-Id: <20201105034754.12383-4-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201105034754.12383-1-ross.schm.dev@gmail.com>
References: <20201105034754.12383-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary macro for %s and call it directly.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_service_linux.h | 1 -
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c       | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_service_linux.h b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
index 498d5474010c..24386aa9ee1b 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service_linux.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
@@ -123,7 +123,6 @@ static inline void rtw_netif_stop_queue(struct net_device *pnetdev)
 
 #define rtw_signal_process(pid, sig) kill_pid(find_vpid((pid)), (sig), 1)
 
-#define NDEV_FMT "%s"
 #define NDEV_ARG(ndev) ndev->name
 #define ADPT_FMT "%s"
 #define ADPT_ARG(adapter) adapter->pnetdev->name
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 5dfa2fa24c76..736f1a6ac118 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2574,7 +2574,7 @@ static int rtw_cfg80211_add_monitor_if(struct adapter *padapter, char *name, str
 	}
 
 	if (pwdev_priv->pmon_ndev) {
-		DBG_871X(FUNC_ADPT_FMT" monitor interface exist: "NDEV_FMT"\n",
+		DBG_871X(FUNC_ADPT_FMT" monitor interface exist: %s\n",
 			FUNC_ADPT_ARG(padapter), NDEV_ARG(pwdev_priv->pmon_ndev));
 		ret = -EBUSY;
 		goto out;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
