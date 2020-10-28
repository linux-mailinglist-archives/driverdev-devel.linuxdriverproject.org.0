Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B3A29D279
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 22:31:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46E43873B4;
	Wed, 28 Oct 2020 21:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CwloOxfZJ1tT; Wed, 28 Oct 2020 21:30:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7641A87204;
	Wed, 28 Oct 2020 21:30:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B4A91BF424
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 21:30:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 77EE8871A9
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 21:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D20GKtUInx50 for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 21:30:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A605A870B8
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 21:30:52 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id t3so620163wmi.3
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 14:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Bpjw93Tb7zPllCMy/3VsyrttzXCJxEWs9ocHC3M26Y=;
 b=Gme0y42grM92FRHVvRmwDUEjlULnK/pNpWWmNtYqVGQMGovp4vDc5dgPq9xSiJQrhV
 w1vOZXFy0kewx+g0un6EE30klHA6hNacIH06ueAt596VdZzX3iGboZq3HvV4IPDI71A2
 +YkME89QEXeTLZruOaTIc0EMFI3zOQvPulicmuJPUGMloDdxPrRZwQemGSmx533PR5Iz
 mJd7yNKrJhxfGSNFsY4RY6ReLYOYiXRyzoY8xvAYRWDUxkfJM0dwNVySO+6iYZKScsIc
 fWsDCzj5xpCpFftO0fq97BR8WgR2Qor+C/vsq10K0mr8t478un97VPoiknkS23R9HwgY
 O00Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Bpjw93Tb7zPllCMy/3VsyrttzXCJxEWs9ocHC3M26Y=;
 b=pzaDJJ4xJNblfnN9nH8hLG4JQp4CtEtrThQXt2d2EbjLxo6zvaIyw78JQtcEI4RECb
 rKNzmEVGxuYxA9oMKkqlYS3djHSBAQg5pqd7e6+ilPRJuWXpCXRV77nMSPso6KtsJRpi
 npNPwWdGkQxJ9gV+2MDFz9VAR76DrwDGbikh35Sp4fUPBBeTIZErRmAspvkFvvLF6mzJ
 w5h33xeMTHz++0uKzU9AU/P+Pp2qB8I1njsoRGvw22ro9qNjAmyhT0dKkIMpUi9kWYu6
 5xHafr+oYfZClAFvuruJyJhOmyCVbXZ0uqGo0OwcSnxoxdDSrSt6SWgPZxhOvuYST6iG
 w4mw==
X-Gm-Message-State: AOAM533Bmx0u4VP3SQcqlp11y6HJ2GGfwTUZVT2buhh7fk0gBu0vO5Mk
 JwC8WE3RwjIVJ6Xm0LEB+3Y=
X-Google-Smtp-Source: ABdhPJwZAu7rIRiWUuih15u0YaWbinrzs7DAmdGM34KS1+xoKXOTxwG+FlH3JdX/+aO9jv2ZXvVl/Q==
X-Received: by 2002:a05:600c:216:: with SMTP id
 22mr770981wmi.149.1603920650878; 
 Wed, 28 Oct 2020 14:30:50 -0700 (PDT)
Received: from localhost.localdomain ([109.175.166.68])
 by smtp.googlemail.com with ESMTPSA id q7sm1193478wrr.39.2020.10.28.14.30.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 14:30:50 -0700 (PDT)
From: Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: core: rtw_cmd: Fixed two if-statement
 coding style issues
Date: Wed, 28 Oct 2020 21:28:37 +0000
Message-Id: <20201028212837.28030-1-manuelpalenzuelamerino@gmail.com>
X-Mailer: git-send-email 2.26.2
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
 Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed two cases where the if-statement coding style wasn't following the guidelines. (rtw_cmd.c)

Signed-off-by: Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 4cf09d947d32..1723473005e7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -344,7 +344,7 @@ int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	cmd_obj->padapter = padapter;
 
 	res = rtw_cmd_filter(pcmdpriv, cmd_obj);
-	if (_FAIL == res) {
+	if (res == _FAIL) {
 		rtw_free_cmd_obj(cmd_obj);
 		goto exit;
 	}
@@ -460,7 +460,7 @@ int rtw_cmd_thread(void *context)
 
 		cmd_start_time = jiffies;
 
-		if (_FAIL == rtw_cmd_filter(pcmdpriv, pcmd)) {
+		if (rtw_cmd_filter(pcmdpriv, pcmd) == _FAIL) {
 			pcmd->res = H2C_DROPPED;
 			goto post_process;
 		}
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
