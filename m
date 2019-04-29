Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 056ADDB80
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 07:23:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D606C85D57;
	Mon, 29 Apr 2019 05:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 74yn+ONZvLqx; Mon, 29 Apr 2019 05:23:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 643C08587C;
	Mon, 29 Apr 2019 05:22:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 194961BF969
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 05:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 16B92854C9
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 05:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VDLmWpRWjZPH for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 05:22:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 96698848ED
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 05:22:49 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id h1so4595830pgs.2
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 22:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3OtfogmeJgUqiEW89c2YF2fYhzdnDhdsFwRFfDCex4k=;
 b=XbEj+INCa45s6kCYCP/FKBs2oVWXvsOEQir3i87dzjziF8heEiLt4z3ML76ippt8Is
 gr4imlrBHTScvqBcWIm9u2CT8NJthNj2pVTs6J2l6ShRz3ksMkhnP8wj4qD4XNBgRnVW
 zkCOR9bK09JbHsh8GsnMiqz6qFm+fdyHnlXy7T77pBp98v9553fUV30r83AEefCR27TE
 2/xOANp5ysgT/USHLYATmeji0BIOeGfvCyStG291N53FiQNHf6FmgneDiKa8E20ZNYDr
 tekHgWN67rtfb2zv0rpWCyNVCf0ZAvDIwXg82M+GPEXMrm5dIVEAebEomNW9NW52mpBB
 JVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3OtfogmeJgUqiEW89c2YF2fYhzdnDhdsFwRFfDCex4k=;
 b=h6wDsPDA/2/FihkPd7SBOUzPssX41vCSIaZhvXyi9BLPyCVGZ6htfISsb0IvPIzm/6
 Zm3TmipkuOdJ0kiccZqpSw6Jbk23Ps6ZDhcgUxdq6rQ6nxxPNIHvz1FLhsZBEcoVJyGW
 WleE3LDw06YQ5dNJ4Sj4dwE7c2iI0Jv4yZq+KnSKse8XO6x5xdUjnfLUteTRFjjVWFdx
 uTgUtDWNgYz+Q3txZDD5sUZlXj/8DInZdgRwEoUq4gZHVgpQS1S/3kFZyWZqDGT9zERY
 pyZ8G8jcNVV4N3nEhVSr+QxzvPw/ekzn67W9itADoILbvn4ILT50+LOZ7PWipSt8Hnc7
 BYBQ==
X-Gm-Message-State: APjAAAW6bx+YbLNXmB8vgzG7M08IqpOuGDRRKZ+lI5MCXWC6XjPt4T4D
 lkhzPhFxeCdw3ttkRz+JdP8=
X-Google-Smtp-Source: APXvYqzTsbTWgqSKMZLc40ZGoI+7DjRJ7y8eeghiGyQXg4gYJK8DQmE4dUb/SQH5R7IDlAzclwo2ew==
X-Received: by 2002:a62:be1a:: with SMTP id l26mr6708480pff.201.1556515369201; 
 Sun, 28 Apr 2019 22:22:49 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:12a5:ab58:559f:ec82:1c85:ce7])
 by smtp.gmail.com with ESMTPSA id
 e6sm28955119pfe.158.2019.04.28.22.22.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 22:22:48 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: core: Remove blank line.
Date: Mon, 29 Apr 2019 10:52:39 +0530
Message-Id: <20190429052239.29598-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Julia.Lawall@lip6.fr, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

To avoid style issues, remove multiple blank lines.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index 2474fa6fb49b..67b8840ee2fd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -75,7 +75,6 @@ u32 _rtw_init_sta_priv(struct	sta_priv *pstapriv)
 
 	psta = (struct sta_info *)(pstapriv->pstainfo_buf);
 
-
 	for (i = 0; i < NUM_STA; i++) {
 		_rtw_init_stainfo(psta);
 
@@ -393,7 +392,6 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 	);
 	pstapriv->asoc_sta_count--;
 
-
 	/*  re-init sta_info; 20061114 will be init in alloc_stainfo */
 	/* _rtw_init_sta_xmit_priv(&psta->sta_xmitpriv); */
 	/* _rtw_init_sta_recv_priv(&psta->sta_recvpriv); */
@@ -436,7 +434,6 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 	if (!(psta->state & WIFI_AP_STATE))
 		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, false);
 
-
 	/* release mac id for non-bc/mc station, */
 	rtw_release_macid(pstapriv->padapter, psta);
 
@@ -582,7 +579,6 @@ u32 rtw_init_bcmc_stainfo(struct adapter *padapter)
 	return _SUCCESS;
 }
 
-
 struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter)
 {
 	struct sta_priv *pstapriv = &padapter->stapriv;
@@ -617,7 +613,6 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 	}
 	spin_unlock_bh(&(pacl_node_q->lock));
 
-
 	if (pacl_list->mode == 1) /* accept unless in deny list */
 		res = !match;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
