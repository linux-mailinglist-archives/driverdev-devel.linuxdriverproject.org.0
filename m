Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1790303A3
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 22:55:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C886586A2B;
	Thu, 30 May 2019 20:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvsYtKALX7Ko; Thu, 30 May 2019 20:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49FE186A01;
	Thu, 30 May 2019 20:55:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76ADE1BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:55:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7390E8841F
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id drRpUiivxvDl for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 20:55:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0B1428841A
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 20:55:47 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y11so4682412pfm.13
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 13:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uteyPwppfLddUxR1+sE7iM1BJAEP/f3DTyxZGmrJeF4=;
 b=oE25Ep7xqDsbPY+5NCN6qcKjPrmaBJqGm9Jwu3KOxRqgsQCVFS2RVHHigWj6oXIESq
 8CnmtxtPXVuMgPRquWSEReIZBceayYrSvV8/zgAg8sOmsRlYaRAcFa3XSm06Zmg2M5Ct
 vV280Wy72vDO69MCNEXTBo/yAdVXk4wFvGxz04NTAHZvsZQZchjurT3X9GKRardssZ18
 E5QYw86gnqzTmLgCiGkWmXAqP9M8fIfEK/h0Dtx/e0NngadhuIORwxHBfCCQh0/ycFyc
 FrgiMLA4MqqqyQDA02aJOXfzUI+KelN845m/rXxHFIIXBbiIp8vDwDfkUVW463oxY7zE
 KR4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uteyPwppfLddUxR1+sE7iM1BJAEP/f3DTyxZGmrJeF4=;
 b=X1FKoVAdwfQ30hRRoovnTeIXCoq00ip5oCXfTG/PDjkC3myHWsOp72Id6aGQLUkVw3
 MatxA8gXYNeod5e9C2e6yGIVYHjQiJPzxVtG0Pi17rKUnKUFdas2yCBkLcIyWz//4I4h
 lkGszSsCFi8aCJYpb2U+yZSonZZwrbdmLCkkz/R5JrzMS4cRwWNiID3Q9q6yGmtHz/sT
 50W54teczqIT0BShJlOKQrFtSnMkYkRpZhNLVwreUNg7M1wy+n6gjB6z9CTykcnMp80G
 iWW77BGG8DiUDlzh9Ym4UpaqE2k3fLnlbrAdt8vXmgoaoNnnEJHuYgi8d+eHcTCjdFsP
 0C/Q==
X-Gm-Message-State: APjAAAXOl6cDs31bX9WZiDY9ILepr3uhId5UNgy/puFBjFpkOHujvsbT
 r5VMwM8abrur2Ai/WK+PthU=
X-Google-Smtp-Source: APXvYqyNlAlC5Pbp/Qy5331BHKkGNGIynoOtauF7yLjK9abrJ+4vwYu9rlTnuQuugdWffvBv7AxbwQ==
X-Received: by 2002:a17:90a:2268:: with SMTP id
 c95mr5319802pje.8.1559249746772; 
 Thu, 30 May 2019 13:55:46 -0700 (PDT)
Received: from localhost.localdomain ([47.15.209.13])
 by smtp.gmail.com with ESMTPSA id k3sm3426676pgo.81.2019.05.30.13.55.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 13:55:46 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, himadri18.07@gmail.com,
 dan.carpenter@oracle.com, colin.king@canonical.com,
 straube.linux@gmail.com, yangx92@hotmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: Replace function r8712_init_mlme_priv
Date: Fri, 31 May 2019 02:25:31 +0530
Message-Id: <20190530205531.30016-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Delete r8712_init_mlme_priv as it does nothing except call
_init_mlme_priv, and rename _init_mlme_priv to
r8712_init_mlme_priv.
Change the type of the new r8712_init_mlme_priv (formerly _init_mlme_priv)
to (non-static) int, from static sint.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 7c7267d0fc9e..57d8e7dceef7 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -29,7 +29,7 @@
 
 static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len);
 
-static sint _init_mlme_priv(struct _adapter *padapter)
+int r8712_init_mlme_priv(struct _adapter *padapter)
 {
 	sint	i;
 	u8	*pbuf;
@@ -205,11 +205,6 @@ u8 *r8712_get_capability_from_ie(u8 *ie)
 	return ie + 8 + 2;
 }
 
-int r8712_init_mlme_priv(struct _adapter *padapter)
-{
-	return _init_mlme_priv(padapter);
-}
-
 void r8712_free_mlme_priv(struct mlme_priv *pmlmepriv)
 {
 	kfree(pmlmepriv->free_bss_buf);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
