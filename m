Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E3050175
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 006CA85462;
	Mon, 24 Jun 2019 05:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hVen4AkvcvnU; Mon, 24 Jun 2019 05:49:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AB71854E7;
	Mon, 24 Jun 2019 05:49:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAB8C1BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D7B3F86F8D
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vO6Z6-8Y9V1I for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57C1186EC0
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:19 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id v9so6466286pgr.13
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I+U+TqvFI5BLpsVp2wI2BsXk4imVMuhF1vByBGFqPy0=;
 b=oWGJrRA3x3C0rjXX9K3uVFkJmNc4WOI20xsezgxRsfV3VPY0E4MzU6GWY2YXP8WDF3
 YmmQmzT58wQhAoLYhzsKE7VLFhvFdhU7Vi3+bJxqA38goA1YiW67E3hxThF0MyijxGmM
 5sHt9RC/9nszUjptOMtonpZG380h3nC8jjSYF1T0GQItejjujxWgBtnXrnn9l8lSm1rv
 6sbrkRDixS+Zlqe6szAB0V/PltUvtynM+QB7ior40BTl8D4VpaM6akp9u3/+yMBuZKKx
 +LZr9R4yxzZwZlq38PlVFuiFBzLkHAzTEIexOPKGk5Tc58syVjK2gjgW4jUlQNFdy9iN
 60iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I+U+TqvFI5BLpsVp2wI2BsXk4imVMuhF1vByBGFqPy0=;
 b=U51vA0rLviNtgCqfenPzWjhKt3LJPKqcoGjPuqcewzeswNt+vmHzr30LG6L5KQkhZo
 gS49X+oeI/2gNh9PCxLMvpA2BKDO8RjMjcv4RfDcupQ+FTUY6QT4UVyjYOOljvh49gTv
 0YjuwzlmWgV72E0hEA66L84dwqC0NmRt4diWzRP/TmdIcUIBlkwMjgC39q1JhX+Ayzs5
 5IqNJOPZ1mVkZWPRzvYAE7ny8LLRs3dwF2pxRVDQzO0HB5hU++THXFHtR+PP7zfto4av
 +NrI2K75st0N8fT45GNtLPkKRi4RjXpY/De0UrW/swsxjqXQFmQ1Z2k6fAAaOV3kfeEO
 Cosw==
X-Gm-Message-State: APjAAAUOO11HMZWaBJJEnXPDswM3IrVt3cBUJQlbAjgoZx/Pe57cOtMr
 mehaTeZxEb27Col84rMU3jM=
X-Google-Smtp-Source: APXvYqwu3qdYUeXq+9WdICJUp37Zkga41Q4dMykyCM0MSPxp2IM/3l+Ocz5sg0ABbKnua4yUG+YcOQ==
X-Received: by 2002:a63:511b:: with SMTP id f27mr30686473pgb.135.1561355358889; 
 Sun, 23 Jun 2019 22:49:18 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:18 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 01/10] staging: rtl8712: Change return values in
 r8712_init_cmd_priv()
Date: Mon, 24 Jun 2019 11:18:54 +0530
Message-Id: <20190624054903.2673-1-nishkadg.linux@gmail.com>
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

Change return values in r8712_init_cmd_priv from _SUCCESS/_FAIL to
0/-ENOMEM. Modify call site accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c    | 2 +-
 drivers/staging/rtl8712/rtl871x_cmd.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 1653b36c4bfd..ef9e9634b298 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -297,7 +297,7 @@ static u8 init_default_value(struct _adapter *padapter)
 
 u8 r8712_init_drv_sw(struct _adapter *padapter)
 {
-	if ((r8712_init_cmd_priv(&padapter->cmdpriv)) == _FAIL)
+	if (r8712_init_cmd_priv(&padapter->cmdpriv))
 		return _FAIL;
 	padapter->cmdpriv.padapter = padapter;
 	if ((r8712_init_evt_priv(&padapter->evtpriv)) == _FAIL)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index c6643c371271..68efba177ab4 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -55,7 +55,7 @@ int r8712_init_cmd_priv(struct cmd_priv *pcmdpriv)
 	pcmdpriv->cmd_allocated_buf = kmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ,
 					      GFP_ATOMIC);
 	if (!pcmdpriv->cmd_allocated_buf)
-		return _FAIL;
+		return -ENOMEM;
 	pcmdpriv->cmd_buf = pcmdpriv->cmd_allocated_buf  +  CMDBUFF_ALIGN_SZ -
 			    ((addr_t)(pcmdpriv->cmd_allocated_buf) &
 			    (CMDBUFF_ALIGN_SZ - 1));
@@ -63,14 +63,14 @@ int r8712_init_cmd_priv(struct cmd_priv *pcmdpriv)
 	if (!pcmdpriv->rsp_allocated_buf) {
 		kfree(pcmdpriv->cmd_allocated_buf);
 		pcmdpriv->cmd_allocated_buf = NULL;
-		return _FAIL;
+		return -ENOMEM;
 	}
 	pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf  +  4 -
 			    ((addr_t)(pcmdpriv->rsp_allocated_buf) & 3);
 	pcmdpriv->cmd_issued_cnt = 0;
 	pcmdpriv->cmd_done_cnt = 0;
 	pcmdpriv->rsp_cnt = 0;
-	return _SUCCESS;
+	return 0;
 }
 
 static sint _init_evt_priv(struct evt_priv *pevtpriv)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
