Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CE0E8B46
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 15:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A39F879B8;
	Tue, 29 Oct 2019 14:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8ysJs0WsvfB; Tue, 29 Oct 2019 14:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79B5087861;
	Tue, 29 Oct 2019 14:55:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78B9D1BF59F
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 14:55:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7658D8715D
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 14:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x0rrWHnvlIDY for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 14:55:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0CF3486FB0
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 14:55:47 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id t26so10563987qtr.5
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 07:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
 b=Nqjytfxo50WBI6vopuCch0cZIF9IsPsdiznwtPJh2upsT2yU5o/cBcYf04skhUd055
 GvTqocNvFeTBJ9f3Zr2g4q+CEk6El1vH0NlgAOXr4iEegmv+/R1aV1rH+AQQ/XslB4FC
 kusVCwCuGJ+JtM1V+EVjp2GX7fj8e4WTuz8bUpi+TwHutxdqtgmlRder7f5gAqDDHgFC
 HsY6tY+hCeRwQ9bdxWkY4pnGY2CtI6tLXPKr1W1ZjUfn/sM15xC2zmgpJnWIuL3a3NUT
 rKl9W+VGcYEBSPaZzNVoXKupSMUse9iE+MVhx41bX/t1gjl0smAwBAJxL0eJS9oI0FlR
 KbJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
 b=Iz9tNMlpNWy7rIV61dopMH1HQFuNm3rX4UGtzUqjCePP8Fp0fqghgi53yLGqMu1azb
 0txuA6cGXmERb1rffjO6Zeow5FUnt6cqkOIAXxI0QJYoznzi6PGgndQGWdpVZK7cb+mi
 ClwDUqm5FNc6HKz4is5vckOsZ7wWElLQVsBKMTgTPmpmUmk78rqp7AwE/4vFO+1wbahm
 qS5131G7lzWASFDQWsZ4+lMrd82rbV1e27euxoq8/Gr81TgMY+/1AFkqEeBpM8sCcT11
 ryGuKk7HoFRUeyCl7nDnwQbQFJ6YynBXRiuu/26BADj4ijTj9mV2iDh/yaqt9M1bP93T
 BRlQ==
X-Gm-Message-State: APjAAAWO7phZAW8PfyfchA+PBVbhJPNz7p0rPV02TEel09KOZCJi9hh8
 gLsbK7AH8R5jj8QHQQZJsP0=
X-Google-Smtp-Source: APXvYqw6h9hzSvN+uhYWl/U6Ddgy+lF6m6pwWFGLY7DqtzFyWC1EkPwsqXMQgjbNG0NmO9UGlNWMlg==
X-Received: by 2002:a0c:ec0b:: with SMTP id y11mr22443155qvo.123.1572360946108; 
 Tue, 29 Oct 2019 07:55:46 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
 by smtp.gmail.com with ESMTPSA id
 g17sm5978069qte.89.2019.10.29.07.55.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 07:55:45 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v2 3/3] staging: rts5208: Eliminate the use of Camel Case in
 file sd.h
Date: Tue, 29 Oct 2019 11:55:17 -0300
Message-Id: <20191029145517.630-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
References: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
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

Cleans up checks of "Avoid CamelCase" in file sd.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/sd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
index dc9e8cad7a74..f4ff62653b56 100644
--- a/drivers/staging/rts5208/sd.h
+++ b/drivers/staging/rts5208/sd.h
@@ -232,7 +232,7 @@
 #define DCM_LOW_FREQUENCY_MODE   0x01
 
 #define DCM_HIGH_FREQUENCY_MODE_SET  0x0C
-#define DCM_Low_FREQUENCY_MODE_SET   0x00
+#define DCM_LOW_FREQUENCY_MODE_SET   0x00
 
 #define MULTIPLY_BY_1    0x00
 #define MULTIPLY_BY_2    0x01
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
