Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB0D1FC409
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 04:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2854021546;
	Wed, 17 Jun 2020 02:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u0VawiK1j6P1; Wed, 17 Jun 2020 02:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 808AF21526;
	Wed, 17 Jun 2020 02:19:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 510CB1BF308
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A24820554
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dPkH1vcPd5u0 for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 02:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 6312C2052D
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 02:19:41 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id d6so304545pjs.3
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 19:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=axDMTPhYiD/Km+IVh4JuAqAJaHHRrVK+kCUNoDRVkdg=;
 b=BH3W9Rvs8Dc8HKreJFfrADu/RgfYcpyxxj9qaBcIdNA/JmLD58BMdZg867nSZ3ezA1
 OcFY1FsfXwQJNolEWDL7pt+ALNdHYGe/0vRd7VsAb5JVVxTuxNg/UW5EMQpKRFDlAShs
 yLBJnGSsQTWqPCdZhXr3ROLP2upT3q5Obn/50IWtzZqyfmBWXolC4WV753kxeg+SUTn3
 Zp0QHaeqW7wIcYykTBkOBksnfFByV01U2ngOD/yD8RPfxna66ZzWtpp7+DRMvJSGH/Yc
 0otSL1t9kWbLt/lRAFRRAoehETgx1jbQPYhqYjbfskP316uqP+X/jW1sr42Wtr93Xuc4
 v2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=axDMTPhYiD/Km+IVh4JuAqAJaHHRrVK+kCUNoDRVkdg=;
 b=r7FgWeu6mgEuyph9b1rxrPZ6+3uJVAug0b5UclhwCwnssnhqkanlv8k8Pm1RYexpXD
 1GjCIouV+7jUFdP63nLG6D53+EIqtG6BPFq4IbK3/8GcQ3PEwUEENreaEjzlTH40TlG5
 4vLYmu30+//Y2h9YO87hzj4rzb0T1WEyzqTrpwMjqQ5wgy8709+ao63ofRcu7YOw1/kQ
 Ox56QWpz6wZtlwgWyNfhDA6GOf03TH5+NqWKHR1cYqpvUTBqKp68TxUFPIYS8CETKtDM
 /cAPu+sHack/ndW4ph10dV9var7Xgk/QGBRJhYKRz6T3C6Ji8ku4OAeq1I/I3gmEz+uS
 CYXA==
X-Gm-Message-State: AOAM533RqQG+acKAX0OmN74Q3tWjSEvWq6LGNKF0sKvQx9eFLk4QwFAG
 Gjgkx3pJiyC76W+h2CVidXg=
X-Google-Smtp-Source: ABdhPJwANyk83r6EG1MGw311BijTTXggESe0AcQ+zO8izI/aRQP6hz6MrWjIVANJBBTuOZ1YqFUxJw==
X-Received: by 2002:a17:90a:ea18:: with SMTP id
 w24mr5533713pjy.42.1592360381007; 
 Tue, 16 Jun 2020 19:19:41 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.213.184])
 by smtp.gmail.com with ESMTPSA id h9sm1203208pfe.32.2020.06.16.19.19.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 19:19:40 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com, pakki001@umn.edu,
 ldufour@linux.ibm.com, harshjain32@gmail.com, simon@nikanor.nu,
 walken@google.com
Subject: [PATCH 1/4] staging: kpc2000: Unpin partial pinned pages
Date: Wed, 17 Jun 2020 07:57:20 +0530
Message-Id: <1592360843-3440-2-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
References: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 John Hubbard <jhubbard@nvidia.com>, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is a bug, when get_user_pages() failed but partially pinned
pages are not unpinned. Fixed it.

Also, int is more appropriate type for rv. Changed it.

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 8975346..b136353 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -35,7 +35,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			    unsigned long iov_base, size_t iov_len)
 {
 	unsigned int i = 0;
-	long rv = 0;
+	int rv = 0;
 	struct kpc_dma_device *ldev;
 	struct aio_cb_data *acd;
 	DECLARE_COMPLETION_ONSTACK(done);
@@ -193,6 +193,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 		put_page(acd->user_pages[i]);
 
  err_get_user_pages:
+	if (rv > 0) {
+		for (i = 0; i < rv; i++)
+			put_pages(acd->user_pages[i])
+	}
 	kfree(acd->user_pages);
  err_alloc_userpages:
 	kfree(acd);
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
