Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674D931F03B
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 20:45:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8581D87414;
	Thu, 18 Feb 2021 19:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bkR5firZ40L4; Thu, 18 Feb 2021 19:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0867287380;
	Thu, 18 Feb 2021 19:45:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CDFC1BF425
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 19:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7CEC36065F
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 19:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gp39uBlP-KsK for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 19:45:27 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id D41B86065E; Thu, 18 Feb 2021 19:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 778796065E
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 19:45:26 +0000 (UTC)
Received: by mail-lj1-f169.google.com with SMTP id v6so7688181ljh.9
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 11:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WGzzHr1P0hoTz1sp9mRxfkrtsYLhqg7/e84iIOqYBhY=;
 b=COBNIMVcZRwLGfCuQE2beb/fdAs5Rp3wkO8/uY3cYKKJp1alKlWAJK8kIA6IP7cl5C
 umfGIsXMwzXMzZZFuJX2EjCWb4sGW+UCvmjDoCZ9onG7xBcvasTlJ1V9puUFS6ye5liA
 /chzvQ+DuoN8eaGME1JIhHlXAc7OpCdOQ9ip8qOKByNaNvZqS1x52FBRaNwzfXXmw3PH
 76rN0aQWDLItrChzu85x9W9uSkXzAo2HoTMQ5LlOX3wf2b7Vl+445ygrSN8Ea6XcSu7u
 yDneO7V9zSAppt2hUSeEf7jpBaak/NsIEbuyNMFXvXKEIAlATf/jCtovxYVb5QPwP9gU
 a7/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WGzzHr1P0hoTz1sp9mRxfkrtsYLhqg7/e84iIOqYBhY=;
 b=swfw1zVR6QTQUlBt91/cd0KPI70A7IP78nWYtDZyzZ/MsUFMH4Z9rd2DjPKWUZx5o+
 DrRjAGgyZc5ixlENKy30WJaGm4s1FT2TOKjxVBwdszVDvEDqevpx9n1EG/YpF8PduPqC
 CpzLH9P2c9tZFMTSiHyrhS1+R0nKkXjkq4IvkqQNy+6heMdGSAzYsYHbm4rHhua6P0v4
 2E8k4SSd6UDAc2x/AftlnL/E2auP0FoHWTUXYLUcmd6LrS3K/MC0S6PeG7tALXAxXKUo
 QOyJ2rJE+nluX6eACCnX6/v9Dtm+K142Wg9Rh8EGb2oBACrlxOwNF7Fpw4eKwP/r9/bx
 jfHA==
X-Gm-Message-State: AOAM531Y8x4owVrkb5GYhmW3FX/5E713sGuL9qSSyijVF4LUpFOxEAut
 SnF/Dz5QHcYEPUUkkDULeVg=
X-Google-Smtp-Source: ABdhPJydq5KMHFlkOjsoYUx6lv86iE1lsyuNoTnJ+RK3WJvjijVOdEtXtNZx+c8Aeu82JmwBpVL6sQ==
X-Received: by 2002:a05:6512:3194:: with SMTP id
 i20mr3292776lfe.283.1613677524163; 
 Thu, 18 Feb 2021 11:45:24 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id e16sm683448ljn.105.2021.02.18.11.45.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 11:45:23 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: gregkh@linuxfoundation.org, adawesomeguy222@gmail.com,
 dinghao.liu@zju.edu.cn
Subject: [PATCH] staging: fwserial: match alignment with open parenthesis
Date: Thu, 18 Feb 2021 22:43:33 +0300
Message-Id: <20210218194333.7115-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, Nikolay Kyx <knv418@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fwserial.c:

fix CHECK: Alignment should match open parenthesis

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---
 drivers/staging/fwserial/fwserial.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index c368082aae1a..137e97c9406c 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1318,8 +1318,8 @@ static int fwtty_break_ctl(struct tty_struct *tty, int state)
 	if (state == -1) {
 		set_bit(STOP_TX, &port->flags);
 		ret = wait_event_interruptible_timeout(port->wait_tx,
-					       !test_bit(IN_TX, &port->flags),
-					       10);
+						       !test_bit(IN_TX, &port->flags),
+						       10);
 		if (ret == 0 || ret == -ERESTARTSYS) {
 			clear_bit(STOP_TX, &port->flags);
 			fwtty_restart_tx(port);
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
