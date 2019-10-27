Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A53E628C
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Oct 2019 14:06:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1ECE85EA2;
	Sun, 27 Oct 2019 13:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v2GbAISRaM1N; Sun, 27 Oct 2019 13:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEF1B85055;
	Sun, 27 Oct 2019 13:06:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEB2F1BF3E9
 for <devel@linuxdriverproject.org>; Sun, 27 Oct 2019 13:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C81072043D
 for <devel@linuxdriverproject.org>; Sun, 27 Oct 2019 13:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5JZvlTR6415 for <devel@linuxdriverproject.org>;
 Sun, 27 Oct 2019 13:06:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 553BF203AB
 for <devel@driverdev.osuosl.org>; Sun, 27 Oct 2019 13:06:30 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id r141so6417168wme.4
 for <devel@driverdev.osuosl.org>; Sun, 27 Oct 2019 06:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gs3GiRBJblAnQ6egGV4uLJk282FsBIvSNYDjAwRLL+g=;
 b=Ywe3N4nQsVwPjtUQUEhvDHaoayXFYP/OeswTDv+CN1AbCzQxZ/m7hpJEIBga+I9pMY
 eNAD+KcRa8uTBgIumoiX8Nu5tbnx3/9gd2SJdAaJ5KSye5jr0huyZ3D1v9hZJod9cnQL
 nYFSM/0l36XP+6c+KwLl/jemZ/wKHnFUcs8pS1qsnj1im1bzwqlBPWaoT+jw8sof3mb1
 BpYBhrNB9KdGymDd9gRAo7LA7tSNCfy5slneQWeRTkTjDaLbUmOLDP6/3uKlYrLHFM1S
 1Dy24cc6VoZoYp2GJObFzo520mIwY34yOrkQ6M5Qu1a7LxARrl9+8VI9JtoSADheh/mR
 US6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gs3GiRBJblAnQ6egGV4uLJk282FsBIvSNYDjAwRLL+g=;
 b=hYbSw5vHID5Sa0RAW/P37yQtbBmYZJRKTref86LHc8WbMWH2TUkYIfqTH9JM5+r5wV
 tN2Gee6HtS1kMzRjFxO0VZWHZDGG/cutBlBVagJdFT/n1I/g25Xawr1lioz3UwrBuej8
 p0eXYsNArwqz0y0mUS4dYkbPudd5IgYg9zj1FZXPXkb4nEPID/V0VoY5AU7Sisog+4nG
 KbQEOz9mIf1RF2DfT8crgB9gf9+2ybXU8kxP+favZai41K8SBSWtMsmAXcbm1yy0l5ZP
 hJIb5McYTPTbQuYdbQEG1RwJ8GXfQUTicrjTHz201382Bho/27oMZZUqVu7a3ozrYdA9
 lmIA==
X-Gm-Message-State: APjAAAWP9xGX71jZCejCKP92c+H17Jr3JZ82/D0CVuB7+eSf4PEzIKGb
 WsJ19uf0HC7gIAWMCcgJu3I=
X-Google-Smtp-Source: APXvYqyF0Zd7gGXoIxMaA+lj8avWfAVO9dqxhm1cbZogNDJFN/LaCnpCEvh/bcezyQHbPUeZyRfe5Q==
X-Received: by 2002:a1c:c912:: with SMTP id f18mr12335034wmb.168.1572181588816; 
 Sun, 27 Oct 2019 06:06:28 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id 126sm8127371wma.48.2019.10.27.06.06.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 06:06:28 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: rtl8188eu: reduce indentation level in
 _rtw_free_sta_priv
Date: Sun, 27 Oct 2019 14:06:02 +0100
Message-Id: <20191027130604.68379-2-straube.linux@gmail.com>
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

Reduce indentation level in _rtw_free_sta_priv by returning early if
pstapriv is NULL. Also clears a line over 80 characters checkpatch
warning.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 43 ++++++++++----------
 1 file changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 65a824b4dfe0..6c03068d7ed2 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -135,31 +135,30 @@ u32 _rtw_free_sta_priv(struct sta_priv *pstapriv)
 	struct recv_reorder_ctrl *preorder_ctrl;
 	int index;
 
-	if (pstapriv) {
-		/* delete all reordering_ctrl_timer */
-		spin_lock_bh(&pstapriv->sta_hash_lock);
-		for (index = 0; index < NUM_STA; index++) {
-			phead = &pstapriv->sta_hash[index];
-			plist = phead->next;
-
-			while (phead != plist) {
-				int i;
-
-				psta = container_of(plist, struct sta_info,
-						    hash_list);
-				plist = plist->next;
-
-				for (i = 0; i < 16; i++) {
-					preorder_ctrl = &psta->recvreorder_ctrl[i];
-					del_timer_sync(&preorder_ctrl->reordering_ctrl_timer);
-				}
+	if (!pstapriv)
+		return _SUCCESS;
+
+	/* delete all reordering_ctrl_timer */
+	spin_lock_bh(&pstapriv->sta_hash_lock);
+	for (index = 0; index < NUM_STA; index++) {
+		phead = &pstapriv->sta_hash[index];
+		plist = phead->next;
+
+		while (phead != plist) {
+			int i;
+
+			psta = container_of(plist, struct sta_info, hash_list);
+			plist = plist->next;
+
+			for (i = 0; i < 16; i++) {
+				preorder_ctrl = &psta->recvreorder_ctrl[i];
+				del_timer_sync(&preorder_ctrl->reordering_ctrl_timer);
 			}
 		}
-		spin_unlock_bh(&pstapriv->sta_hash_lock);
-		/*===============================*/
-
-		vfree(pstapriv->pallocated_stainfo_buf);
 	}
+	spin_unlock_bh(&pstapriv->sta_hash_lock);
+
+	vfree(pstapriv->pallocated_stainfo_buf);
 
 	return _SUCCESS;
 }
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
