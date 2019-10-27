Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB70E628B
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Oct 2019 14:06:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6BEAA20471;
	Sun, 27 Oct 2019 13:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VLR1xgb-NMtR; Sun, 27 Oct 2019 13:06:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DE3B12044F;
	Sun, 27 Oct 2019 13:06:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3711F1BF3E9
 for <devel@linuxdriverproject.org>; Sun, 27 Oct 2019 13:06:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 33F7B84D41
 for <devel@linuxdriverproject.org>; Sun, 27 Oct 2019 13:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SOce_QhCUB7f for <devel@linuxdriverproject.org>;
 Sun, 27 Oct 2019 13:06:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5C99884589
 for <devel@driverdev.osuosl.org>; Sun, 27 Oct 2019 13:06:29 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id n7so6682260wmc.3
 for <devel@driverdev.osuosl.org>; Sun, 27 Oct 2019 06:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E48jVCfAGOKBFgNTIr5FbZLg41IvwUd7cL0m7x4ZdGI=;
 b=UCyAY8kshvJ/xio2kzAtDjo1XBcDV6Ptj+pV2Qj5GO+Dt1q0l9sVd0TQfFwbhzJDXF
 5EyS/10um7GapAjwCbynnklu2gX0d8zETV10IJb9S0FItZZm8zjFu6RJb0NcRz/lDLf3
 HHInOXTNWOwAel0DdKeAzzC3uXO6qzM9hsxZWvIpEGf21/Ne5hxrRlJwZar3N5ankgnj
 UsuTAmZheuce6GSEPUYeShirjZtSiKBctUHaGjS2xPIfJZNYcuzI0bl4+BxMaQGjbj8e
 GNUM+iH7+Fs4Kx42iY3hr/DiiAKKTOfMIePSg0KXNiQ/Ar6GF7PZlKb9TgCLVFvqnOMz
 3SXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E48jVCfAGOKBFgNTIr5FbZLg41IvwUd7cL0m7x4ZdGI=;
 b=UQn2JKjuKdHzOjfE3xi0gx53LDTeQToXqwz+uOSnNq6Dooy29AVS51APZ5rJcMLbPJ
 QXxZvFbw6pmvL1/CrGUNIaxdVNrvMjVSIIVyMj1ytggcH4kDV5uoBuLUK17aCmxaniDl
 PI9FMkYC+s6o1nwoX0MNwOZ8v37uwA0yqHn5XjKUEEwdqC8eRNY9PReS4VISNQYErywx
 Tfx9NF65NgSCKxn4Vxd9w+ris7ryDh1k2GsoyYZ6mNqo5xJwCgwPtCNMYOTll3Ylaxlu
 f7+51fz2TrvoCJXj+T20UImH/JAdJrShwqqhxJoyzjS0MT1LciHBzjZCrHDhqy4VIcXu
 ohXA==
X-Gm-Message-State: APjAAAUIgwFO73KCad19Kso3qU+fBTvOOUiMjPj7DC4CPBF54zbxqM+r
 C/YacZ38/gVF/ztAS6/cFZY=
X-Google-Smtp-Source: APXvYqzK3CGe68HpHPiGJCa/XaQHHGLYs3nQW1zlv+QMKy7bFZY43rXprGrWHoxwVdwMV9YeSPRagQ==
X-Received: by 2002:a7b:cc88:: with SMTP id p8mr6132704wma.80.1572181587759;
 Sun, 27 Oct 2019 06:06:27 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id 126sm8127371wma.48.2019.10.27.06.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 06:06:26 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: rtl8188eu: remove exit label from
 rtw_alloc_stainfo
Date: Sun, 27 Oct 2019 14:06:01 +0100
Message-Id: <20191027130604.68379-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, Joe Perches <joe@perches.com>,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove exit label from rtw_alloc_stainfo and simply return NULL
instead of goto exit.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 776931b8bf72..65a824b4dfe0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -181,7 +181,7 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 					struct sta_info, list);
 	if (!psta) {
 		spin_unlock_bh(&pfree_sta_queue->lock);
-		goto exit;
+		return NULL;
 	}
 
 	list_del_init(&psta->list);
@@ -194,8 +194,7 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	if (index >= NUM_STA) {
 		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
 			 ("ERROR => %s: index >= NUM_STA", __func__));
-		psta = NULL;
-		goto exit;
+		return NULL;
 	}
 	phash_list = &pstapriv->sta_hash[index];
 
@@ -246,7 +245,6 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	/* init for the sequence number of received management frame */
 	psta->RxMgmtFrameSeqNum = 0xffff;
 
-exit:
 	return psta;
 }
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
