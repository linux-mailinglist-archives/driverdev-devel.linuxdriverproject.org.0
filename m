Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD1CE7E25
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 02:43:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 71A3885608;
	Tue, 29 Oct 2019 01:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sX29aw06vpXT; Tue, 29 Oct 2019 01:43:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB2F885566;
	Tue, 29 Oct 2019 01:43:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BE1F1BF3BE
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 32FEE20521
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YrzrRFYXT9hI for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 01:43:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 6AC5720517
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 01:43:37 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id q70so10576331qke.12
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 18:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fiV788X183wD/PJfPt+Y7yn0iwo8M5Gxr89huOLS4Zc=;
 b=G6jovQAe7x6LBX2vtvRWfmgewJF5/FN52paTG1A+n0xjqe1cGSCFKjNNJQnLsSG177
 4MOfLqXcjVtkToCru32J6USc3azmwoO+nO30Bf7JhCFSy9ivk1EhL7dTmttKd9xAQUJe
 OGi3T2uHrRumoQNPaeA7genPoRTBZaVq9APsBRJspeiMxAgFepK396ARq/VEUVcIYpup
 TlGt1KXoSjXIQ5Z9y0VFJkyOuNMp17/AwNnDHG4f9JKOa9bCBqe4kNlhUr1A8GBAdjzN
 6OPW+uv033TPHo90xqBq5KdSXrFCGy2V3RsHaf283k+Q87udaLzUk7YGn5+ErkyQaZjk
 F3ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fiV788X183wD/PJfPt+Y7yn0iwo8M5Gxr89huOLS4Zc=;
 b=Vj11sAo/Z/aM95pzn4qO2gBonJNR6KBJuMdG+DSfF1N2HggLIX1+yqxO8LUrHk9oum
 pshW2pMz1F3Y0HM83dYE1fiaiO4e65fh5EJxIA9t6YfXygj7TR0cTm7JPLPFdm8CoGyK
 7D13TojGx8xmkETTyiSzvzN1Wc8duZBpL7DYIoYsXKTuLZKwajSKA0qt1PQK05HXfLFy
 Le0fB1V9YRy7f6ATclubTh4lYRSwYKlikNDJiQ4C6ch0e7nW177RpCgNVLEecEWzj8N/
 kGw6qhdOifru4MgrTuxZs8yR5kBhgV83V5xJrr0vsjyXDfXCqRQvitSkIRfBNNO00qEz
 tuHw==
X-Gm-Message-State: APjAAAW8QqdEoL2iEYROiMD6EdhWhjAiXyTvIrgDDst/LXYT40N5s9f2
 b4lVK/j7LGRCBnxCZDAqtS8=
X-Google-Smtp-Source: APXvYqzAgg7m+AIygZ095GEKwcNZi/0+FvLXaeYAahW9+rl9wZo86URqelkkHqPnbMZC11x4Q/OrwA==
X-Received: by 2002:ae9:e50f:: with SMTP id w15mr718693qkf.436.1572313416435; 
 Mon, 28 Oct 2019 18:43:36 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
 by smtp.gmail.com with ESMTPSA id
 197sm6698394qkh.80.2019.10.28.18.43.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 18:43:35 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH 4/5] staging: rts5208: Eliminate the use of Camel Case in file
 xd.h
Date: Mon, 28 Oct 2019 22:43:15 -0300
Message-Id: <20191029014316.6452-5-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in file xd.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/xd.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index 57b94129b26f..98c00f268e56 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -36,7 +36,7 @@
 #define	BLK_ERASE_1			0x60
 #define	BLK_ERASE_2			0xD0
 #define READ_STS			0x70
-#define READ_xD_ID			0x9A
+#define READ_XD_ID			0x9A
 #define	COPY_BACK_512			0x8A
 #define	COPY_BACK_2K			0x85
 #define	READ1_1_2			0x30
@@ -72,8 +72,8 @@
 #define	XD_128M_X16_2048		0xC1
 #define	XD_4M_X8_512_1			0xE3
 #define	XD_4M_X8_512_2			0xE5
-#define	xD_1G_X8_512			0xD3
-#define	xD_2G_X8_512			0xD5
+#define	XD_1G_X8_512			0xD3
+#define	XD_2G_X8_512			0xD5
 
 #define	XD_ID_CODE			0xB5
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
