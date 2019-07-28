Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F14277E2A
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jul 2019 07:42:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97F49204BA;
	Sun, 28 Jul 2019 05:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9QaSADV+c38; Sun, 28 Jul 2019 05:42:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B14FC20447;
	Sun, 28 Jul 2019 05:42:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A5B21BF470
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 05:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 46FE987FEF
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 05:42:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d6vAoTn86XZA for <devel@linuxdriverproject.org>;
 Sun, 28 Jul 2019 05:42:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 92DA2878A4
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 05:42:05 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t14so26222672plr.11
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 22:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=buMofwxOkYYhsDK0eLU1yJJUmsd8db28MJ/pExWSBQA=;
 b=eg7MyJPyXSj0crmZvoM+Nw1hSPE04RPglm7h8SSUaz29dUFvNrPXNmhRY/xt5aL6Ne
 E88rG2u5IjemWpaeA3mWWgloMSUBp+7ysnPWUqCfNLGwHUiEbehaEA6PC1iU9x5RXQmj
 A+y8QY03KVythRMZbex2NqosNzNZ71w2BHcsdIKygJfeFPO0x4gfgn329kDllFLIErC8
 oGNRI0NFOVGITyXmeITi0/9CQpKqGFQaz3Se7/ZYs+VyK4NJLU5R6Btp3iBXsGJzJUKN
 4LgJK2F27McGQRs3MSnKYjZlE26BHWai/S4LmuaxGVVhE8J/oXsn72H2HOnIjgI1LMTj
 HtPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=buMofwxOkYYhsDK0eLU1yJJUmsd8db28MJ/pExWSBQA=;
 b=J1Hi10zEnJkUS/Rz0y0zfUe2PP/UzyqdIGGKVuTRC/8+BIFsClLUQJqqg5F9gomvDw
 4SFxPQyZ3CE04XzVC8OSJx2XUCVMQQFym/E5QUGDfvePOfLAyVHILoailE9yMx+CeZ7+
 KY5/7wfMewkayHTdkmTiFlRsfj0/jpaUQwY0G8C7yCHoSuWxKYiF2ylxSu1u6oDVihtZ
 7FipkMsHTNXv6myrAlVY8YAPC7EaS1joyTCYZd4VNJIBklAXSoWMd0YP3bEv+3bsFxtm
 6j7ed584fnsST13A1cuGCzVODPmksGlbWh5E6o7MmpLopNHuYvrZUSQphEuhUpbCFfmu
 rjFQ==
X-Gm-Message-State: APjAAAWSGwLzW84j19hAyMAMEiAhwYQHHw2sbdB+c9hUYO5n+9mY5M2A
 QOEEvWs3vXOgmqOLDAvWMYs=
X-Google-Smtp-Source: APXvYqwdWN716V5I8Vj+QbqYjBfOm8S6hHr1+K+FaSPEOwRgTGLtWLXrJjCEA6fuKlq1JKOTAfh2FQ==
X-Received: by 2002:a17:902:e20c:: with SMTP id
 ce12mr107471089plb.130.1564292525239; 
 Sat, 27 Jul 2019 22:42:05 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id 81sm90907498pfx.111.2019.07.27.22.42.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 22:42:04 -0700 (PDT)
Date: Sun, 28 Jul 2019 11:11:57 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Michael Straube <straube.linux@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8723bs: Remove unneeded function argument for
 init_addba_retry_timer
Message-ID: <20190728054148.GA18881@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

init_addba_retry_timer does not use padapter, so only keep psta

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c     | 2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index bdc52d8..39c3482 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -262,7 +262,7 @@ struct	sta_info *rtw_alloc_stainfo(struct	sta_priv *pstapriv, u8 *hwaddr)
 			)
 		);
 
-		init_addba_retry_timer(pstapriv->padapter, psta);
+		init_addba_retry_timer(psta);
 
 		/* for A-MPDU Rx reordering buffer control */
 		for (i = 0; i < 16 ; i++) {
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 733bb94..186f4f5 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -539,7 +539,7 @@ int init_mlme_ext_priv(struct adapter *padapter);
 int init_hw_mlme_ext(struct adapter *padapter);
 void free_mlme_ext_priv (struct mlme_ext_priv *pmlmeext);
 extern void init_mlme_ext_timer(struct adapter *padapter);
-extern void init_addba_retry_timer(struct adapter *padapter, struct sta_info *psta);
+extern void init_addba_retry_timer(struct sta_info *psta);
 extern struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv);
 
 /* void fill_fwpriv(struct adapter *padapter, struct fw_priv *pfwpriv); */
diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index 52a5b31..038036d 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -179,7 +179,7 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	}
 }
 
-void init_addba_retry_timer(struct adapter *padapter, struct sta_info *psta)
+void init_addba_retry_timer(struct sta_info *psta)
 {
 	timer_setup(&psta->addba_retry_timer, addba_timer_hdl, 0);
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
