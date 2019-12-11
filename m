Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6535A11BB61
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ACAE123424;
	Wed, 11 Dec 2019 18:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ipBVsfK+NKuK; Wed, 11 Dec 2019 18:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4236720480;
	Wed, 11 Dec 2019 18:16:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D96D21BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C97A087F06
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vjBKUMLt6f4k for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f66.google.com (mail-yw1-f66.google.com
 [209.85.161.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0CE3387EF8
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:36 +0000 (UTC)
Received: by mail-yw1-f66.google.com with SMTP id h126so9309175ywc.6
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jVzqTcoV9ihUNXlm/a13Dm9aDWyETeZ13sWEGwD1aic=;
 b=NtNVRjryIU1yOz3tXrhTT6zcq3iqkIK1utZW9lxWZK6MPshWO4eNfVd9oYaOPjuJTu
 sCKJsFyfhOkOyVaI3KCVkpFQVq9cmkQlGsmB2uVS16iqO2Ikfs72Sd461n7QIcXszQ0b
 1tM25nlxRFPe0K2pek1xAqirJbv4buA8A3foLBGP3KvTrVO2sOY7Z2vpDxK5x8hu8JJn
 rlc1rpTr8o67clY1/XM+fzgZwzCwbSMFqAqa4h5hPaREdLHXH3lOiigwNCWhfwfodzJp
 gxDWpVpoAGzx9Ok0y4Z6pPtoZM/RYu3XPM8UhnqajU18E/NVtGa9pFYS+1OJ4EdBcupi
 Gvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jVzqTcoV9ihUNXlm/a13Dm9aDWyETeZ13sWEGwD1aic=;
 b=nfw8rnr7eXEetb/EBSE5vj+vgrs0SYZ0J/tL0r9yt8Avel7+acL/eMciQX1hgqknJ4
 Jxekfo/S4Q9OEJJnGENKbri1UdECa6vRJEgMcpcuNlBDb1rsspahsXTBkGBe43Xo2D98
 B8AYKeDD2t9VV6D8HXVR2Clz5ClOE0jgCabaUGmhJJzxPV9j05WGH9enx49UWrtZJSnR
 9Xvf23lxzqCgztJ24kCjCWXk39fxgptYVOElHPyf1Vl05HsJd4VmhQIOaINKgvsZbLl8
 YF0dUKdaGYv/eq+l7Ds2RjUhs/UOyZEmmJdA8njv1gg/klqthPc0WFM8yUjm5iUfbYBj
 oPRA==
X-Gm-Message-State: APjAAAVUaiqq0/eWT08VniEqHrALzVXw3FEBSQBa5irkog3Ed1mw6Tn3
 kUBwK1cRQmMKfx+wLGRxBx8=
X-Google-Smtp-Source: APXvYqzfB45c0sW3dCcvcx8Qka2iHzdUMjB5pZc/SOgr+k9z5AhMrOWtdBtRSNE077tosDfDPeUApg==
X-Received: by 2002:a0d:d84b:: with SMTP id a72mr856361ywe.33.1576088135104;
 Wed, 11 Dec 2019 10:15:35 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id b187sm1334218ywh.108.2019.12.11.10.15.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:34 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 20/23] staging: qlge: Fix CHECK: usleep_range is preferred
 over udelay
Date: Wed, 11 Dec 2019 12:12:49 -0600
Message-Id: <a3f14b13d76102cd4e536152e09517a69ddbe9f9.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

chage udelay() to usleep_range()

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index e18aa335c899..9427386e4a1e 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -147,7 +147,7 @@ int ql_sem_spinlock(struct ql_adapter *qdev, u32 sem_mask)
 	do {
 		if (!ql_sem_trylock(qdev, sem_mask))
 			return 0;
-		udelay(100);
+		usleep_range(100, 200);
 	} while (--wait_count);
 	return -ETIMEDOUT;
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
