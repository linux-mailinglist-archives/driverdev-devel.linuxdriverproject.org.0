Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 824774E047
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:08:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EDEAF2214F;
	Fri, 21 Jun 2019 06:08:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qh9BVwGM1DnS; Fri, 21 Jun 2019 06:08:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0B2E20032;
	Fri, 21 Jun 2019 06:08:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B45EA1BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B130A20352
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pZILK2EEAaYj for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 0F5CD20032
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:43 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id s27so2837755pgl.2
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=owB9NFNmFKk8BHrd/h7+jutCmEZ9CIsGnveBsxOxGmE=;
 b=OqIxQ2oJ4x0fe3lbahIvs92GG98Mq8qEk/lus1tX4aC6zVC9VPVjQo2l7UI9DFeeo7
 XbExz+rght/dYPqN9P2Tu+DFiT4JevQ42LWaDHr74X10UusAMh+GTulzDCI5Jaenqerd
 OMlm29i6VqU77aCICs9jU6xDXI32OLO8jhCtvHPW4MQiuNyMugi2OA5PEnjYOJv7319I
 CtKVO4DaNEn16MQhxYdpLhoR/U74l/4idUxFWNR/aUd5WzMpRjbQ7KT/fXJAmEFgQgrr
 wUJuaaA5AU39LO1mOXpFhdKt2dgEeGAwzHSB96y+zE2SkFPR8TfpIrTI3jq1BGy0Qyau
 BjOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=owB9NFNmFKk8BHrd/h7+jutCmEZ9CIsGnveBsxOxGmE=;
 b=SvbjdR7Wu4so2SDCDF0/Nyi+ByXkybEGXzog/eYg5Znvr/DTUW+7Pr7CkzkTLdCkDb
 ejzBcAZfDO1Bof95OKSyRIE0lRIUvFqbk809R59wPwqgEqEbQQBOYpsnszvSpn+ickrG
 w55lHqlLr6i1nEoG0A6bv+GJFqb1M2foHPhWvCvA2YGR3HIguSsOlOBSsO0pD38YLu1D
 +6jfjlL8NGCODm3GIe9lhyrsoManylYTQX2tkgur5jJSI9kiw/5vDnxurto91rqVWTRQ
 ptpZVNNqX8R72H8Oj9Pmco6P+et4f2NdeK450rwrZkvg3Hkvu4BTscBntkNzgAEM2ZyZ
 R+XQ==
X-Gm-Message-State: APjAAAXW3tt04dKdxsrAYqORokgRmGTn2uUgyngw5OHLhAgMllAta3mc
 e6P5JlZbk1aayzu3DLIDRCA=
X-Google-Smtp-Source: APXvYqxSv7BBXRNg7kPzLS9IGopF9lxwLK6vW58bCBf1lBDG/kBfeZE7bb42tlywVTQRaOAtlUibPw==
X-Received: by 2002:a63:6146:: with SMTP id v67mr11587090pgb.116.1561097322654; 
 Thu, 20 Jun 2019 23:08:42 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:42 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 04/10] staging: rtl8712: r8712_wdg_timeout_handler: Remove
 function
Date: Fri, 21 Jun 2019 11:38:10 +0530
Message-Id: <20190621060816.2030-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190621060816.2030-1-nishkadg.linux@gmail.com>
References: <20190621060816.2030-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function _r8712_wdg_timeout_handler as all it does is call
r8712_wdg_wk_cmd. Modify call site of _r8712_wdg_timeout_handler to call
r8712_wdg_wk_cmd instead.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/mlme_linux.c   | 2 +-
 drivers/staging/rtl8712/rtl871x_mlme.c | 5 -----
 drivers/staging/rtl8712/rtl871x_mlme.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index 23b87ccf4d07..b9f5104f3bf7 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -60,7 +60,7 @@ static void wdg_timeout_handler (struct timer_list *t)
 	struct _adapter *adapter =
 		from_timer(adapter, t, mlmepriv.wdg_timer);
 
-	_r8712_wdg_timeout_handler(adapter);
+	r8712_wdg_wk_cmd(adapter);
 
 	mod_timer(&adapter->mlmepriv.wdg_timer,
 		  jiffies + msecs_to_jiffies(2000));
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index b260c29ea4bd..c55555546d42 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1079,11 +1079,6 @@ void _r8712_dhcp_timeout_handler (struct _adapter *adapter)
 			    adapter->registrypriv.smart_ps);
 }
 
-void _r8712_wdg_timeout_handler(struct _adapter *adapter)
-{
-	r8712_wdg_wk_cmd(adapter);
-}
-
 int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 {
 	struct list_head *phead;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.h b/drivers/staging/rtl8712/rtl871x_mlme.h
index 9e8343139414..a160107e9801 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.h
+++ b/drivers/staging/rtl8712/rtl871x_mlme.h
@@ -195,7 +195,6 @@ void _r8712_sitesurvey_ctrl_handler(struct _adapter *adapter);
 void _r8712_join_timeout_handler(struct _adapter *adapter);
 void r8712_scan_timeout_handler(struct _adapter *adapter);
 void _r8712_dhcp_timeout_handler(struct _adapter *adapter);
-void _r8712_wdg_timeout_handler(struct _adapter *adapter);
 struct wlan_network *_r8712_alloc_network(struct mlme_priv *pmlmepriv);
 sint r8712_if_up(struct _adapter *padapter);
 void r8712_joinbss_reset(struct _adapter *padapter);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
