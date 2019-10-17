Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 492ECDAFB0
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 16:19:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5B6480D02;
	Thu, 17 Oct 2019 14:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yAMZxNO4cxdF; Thu, 17 Oct 2019 14:19:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BEE44844F1;
	Thu, 17 Oct 2019 14:18:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE9E51BF82C
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 14:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB24587A50
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 14:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9vG2-OaBF3e3 for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 14:18:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 80595844F1
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 14:18:57 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id h195so1759697pfe.5
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 07:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XrhW2d088JKwHH6/F/BGuoSL0YumKY1/76y6gefTh6U=;
 b=W9rypKuHb3GyBntMVqo+lpm+kqHkvEr++hh/959C94W2x9FRr440ZXxa/pZjf8RAs2
 KUR37tks/I8MuSXfFKDpymMhPpOWrh28pRlKPVoCsvmmPLYTZg/5+1YTOMo+87C/Z3zh
 hayIMcV5jZEqJ1iVG6Vf7Z4PCKm8hUZQbZ1A+OQ53mSznGy7080KGJf5b9XNTjaI2UNq
 2XcmN/kvKCxBwCBj8363buGkxLnbjsEy1EXd8sBJuWDNpKPrnIiURWWDOcA3oIc2ENM/
 divyBdTtmMFKDIdaOxmx9Pd87GfKHDGHrSXDihxLE7hEcChY6mWrp9oZU+vTMtP16rBp
 5+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XrhW2d088JKwHH6/F/BGuoSL0YumKY1/76y6gefTh6U=;
 b=BWS1gM1TRsU9QSCL/BcUA2gtBMyuHEVvvKP+pdhO8ML/yx9sWyzh7fGcA/Y0OSEtxf
 c59cnYKe5Cs3d0TztsuMQk+pXmmNAMVO6p6wCBxL+MT7DlHXr5XyoCqm/ELzVIkUx0RI
 fzEtRc6zhrMINaFJ6THvXViicLEGvZDISD3j3I80CbfhDQY3q5vQrBsukYlLsVAMOCQB
 5KisSamd5LY4IggF5+VdMENPNN6AF/EZHCGDC9sSUHu+LmYHy3mrIXoz+1VQNq1oVMw+
 KWECmI+S7xLkERdluDXWVAaHFZX6NdeKVkZnGWg/puR0Et0uNfrQM/5ybLWADvu10dzn
 ax6Q==
X-Gm-Message-State: APjAAAXpxMJzklBQdZD1yEuVF0JXQdJnW4+dbWw8Pn7320FjG+p6oRJP
 S6VMLsv37B8zRseWpNKa/j4=
X-Google-Smtp-Source: APXvYqwQf2XQt812AP0O+pem0rQSrH04iPIZQRWIuNct4XGZnWyvubAxx2d8yJ3uU3OGJKx0FsEvqQ==
X-Received: by 2002:a17:90a:b78c:: with SMTP id
 m12mr4747740pjr.12.1571321936921; 
 Thu, 17 Oct 2019 07:18:56 -0700 (PDT)
Received: from localhost.localdomain
 ([2401:4900:16a0:2e1e:1443:2c55:3ddb:804b])
 by smtp.gmail.com with ESMTPSA id b20sm3382831pff.158.2019.10.17.07.18.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 17 Oct 2019 07:18:56 -0700 (PDT)
From: Aliasgar Surti <aliasgar.surti500@gmail.com>
X-Google-Original-From: Aliasgar Surti
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2] staging:rtl8723bs: removed unwanted if..else condition
Date: Thu, 17 Oct 2019 19:48:26 +0530
Message-Id: <1571321906-15074-1-git-send-email-aliasgar.surti500@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Aliasgar Surti <aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Aliasgar Surti <aliasgar.surti500@gmail.com>

There is use of if..elseif..else condition which has same logic
in all three blocks.
Removed if..else block and placed log message instead that.

Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
---
v2: Fixed alignment problem.
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index e6fea96..13a9b54 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -507,19 +507,9 @@ int rtw_cmd_thread(void *context)
 
 		cmd_process_time = jiffies_to_msecs(jiffies - cmd_start_time);
 		if (cmd_process_time > 1000) {
-			if (pcmd->cmdcode == GEN_CMD_CODE(_Set_Drv_Extra)) {
-				DBG_871X(ADPT_FMT" cmd =%d process_time =%lu > 1 sec\n",
-					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
-				/* rtw_warn_on(1); */
-			} else if (pcmd->cmdcode == GEN_CMD_CODE(_Set_MLME_EVT)) {
-				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
-					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
-				/* rtw_warn_on(1); */
-			} else {
-				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
-					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
-				/* rtw_warn_on(1); */
-			}
+			DBG_871X(ADPT_FMT "cmd= %d process_time= %lu > 1 sec\n",
+				 ADPT_ARG(pcmd->padapter), pcmd->cmdcode,
+				 cmd_process_time);
 		}
 
 		/* call callback function for post-processed */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
