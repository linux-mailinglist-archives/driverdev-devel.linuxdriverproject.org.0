Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43577D9359
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 16:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 25E44233A6;
	Wed, 16 Oct 2019 14:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WvXBqENgLHDY; Wed, 16 Oct 2019 14:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5BE9C203BF;
	Wed, 16 Oct 2019 14:08:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFE7F1BF2BF
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 14:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA6B0878E3
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 14:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5FJrDzvP3NqH for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 14:08:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ED8A387524
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 14:08:26 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id p12so5038407pgn.6
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 07:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2VuW3uJV+8y57xUfrCigIkJJtF1hNZLZEkCSqQtkuZw=;
 b=laSipHEAy8rtoZaHhB9FGwlJ4wytviwdeMPPFd2q0AanSXLl6Si0ACNEAlFScEgr5W
 qQYz/BP5XBpdT9rykmKuJfaqAbzdF6p4zEpWc41uu1GcVAg1waq9l0ugTIjQ1WfYXF2p
 brPvEDf0pxmBYhhvsNsFR5kE0lIzUWu4v1GKgfuxm3p3MHPJCtaWCxUmyRWW3JBYpVpr
 qZvvFNP498X/TG6twsFwGZktC3nlp/taGOKXzZC4Lx8ha8sS8VT1f4+QGwMiYhba3VV8
 i8ZyMGd1+8H54G86U4N5tkyCb7bjhedXfDRxN5sCV/LB6s1ZF0NFioOFNA41NkGXftnV
 DyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2VuW3uJV+8y57xUfrCigIkJJtF1hNZLZEkCSqQtkuZw=;
 b=NO7hrJMIBgfSQ0liQPnHBgv3IVuxMUxWLLlTBO36PvdwBjJPVgB5nIJDViS7tDa8x/
 zKerVLxtbz1qC5+qwNtrhppbERe1r9Z83xnez13zgOnG1+bQtlTXtJ8F3v32CNS8/Rc8
 0NSmwBzJXaRHbeXIX87hRdqXlnm1grJp24PncmPdpq7U+mt03usbXAtH+e+BgeUoTxWQ
 2ZrsMqjAoi4fS/KVHs1gnvTrPw4QnOTTqzjn77RrcjLDCpwYyFZJ9JHr5RGvMnl3ifhU
 vwxDPpuJtHuvUiVgsuV96Ljey/m9K9G8eY1xSs+9qnlx83AJqMTDdV3B/Zy/86Pu22fN
 flKA==
X-Gm-Message-State: APjAAAW52Vkq1EJqVZ7Tdw/MTKrB1W3LmY0OQTTdaJyzXoEsIx9ocmb4
 /uprpx4npi6LgDkHmVsNWiI=
X-Google-Smtp-Source: APXvYqz9itctxy+ki4KPqxkttjrt67Pe64jP3Yjvls3ZfzJwhLqdPFUzStrg46wAup6ZtcZVuTJvXA==
X-Received: by 2002:a65:4c03:: with SMTP id u3mr45041967pgq.440.1571234906186; 
 Wed, 16 Oct 2019 07:08:26 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:16a0:2e1e:94b2:db45:7585:e0c])
 by smtp.gmail.com with ESMTPSA id p17sm23810365pfn.50.2019.10.16.07.08.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 16 Oct 2019 07:08:25 -0700 (PDT)
From: Aliasgar Surti <aliasgar.surti500@gmail.com>
X-Google-Original-From: Aliasgar Surti
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH] staging:rtl8723bs: removed unwanted if..else condition
Date: Wed, 16 Oct 2019 19:37:53 +0530
Message-Id: <1571234873-13847-1-git-send-email-aliasgar.surti500@gmail.com>
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
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index e6fea96..fc1d243 100644
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
+					  cmd_process_time);
 		}
 
 		/* call callback function for post-processed */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
