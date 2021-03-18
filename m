Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A19B3408DD
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:28:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF881432B5;
	Thu, 18 Mar 2021 15:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QLsgrQj-2DCW; Thu, 18 Mar 2021 15:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1022643291;
	Thu, 18 Mar 2021 15:28:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7EE0C1BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BF0E6FA27
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OcjVcRyv-oEz for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C31436064D
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:08 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id p19so3830278wmq.1
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XHTDPddOoVLkUdJc2DU5agYlYSsR4ub1kogsH0wzRWA=;
 b=nGEOKR3XKt81VREQbES5zSHFnUF5ZuJEknl3hd3pGMjBGpVS3XdO8DyBVz/a3dar49
 lUoqJu087XxPOJNqJ8dvnSpB3Eit/KT7zGCH/zloovrqYLb+lPAcyW+0yg1zRwckLdnq
 50OoTndSHiA53QYDX27KoFvYhaGlG/YP4NS+89AsGOImK9I+TGsLyQlDlJC+brGI/mLI
 twSILbR+aHRXvp4Wj/Of3lgbSpVx444zo2bGcP6VcIW4gWNnI4xFgqULuRiUBN5+QTfJ
 BzMhhIOaL1mj+VQnEc7aUN/IZQOO8XeZzrEY+hkGKb1H5j51gxIzvyllpV4SAsE1TqG2
 LS9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XHTDPddOoVLkUdJc2DU5agYlYSsR4ub1kogsH0wzRWA=;
 b=qw1isPS4kc2+p+kS8zBpFZ4pUZyG7L2MtkwHo5KmJDhdoV6lESEJ74Yl/bng9n60XJ
 WC9KGr9cE9KXtanfzC1oKSm99036Yp1WsyrpF1RiWU+Ol+KpsstULasaN9/cUSnkDz+2
 SN1MlrSl7o0BnyTioXTl0FjqRN7KQCnI3ZkK3R6OvabmYJQ01CjjVOnYluOrPVaZ/DWo
 kj8Cq7cTWeoKv2UdpqlO1dnY9Knmm47vpd1U+c2ydTgsVh9EjJH8yzN3pMsSdjiACweg
 EhGkSBNeeSi4rTmRw5hl95LIj5BuiN+68PRm81b/lttnX6i7I5z9l9aKRT+Hdr90f8fd
 a+hQ==
X-Gm-Message-State: AOAM53219TfCoA+HrgGQ/DHavYiVflIqDqWqF285sGO5zsouYICqyqlc
 ZyUMQySBaTbqFLhCadAKyBo=
X-Google-Smtp-Source: ABdhPJx6nCxW5YL/wm7YGE9DpNb95A1n+CSOex7Q8mqj8znldYeJ7KUCWxavST3g3kay4wTLc93CHA==
X-Received: by 2002:a1c:a7d3:: with SMTP id q202mr4128873wme.93.1616081227052; 
 Thu, 18 Mar 2021 08:27:07 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id j30sm3855479wrj.62.2021.03.18.08.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:27:06 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/15] staging: rtl8723bs: remove unnecessary logging in
 hal/odm_debug.h
Date: Thu, 18 Mar 2021 16:26:04 +0100
Message-Id: <20210318152610.16758-10-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
134: FILE: drivers/staging/rtl8723bs/hal/odm_debug.h:134:
+#define ODM_dbg_enter() { DbgPrint("==> %s\n", __func__); }
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
135: FILE: drivers/staging/rtl8723bs/hal/odm_debug.h:135:
+#define ODM_dbg_exit() { DbgPrint("<== %s\n", __func__); }

and removed containing unused macros

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_debug.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.h b/drivers/staging/rtl8723bs/hal/odm_debug.h
index 22f0e37456e2..f2b2e169a6ac 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.h
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.h
@@ -131,8 +131,6 @@
 			ASSERT(false);\
 		} \
 	} while (0)
-#define ODM_dbg_enter() { DbgPrint("==> %s\n", __func__); }
-#define ODM_dbg_exit() { DbgPrint("<== %s\n", __func__); }
 #define ODM_dbg_trace(str) { DbgPrint("%s:%s\n", __func__, str); }
 
 #define ODM_PRINT_ADDR(pDM_Odm, comp, level, title_str, ptr)\
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
