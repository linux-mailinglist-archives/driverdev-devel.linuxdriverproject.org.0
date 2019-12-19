Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 730BA125DB3
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 10:31:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B108887E61;
	Thu, 19 Dec 2019 09:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wD3FlEkrcnm5; Thu, 19 Dec 2019 09:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E52D87E34;
	Thu, 19 Dec 2019 09:31:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C394F1BF9BD
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 09:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B959D86DF7
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 09:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xlaOONO0GHwM for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 09:31:16 +0000 (UTC)
X-Greylist: delayed 00:20:25 by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 22A7A86DE4
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 09:31:16 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id c16so1477322ioo.8
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 01:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hyderabad.bits-pilani.ac.in; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=AJrQiLYNAF/E1S5b1mRsk2AKXE5RDFoq3eOqQWgOzh4=;
 b=Wj4xmeYtJjpM9+eir9kpHbU3gtjUwkOwdFw/EvV6YGe0tzGEoMse+DlGUjtcBn9AVk
 yO47EJj5NQKgrOeOIPnMUrgbu+AA4GfcezmWu/BdA94vaKjvQsY4g+/GfvFu/mfXGYcN
 lpfo/vUDhKF4SUgW8zx5yCFaqwukjL/NyeWi0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AJrQiLYNAF/E1S5b1mRsk2AKXE5RDFoq3eOqQWgOzh4=;
 b=b7ceBNG6nlqTB9lt9rk5j6y/5O0ZIJAGp83OLMBRuYzRU2GSvHh3o9AzkdZVYJAprF
 tfWqa7OE/QwGKUfWHTIjJnw/lB8UZkIcQ3oZs09vhayThVBsZYGod9LiApSbKfPI6B4g
 oBK9iWA8WHNhE8mEGLN1e96p3gkgmWp4vubUYNDyAVmyMnT/nvx5cuQnud3EEYBrqjJL
 qTUUEr3A271yqUC5fWcLlsn9uCpKRLyzo64wg7ADrKchQOAxZuXo7sG4+BJBsVCQxyIG
 /Bav90lIeLV8MsBhuP7sRxm1EMyYqLApRQmfNaCtcxk09lyi75ZvmSjknY5I9ZOYKkON
 TuNQ==
X-Gm-Message-State: APjAAAUIeQT7IYqWem2e2i6hJ/917z+4jGKHQSzR6dnBl5aUiTnSmSIj
 aCaFhvD0meuiBc0/WA8H9FZTBG2ff+7OaA==
X-Google-Smtp-Source: APXvYqywH5YqYI79B9shtzhIYrdCjNEdtTe+qTjaPdt1archPdCe6TtU6xTSOEzt/USyCkf1gUPrgQ==
X-Received: by 2002:a63:904c:: with SMTP id a73mr8027070pge.335.1576746334421; 
 Thu, 19 Dec 2019 01:05:34 -0800 (PST)
Received: from localhost.localdomain
 ([2402:8100:2800:cf9f:4401:9547:9e30:ea15])
 by smtp.googlemail.com with ESMTPSA id l127sm6502304pgl.48.2019.12.19.01.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 01:05:33 -0800 (PST)
From: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] Staging: sm750fb: sm750.h:Fixed Coding Style Issue
Date: Thu, 19 Dec 2019 14:35:53 +0530
Message-Id: <20191219090553.13243-1-f20171454@hyderabad.bits-pilani.ac.in>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 sudipm.mukherjee@gmail.comm, teddy.wang@siliconmotion.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed the checkpath error: function definition arguments
should also have identifier names

Signed-of-by: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
---
 drivers/staging/sm750fb/sm750.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index ce90adcb449d..cf986bad7210 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -66,9 +66,9 @@ struct lynx_accel {
 						u32, u32, u32, u32,
 						u32, u32, u32, u32);
 
-	int (*de_imageblit)(struct lynx_accel *, const char *, u32, u32, u32, u32,
-							       u32, u32, u32, u32,
-							       u32, u32, u32, u32);
+	int (*de_imageblit)(struct lynx_accel *A, const char *B, u32 C, u32 D,
+		       						u32 E, u32 F, u32 G, u32 H, u32 I,
+							       	u32 J, u32 K, u32 L, u32 M, u32 N);
 
 };
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
