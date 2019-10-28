Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DA5E7CA2
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 00:03:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1E3086186;
	Mon, 28 Oct 2019 23:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FrqyYNyyaJw5; Mon, 28 Oct 2019 23:03:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50DE28631D;
	Mon, 28 Oct 2019 23:03:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3927F1BF2C7
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 23:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 32A3986186
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 23:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ybl4zUX0cgvy for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 23:03:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61FFC8632F
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 23:03:01 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id v24so13176365ljj.3
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 16:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6/4uxBpwbeTx+qNmlCApmqorecUwa/VAedjrtbrn7kk=;
 b=CCRl0YprkuIFzHjsOONkvK+qUWLZvBwpuIlYeGyN7sdQS2aIQRj3DfKuLlVbZpDxK4
 TXWS8mlLRRuwOrluYWGm0fStHMPHz3FlPnrEKWHvpYSlM324T0gxbFWXoIkZtdOYn5wM
 9f8eLvNLTmVyADQJL1Too/C63QhPzz/iea2LUEQlIBm/lA+sJriALNxf15uNX8B7oz0M
 /CIh/TSZe5QGHfIrLFd5ccf7hfgE3YtZnJoLivH/iNgMlRnuThXv8n+zA/jwCJn7VbhU
 JldbLtWH6QM8mEtunuRgdMmdAb39RTFlWC+YghYre4pJq30QMzU6NWcbJ+bCQZjSqIF8
 fMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6/4uxBpwbeTx+qNmlCApmqorecUwa/VAedjrtbrn7kk=;
 b=D1Rht1E94HCXR184U9LX9r/4rpEunFEEDO/qlzWQiUFgRh6toE8rGTasrsr/V5v6nU
 2SPkhHJnOqxxgLPO53iJ7JlmJ2FKjXSuYpy0uTufIsuzYr+4CqoG7GyvxMSc4RWo3GuN
 3ZM7Me6DVekdmXZYi/TeZW+LCByxVX/8LpCLB3jqslwJ/MLJXk/mw+VNrM7PdLNZXMq7
 hfTh8v1E9Z3qK4D+LWsyH2vzHvkMy5zgwaYUz80YqPqFIgEZwoXPjmf4pQv3EvOdem3t
 BMpIoVsT4hG8Af/zmLS8t2dqoH5MoZtY+ibkJG6mpYGdRoogWR0QJEmmHx6qIg9FIkgf
 47Cg==
X-Gm-Message-State: APjAAAVbg6tFVLLnFz0vXdSGEYE1gFwzuKZqQZ4xCqwQrBxCB+sJNjbu
 rnSw46snTVRwJai+qxv9O4o=
X-Google-Smtp-Source: APXvYqwnmA2MImdSpdiYa0nxe5c/trTnsj5N8YoeZJf3M3si9pkQXmILEhEmRfaJ+qOJ9GgiBRiZ4g==
X-Received: by 2002:a2e:80d6:: with SMTP id r22mr163787ljg.43.1572303779560;
 Mon, 28 Oct 2019 16:02:59 -0700 (PDT)
Received: from localhost.localdomain ([93.152.168.243])
 by smtp.gmail.com with ESMTPSA id v9sm5676566ljk.56.2019.10.28.16.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 16:02:59 -0700 (PDT)
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 1/2] Staging: gasket: implement apex_get_status() to check
 driver status
Date: Tue, 29 Oct 2019 00:59:25 +0200
Message-Id: <20191028225926.8951-2-samuil.ivanovbg@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028225926.8951-1-samuil.ivanovbg@gmail.com>
References: <20191028225926.8951-1-samuil.ivanovbg@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From the TODO:
- apex_get_status() should actually check status

The function now checkes the status of the driver

Signed-off-by: Samuil Ivanov <samuil.ivanovbg@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 46199c8ca441..a5dd6f3c367d 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -247,6 +247,9 @@ module_param(bypass_top_level, int, 0644);
 static int apex_get_status(struct gasket_dev *gasket_dev)
 {
 	/* TODO: Check device status. */
+	if (gasket_dev->status == GASKET_STATUS_DEAD)
+		return GASKET_STATUS_DEAD;
+
 	return GASKET_STATUS_ALIVE;
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
