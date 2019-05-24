Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E11AE290AA
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:03:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 77D4B86CFF;
	Fri, 24 May 2019 06:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G36YsGc3f0_P; Fri, 24 May 2019 06:03:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EF20286B85;
	Fri, 24 May 2019 06:03:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 642C11BF3BE
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:03:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6095787F7C
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z0AtcE8znKnI for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:03:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DC5AE87F79
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:03:42 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n2so4416811pgp.11
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 23:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dgk22vNOFVTdl15VCCSR/tsBKmUZl95JwAuWXbL3XM4=;
 b=haAJq5jYQY/oHcN77oKF7B9I+jJBdfhZl03i0p38il8WSfQC1Dxf8A8jaPEgrNn9Mc
 CxUkRBfjZCaishIQst8qhzUqXO2S5Hq1QqmUsNs0qxEob+yPExPrC5wOX89FmT9LFkeS
 X48xvBEdt/z2Q8qKG46Pty2n3LOJtaTGE4E0zFDim2Jepeh6lMYO4LVNSOVRRDfNPCvQ
 fLU4rxM50AI+lWYdpHKwPTk3J/xe0zTCi9U6kL8QXoViA3oNyc0gVePHptCZTRjflu8Q
 GgwmbwQS02CBk3SsPZVuF9hH2+kePIgtWUpbQmJEYia/e0LWA4tZI2Abdci0WgE/Imrq
 fHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dgk22vNOFVTdl15VCCSR/tsBKmUZl95JwAuWXbL3XM4=;
 b=e7KBY8JLZ719pE/RevsMdBguWJxPnnFQqtqCZZyS/g5rx28k28vdJ1npmAaGN9IzEL
 kuvkDv8rIvbjsGZBpMXEG1d9aAl1uQ2EfhUTeOtsch09jmRKfj/lp+XQurMKGLicXvaL
 D9TXhn/u3GOzy2iPzSIQT76f5H+DpKAlSgWhb8poxIiDHXh+NXkf+1taBLCDZJxJMx5N
 a6chfZBvtZYWn4zKakrbQfFNu67VJFcVR9fssafeFPgcJkX0cr06Dvjrm7xi059MMwpO
 tpwqh/gmOlfYxpReesZc1sxFnaLetl06aHweRzLkPHdfXNfYcw4rtKVsIKXnZ+UJS+zR
 miJg==
X-Gm-Message-State: APjAAAWhaT19raSnJZTlMlVd3iOvtMuEA3I50TMv+BIStjeEoUP6No8V
 kbsaYg56aeIhMgohEA+oso0=
X-Google-Smtp-Source: APXvYqyIb39LWo6daB+rzJC6BkUxi08RKGYIbWTC445D2ECXSZn9XWhpoKUxddYv2qQWH9DTy0Bkjg==
X-Received: by 2002:a17:90a:c696:: with SMTP id
 n22mr6541804pjt.24.1558677822477; 
 Thu, 23 May 2019 23:03:42 -0700 (PDT)
Received: from localhost.localdomain ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id t25sm2264100pfq.91.2019.05.23.23.03.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 23:03:41 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, thesven73@gmail.com, hofrat@osadl.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: fieldbus: anybuss: Remove variables
Date: Fri, 24 May 2019 11:33:28 +0530
Message-Id: <20190524060328.3827-1-nishkadg.linux@gmail.com>
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

The local variable cd, used in multiple functions, is immediately passed
to another function call, whose result is returned. As that is the only
use of cd, it can be replaced with its variable.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/fieldbus/anybuss/host.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/host.c b/drivers/staging/fieldbus/anybuss/host.c
index f69dc4930457..9679cd0b737b 100644
--- a/drivers/staging/fieldbus/anybuss/host.c
+++ b/drivers/staging/fieldbus/anybuss/host.c
@@ -1046,10 +1046,8 @@ EXPORT_SYMBOL_GPL(anybuss_start_init);
 
 int anybuss_finish_init(struct anybuss_client *client)
 {
-	struct anybuss_host *cd = client->host;
-
-	return _anybus_mbox_cmd(cd, CMD_END_INIT, false, NULL, 0,
-					NULL, 0, NULL, 0);
+	return _anybus_mbox_cmd(client->host, CMD_END_INIT, false, NULL, 0,
+				NULL, 0, NULL, 0);
 }
 EXPORT_SYMBOL_GPL(anybuss_finish_init);
 
@@ -1146,20 +1144,16 @@ EXPORT_SYMBOL_GPL(anybuss_send_msg);
 int anybuss_send_ext(struct anybuss_client *client, u16 cmd_num,
 		     const void *buf, size_t count)
 {
-	struct anybuss_host *cd = client->host;
-
-	return _anybus_mbox_cmd(cd, cmd_num, true, NULL, 0, NULL, 0,
-					buf, count);
+	return _anybus_mbox_cmd(client->host, cmd_num, true, NULL, 0, NULL, 0,
+				buf, count);
 }
 EXPORT_SYMBOL_GPL(anybuss_send_ext);
 
 int anybuss_recv_msg(struct anybuss_client *client, u16 cmd_num,
 		     void *buf, size_t count)
 {
-	struct anybuss_host *cd = client->host;
-
-	return _anybus_mbox_cmd(cd, cmd_num, true, NULL, 0, buf, count,
-					NULL, 0);
+	return _anybus_mbox_cmd(client->host, cmd_num, true, NULL, 0, buf,
+				count, NULL, 0);
 }
 EXPORT_SYMBOL_GPL(anybuss_recv_msg);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
