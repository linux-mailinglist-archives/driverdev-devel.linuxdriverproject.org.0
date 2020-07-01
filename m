Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4842D210EC4
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 17:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A2717891A8;
	Wed,  1 Jul 2020 15:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LD0bEasQh34q; Wed,  1 Jul 2020 15:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BB6A891B5;
	Wed,  1 Jul 2020 15:12:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96FB21BF30F
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 15:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C96D8919D
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 15:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yETXbnAZyCLu for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 15:12:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB9CE8919A
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 15:12:28 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id gc15so3213762pjb.0
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 08:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GHspt691GnJcmHUGCmC1Ra9Qro6zy+8N3y3KQeEOE/I=;
 b=B8ZAE2KHCnYDLwc85Mo48Kn0vWrxmRxulatTTQknUm4wFW0y90yVX+Ji+CwbxI48Z3
 Na2htJ+CtZ3z5hVKTS2wM3jA5rrb9loPEUNl67d1psAjCRtiAbAfvrOWM8LA7A/0nRp4
 52Yjp34HLgRDLh4u+m3Ik+ZAYSzcfuEvL9OOV9DWEn98BnUdiw1g1/xfoXyBrq1btraK
 datopkInXFp3+ekr8WISCo+qi9qEI+vpWeta4CpAMa+aDaCBsEzwJgcqY6Sd7SLS6ugk
 9ZCpN7EDjJmQvasHzaVDQ55qbjt6wpXZpRj9KJmaP3AwtOKaTUdpx15mEvk7NJqB4ZvO
 o94Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GHspt691GnJcmHUGCmC1Ra9Qro6zy+8N3y3KQeEOE/I=;
 b=ZvlNl6nRx0rcsyVAfMy1eGLbBcmBA/pLs6aVON9Pq8RhmHQ6ssK4GM30mK5dvP7Mp4
 CYFL5nQpUmknSVlmiMGUW73iRpi6afjWhUmxFrHl/MPT5EpDuq9EyVzKxOzpIvBprhjV
 WrLH5Nb5AB+a9tICenWJQJcSxeBvnKAIJg4Zh8YltMS2FEZ6uuz5Mp8DyCiiWOOIXW+t
 kJEwtMhPX3PhYWOD9plyP7E7DbxeWDiOrkftYZl+PJOPZyKJr0NkLJ1dgPbde6V13zkH
 kdocnfQce1jIn7h6TL6Cz6MOoEAlN3Q+5F49/GPsLMqIJ5cSBZ1f6jiSpQ6OsEqL7Ach
 yb+g==
X-Gm-Message-State: AOAM532Us0v0N1CZlGomGRFO79WRQ73kyGXhXROT9kDGu8uqcwJzqlAu
 cJRwS+gYZiNIn6kAiURnHSo=
X-Google-Smtp-Source: ABdhPJwcCBIGl5sgk98QTIrXsfV63xsjManiNU2ZRfobImVmx01I1hdEJk2TDEuFY4rwDpnQTcSZXQ==
X-Received: by 2002:a17:90b:3755:: with SMTP id
 ne21mr28114286pjb.218.1593616348102; 
 Wed, 01 Jul 2020 08:12:28 -0700 (PDT)
Received: from localhost.localdomain ([125.62.107.222])
 by smtp.googlemail.com with ESMTPSA id b24sm6209398pgn.8.2020.07.01.08.12.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 08:12:27 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH v1] Staging: rtl8188eu: core: Fix coding style issue
Date: Wed,  1 Jul 2020 20:42:20 +0530
Message-Id: <20200701151220.13124-1-puranjay12@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use %s and  __func__ in place of function names.
This solves following checkpatch.pl warning
WARNING: Prefer using '"%s...", __func__' to using 'rtw_do_join', this function's name, in a string

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
V1: Add staging in the subject.
---
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 7bb26c362b10..9cc77ab4fd6b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -25,7 +25,7 @@ u8 rtw_do_join(struct adapter *padapter)
 	phead = get_list_head(queue);
 	plist = phead->next;
 
-	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("\n rtw_do_join: phead = %p; plist = %p\n\n\n", phead, plist));
+	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("\n %s: phead = %p; plist = %p\n\n\n", __func__, phead, plist));
 
 	pmlmepriv->cur_network.join_res = -2;
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
