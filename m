Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0377E56219
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D79086044;
	Wed, 26 Jun 2019 06:11:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iwteF474rBXS; Wed, 26 Jun 2019 06:11:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B310B85FAA;
	Wed, 26 Jun 2019 06:11:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80D111BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CB5C84F98
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 720SPcp2oLTm for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:10:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB89384ED0
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:10:19 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id y8so677676pgl.4
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+PeZ0gBtKoeP1/BNVY9f81o5c5Iv6ExJYZM0NfsafaI=;
 b=SITInmA/OLlTyzQhSrzvROMwjqoo5BpBHRR7HollsYvbS6KfPLkkvJZ1VEd3Ez/GXN
 ZRWc08puyeDdr0aObCkGeFuWmRShFegazybDdMuoNJECDmDnETK7VjHTi8CkDdERvMrJ
 i7w0A9siQ3cWyjQM8UkbzM1IKiG71JxPRfT+JrF/fQ+n+xjoX6Gf6Grpntphn//IBtMl
 27kCnGNWsiP2+IPdj1qk0Pgzk6BRWnMJlvMYUvpAe2cs9ns6KExenX3gZldBG1/zVlAE
 rVXHMyFdbAnt3tlh3KhKMIRjlsvJ34txH3T73XyB7jlBTk4y2vyKU8XMkEo++k0bza89
 0Mbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+PeZ0gBtKoeP1/BNVY9f81o5c5Iv6ExJYZM0NfsafaI=;
 b=gIcp1u7uyvaCiYE67s3vtuowULs6xL10DW7ir0K6vncSpdbOOjzSDwFE6bI48o8XXV
 pDYnnFdtzctWmZEjjeNtkTSI6Q3VxGpsUQfkD8dMJkWwSodgzYWQp0kzoidx5xPPj+2l
 4RRlv3UiD6IT4COoLqTRI3GKuyZ3H6qATahNtv8CGlKu0lY/VxoupZlg+8rAdKY/7F+W
 4L/tdgcGKO2JOUGnU0XITRTWfaizi2rpXlJW0Yv8FvWbwmWSihLuA/2EJkDPWgFYvvfL
 jHUvkG0Yfq71VXf7hwPvBlp5yl+MNDFXuubpkhCzcdj5rhbGMN3xwQZ+kCP5XPDW0L8L
 OaRw==
X-Gm-Message-State: APjAAAXz3hgQWHkGhMRT8gzfnvhJkHF+U9jSyBusgyqL02GTpXIZjj6o
 F68rAEf0kWUumfI+aZNLPWp7D81w
X-Google-Smtp-Source: APXvYqxlcD3E5OMdMyx4PZeGcsDRBq6AD9HV1l/LqeRdCV0IeoJLSfV/cPT5bXJmTxdIT8axY/NdeQ==
X-Received: by 2002:a17:90a:1a45:: with SMTP id 5mr2616967pjl.43.1561529419653; 
 Tue, 25 Jun 2019 23:10:19 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id v13sm17613407pfe.105.2019.06.25.23.10.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:10:19 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org
Subject: [PATCH 9/9] staging: rtl8712: Replace function r8712_dequeue_cmd()
Date: Wed, 26 Jun 2019 11:39:41 +0530
Message-Id: <20190626060941.2441-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626060941.2441-1-nishkadg.linux@gmail.com>
References: <20190626060941.2441-1-nishkadg.linux@gmail.com>
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

Remove function r8712_dequeue_cmd as all it does is call _dequeue_cmd.
Rename _dequeue_cmd to r8712_dequeue_cmd and change its type from static
to non-static to maintain compatibility with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 37cc18581e84..26b618008fcf 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -126,7 +126,7 @@ void r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
 	complete(&pcmdpriv->cmd_queue_comp);
 }
 
-static struct cmd_obj *_dequeue_cmd(struct  __queue *queue)
+struct cmd_obj *r8712_dequeue_cmd(struct  __queue *queue)
 {
 	unsigned long irqL;
 	struct cmd_obj *obj;
@@ -156,11 +156,6 @@ void r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
 	complete(&pcmdpriv->cmd_queue_comp);
 }
 
-struct cmd_obj *r8712_dequeue_cmd(struct  __queue *queue)
-{
-	return _dequeue_cmd(queue);
-}
-
 void r8712_free_cmd_obj(struct cmd_obj *pcmd)
 {
 	if ((pcmd->cmdcode != _JoinBss_CMD_) &&
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
