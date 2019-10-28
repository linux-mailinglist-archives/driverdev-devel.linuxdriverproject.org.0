Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF74AE7CA5
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 00:03:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 41099878CE;
	Mon, 28 Oct 2019 23:03:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yirZb7M5yeC2; Mon, 28 Oct 2019 23:03:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72F308737E;
	Mon, 28 Oct 2019 23:03:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D68841BF2C7
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 23:03:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA3B487874
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 23:03:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ucL8-AG-0RWN for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 23:03:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFE028737E
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 23:03:13 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id w8so8639306lji.13
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 16:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dwuHwGwoR4Bx47u1dStEOn2gbiuU5xlnO+a2gXUuQhU=;
 b=GpL4/t56rWO7hWFthuKn2I26kfvX9LtRbOh+/BmNd9G/9e5FePSST8SeqBOKqfiyBh
 Hduzc/NCAwveu+ndfdGxs8ViTU8dS2rTDZRdXiM+yNt0pLyG4HdVgyZXm5hZgojkoAzo
 KL+I0Fk9h6qzqGeRT7aNZ3r7D3zq53wS3N5B6ZaFC0ZPhN4Hg9VGqBGRycu+2OyhJ9pM
 FxzGFDJiRVctbkvaE15YmkxZxx7oUPIAUWZAltWwsr1oMQkRx3/IZ1Lz4g7iHD5CXPRx
 W6gZSBoTHZdUaJeY1lVYj2BWlc3IZw0Rvy30ptfm/7HUFdl3oGnr9KECJhftgwFL3MqZ
 G+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dwuHwGwoR4Bx47u1dStEOn2gbiuU5xlnO+a2gXUuQhU=;
 b=iEQ3MBsq6gm9+KsGLVVBSSo1pH5ASyovSBUJbjzuohmvFjOaFZpPtYbt0UjWnymZ7C
 qeZpjHh10pbqZ0AQE2MCSvjIWv8AgTTyNNN2CWlOWD8Wu388v0g+39IdA9kvGAjoYdgM
 rxtWAjk7e7CGrD+WgXXZajQevWPe356CojUch7OhqMO6XxwU0QEao3dQx7A5Yt/iBDBQ
 +QX7E3VeTR6Du6oRkgAXRsk7mt8+tvujDb9fP1lG1eu4L8sYydlO5BwZLLCwcekVxVRd
 24GXnvTzX5wd8DXufkGvu75ESA9V911UOON2f+Q/PT1x2vvomnnNnu0XQlZCvhI+T0Rn
 3aRQ==
X-Gm-Message-State: APjAAAUqvGuZJ+NwcMqD2h6u9FW0u3hBSw9HLyK1md6hztKrp0d94nzn
 CUpzGwuVcuKwox7dr/jlqes=
X-Google-Smtp-Source: APXvYqxQW6bJwWWCmZYRxqdf+HANh2H/VTD8B+GAQslOBO6fF/F4G62Taaqsay18hn5c4NK21mJofw==
X-Received: by 2002:a2e:5b82:: with SMTP id m2mr183184lje.184.1572303791971;
 Mon, 28 Oct 2019 16:03:11 -0700 (PDT)
Received: from localhost.localdomain ([93.152.168.243])
 by smtp.gmail.com with ESMTPSA id v9sm5676566ljk.56.2019.10.28.16.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 16:03:11 -0700 (PDT)
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 2/2] Staging: gasket: Clean apex_get_status function of comment
Date: Tue, 29 Oct 2019 00:59:26 +0200
Message-Id: <20191028225926.8951-3-samuil.ivanovbg@gmail.com>
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

After implementing the function to check the status of the driver,
there is no longer need for this comment.

Signed-off-by: Samuil Ivanov <samuil.ivanovbg@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index a5dd6f3c367d..67cdb4f5da8e 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -246,7 +246,6 @@ module_param(bypass_top_level, int, 0644);
 /* Check the device status registers and return device status ALIVE or DEAD. */
 static int apex_get_status(struct gasket_dev *gasket_dev)
 {
-	/* TODO: Check device status. */
 	if (gasket_dev->status == GASKET_STATUS_DEAD)
 		return GASKET_STATUS_DEAD;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
