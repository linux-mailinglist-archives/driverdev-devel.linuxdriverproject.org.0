Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B71B2E628E
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Oct 2019 14:06:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F64620484;
	Sun, 27 Oct 2019 13:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s175T+PWMbmW; Sun, 27 Oct 2019 13:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 323522043D;
	Sun, 27 Oct 2019 13:06:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6ED461BF8B4
 for <devel@linuxdriverproject.org>; Sun, 27 Oct 2019 13:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6B40085465
 for <devel@linuxdriverproject.org>; Sun, 27 Oct 2019 13:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jsyZ4-ZOafww for <devel@linuxdriverproject.org>;
 Sun, 27 Oct 2019 13:06:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 89A3F820B2
 for <devel@driverdev.osuosl.org>; Sun, 27 Oct 2019 13:06:34 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id g24so6675702wmh.5
 for <devel@driverdev.osuosl.org>; Sun, 27 Oct 2019 06:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q7+ITGPF3JM+lAUTt3VXVFdC2laXS2ImbyjZp+wnQkw=;
 b=fmKC8Mt16jXkc4PKFgndhqbChVqmzKGwWDi85jHuZEmLwlE1uf35csN1Plu96qz69f
 nNDSavXTztJ/l540EdD1hwTTOp/7GwO+PuubXwLcW8HTTpXTk+k5RiF37ExwJO+YhWJV
 KFILhc8Pmb/1iBb3fuT2zHRQZmWE6SO4m3gm62DAkOE0fO+kj3QkpK+d8MxhC5h0nJ/A
 xhl6T6nWOS7vYxvjUV3B/15Qyg0cWcz8no6jk1//3VpMohFeafFqCsJc0OTuuWc0rS9D
 BAuOOTx8jfFOkH4s3VvFTBF/dQdhLdTSIuYG2StnROaIKT8FmnfASvYvkQFYpLQ5kWcY
 Di3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q7+ITGPF3JM+lAUTt3VXVFdC2laXS2ImbyjZp+wnQkw=;
 b=DYE54zmJQu06FNOyxyI21/POwDG+lf23TzaDIQN087jsVHVJQ5JG0m8vGTzBZMCnUv
 lqjDaMAwaGhDhNBB4zsky6aeVwOKmi54QBUtIR1T5G0BxkJQfXBEudSBZ2mU+11iXezv
 fHo2nM8uX8W2SBesYhI/yttnrzbBTmCqGcMl+SzEbX3kW9Yc2ixxuX09CEoGMh0c0rNu
 K0mak4We5b9jq8KU1nV5Etiiv0lLgl24SQtmz8IBygExnI64ZGfN4+iMmqz9qA4KRc/8
 /d0hwfF9szK9rAfwSO3fsVTQVs2jcPvom0FDwXmwqMYC+2INWj7tZGKXQuqtkgFEbRXc
 G2bg==
X-Gm-Message-State: APjAAAXapFoSaFjRJjGI3jsFrQSXVNHWcc6BUHBYgedrsBufC8c3GrlM
 vfrUHhQPp51kRUEfeAadDm4=
X-Google-Smtp-Source: APXvYqxs3IK7zhapjHaGamTvhkE6gKWudgHFpIba5HV0aUuxyC8ucqXisVIWTW+330hRoLVlJ9Qi8g==
X-Received: by 2002:a7b:cc89:: with SMTP id p9mr10805931wma.99.1572181592820; 
 Sun, 27 Oct 2019 06:06:32 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id 126sm8127371wma.48.2019.10.27.06.06.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 06:06:32 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: rtl8188eu: replace tabs with spaces - style
Date: Sun, 27 Oct 2019 14:06:04 +0100
Message-Id: <20191027130604.68379-4-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191027130604.68379-1-straube.linux@gmail.com>
References: <20191027130604.68379-1-straube.linux@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace tabs with spaces where appropriate to cleanup whitespace.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 8b7adb9e76c2..73f2cb5ebaa6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -167,7 +167,7 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 {
 	s32 index;
 	struct list_head *phash_list;
-	struct sta_info	*psta;
+	struct sta_info *psta;
 	struct __queue *pfree_sta_queue;
 	struct recv_reorder_ctrl *preorder_ctrl;
 	int i = 0;
@@ -318,7 +318,7 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 
 		spin_lock_bh(&ppending_recvframe_queue->lock);
 
-		phead =		get_list_head(ppending_recvframe_queue);
+		phead = get_list_head(ppending_recvframe_queue);
 		plist = phead->next;
 
 		while (!list_empty(phead)) {
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
