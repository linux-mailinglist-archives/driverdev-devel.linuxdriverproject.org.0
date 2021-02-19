Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B1631F7EB
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 12:08:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05369870AC;
	Fri, 19 Feb 2021 11:08:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cSkGTi6I+L8s; Fri, 19 Feb 2021 11:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A32086C5D;
	Fri, 19 Feb 2021 11:08:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F1B81BF2C2
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7AD7C86C5D
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLKiita2c9J9 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 11:08:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 51EC386B9B
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 11:08:02 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id k22so3174633pll.6
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 03:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nd7DWDOBk3KOVhiLvQXXldN7BSGr9OYiQ0nQfAQp6/0=;
 b=HpKeZmJf5U7qlxVB4T68dnLwKGVrfgc1VcL4MCYVoBd9GGlXaFcQi/tnZNXkTYIPmf
 cfQ7IPb3TD6RGxWxQhAqXKkjjTh04AoOL3SGWMo7ZzOVQBzAf+Xy7Zc7tH/RCgHeeltR
 HHjomx63rUnYqabFiqqymL80kboLD/uihqJMGM0B2HbRSY40Rj3bSWQw1Kc0XzAc0Vqd
 e/NNL60+D/EBetXLKmgp26qDiInw4GvW7jkJarA2tV5KL2KHiM0ZDlZQ12wJgJmxGgr3
 q4KGMY9UwmZLmKv5owr2rZbcB2fxZH8tiVxoF6rABQro2Xd8Z7IR3Xvjqf0gLc9Q3jpI
 MWlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nd7DWDOBk3KOVhiLvQXXldN7BSGr9OYiQ0nQfAQp6/0=;
 b=H1pgkU8EraQBbh/Q72BAfU2igKUYh/+a+lcRGrHgOrIbQ6krRHfhRsbv4j3+YiVjcy
 mMYSIO/ytAMsJLQJyHt9Q0JllaSEFX1vKA65NEpLUiMHkVv1opW2SGntBu9xBhQHvGwN
 LkekMMwtjhm3suiRNL+IBn3IQ+jGkVzLVm2ZGylfTXwGy+ZjjzSRECkAywM6wgbPtBrU
 l9KnhjDpsa5lH4s44PR4Qra9wKonqrglUoQk7hsna/VtDH1leLn9WcJ0LgJ234xNv0lZ
 gI73nWjZD2n41BNEd583/hvKw9DltcOXZ9MhYuorEy8oqnB6/PxxwaL8QyjPI+eJ4x0q
 8RcQ==
X-Gm-Message-State: AOAM532Q95MjgfcE3RGdi75sxX4geDG0htRLUiiQLRRQ4JTVF3m2gYJX
 MMDsKIC2G0xsAh4NkAU85wU=
X-Google-Smtp-Source: ABdhPJwmUNtIOjy1VvYprmsNroSw1Qf7ZWDsS9BbgdiM+oF0Oyrt/AHfwAYfHz3cgNiruNTs+H+PeQ==
X-Received: by 2002:a17:902:b213:b029:db:3a3e:d8ad with SMTP id
 t19-20020a170902b213b02900db3a3ed8admr8934133plr.73.1613732881944; 
 Fri, 19 Feb 2021 03:08:01 -0800 (PST)
Received: from ThinkCentre-M83.wg.ducheng.me ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id t21sm9555113pfe.174.2021.02.19.03.08.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 03:08:01 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/3] staging: rtl8192u: fixed coding style of
 r8190_rtl8256.c
Date: Fri, 19 Feb 2021 19:07:54 +0800
Message-Id: <20210219110755.4993-2-ducheng2@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210219110755.4993-1-ducheng2@gmail.com>
References: <20210219110755.4993-1-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Du Cheng <ducheng2@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

use MACRO __func__ instead of "phy_rf8256_config_para_file" for RT_TRACE()
inside phy_rf8256_config_para_file(), reported by scripts/checkpatch.pl.

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 7294a3fbe205..3e6bd6caf9da 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -213,7 +213,7 @@ static void phy_rf8256_config_para_file(struct net_device *dev)
 		}
 
 		if (ret) {
-			RT_TRACE(COMP_ERR, "phy_rf8256_config_para_file():Radio[%d] Fail!!", eRFPath);
+			RT_TRACE(COMP_ERR, "%s():Radio[%d] Fail!!", __func__, eRFPath);
 			goto phy_RF8256_Config_ParaFile_Fail;
 		}
 	}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
