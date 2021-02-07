Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA56B3122FA
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 10:09:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B767387259;
	Sun,  7 Feb 2021 09:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TKvTDl9cldV5; Sun,  7 Feb 2021 09:09:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E8EB87094;
	Sun,  7 Feb 2021 09:09:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7434B1BF5DE
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 09:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 450872044A
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 09:09:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AM+QU-DXFcpS for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 09:09:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 91D5320446
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 09:09:14 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id o21so6912165pgn.12
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 01:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8HDOBrsAzuKElcA7qlZ9yTgLVVQVK/JHfy+n859Oh30=;
 b=hTDqu+ogfbyEUrJBefH1NDZLWV/9R7Xns8v8K80ALJPTjTJyIrIi7JqY29rJ455pKI
 bplqftu8wsySlImyowff8faJjpcvGo9sjI/LWfBbd0O5OTp901md0n0uqD6FldDrSd4z
 m/h6q0kMKr/oWHJruQWB+HJ6WhUy1YTmbXDx4j16iTSeFTy+5JnP14ifsJhnnUr5Z/a6
 nbyHAiSvfAQrf6amn2nJoE/wKDb+ebEAnt/goAkmEbNUjqlvfML9ifNEVvkZd7HZcr+H
 oWBX5ewbjt7+P55E9u82rlm8eDf/j52Pw50R6NPMNpYEb7+6ewSC7LzUC6VJwYAu+sDr
 hicw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8HDOBrsAzuKElcA7qlZ9yTgLVVQVK/JHfy+n859Oh30=;
 b=YT31muT76PfBxhN4xScEvXR847mR+VDEbbHvLsGsgBigG9cd9rNssYrRynjKoShtgJ
 zLAJza1sTCDtk1USt+2SPXTnHae42h33hrRr8CaraQDoelTLE8ufqBklL0ZIVRsZuSMf
 T+9s9DfLjwznxHoCwueZ6Ss3sHwEfl5+9G8XhIqSh9pYujNF6wV6s3uoMtyrrVufiro0
 7Psuuk4NRedS4d4NSXPO6sD4x5kMIa1W8gJzKoXnAdBaMQ6N/zM/SdcdMQDwCnEU9Vsi
 jkj8xXfdoGXPuT4Rykqi8DOfwnozZTC/pe+EC6MKDgEGTy7gbBqfXTIJS6W3KHblWZII
 zzqw==
X-Gm-Message-State: AOAM530qtTVf1a9yUCssK3spklwWj0mBKgJR4VdBOgITpZBkYZ3oXSZx
 Ty+4fqUg/Ls3agmU9gWUXz1yMnCpeh0=
X-Google-Smtp-Source: ABdhPJwPgES6MZO45w9RWQwiYHp+JPsOrKQM+/wkG5LHLtm0gIKRxBmePOcDQl8id3d+NlqBh0sXCA==
X-Received: by 2002:a65:50c8:: with SMTP id s8mr12375480pgp.68.1612688953916; 
 Sun, 07 Feb 2021 01:09:13 -0800 (PST)
Received: from localhost ([2402:3a80:11d2:b946:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id h11sm12883843pfr.201.2021.02.07.01.09.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 01:09:13 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: emxx_udc: Make incorrectly defined global static
Date: Sun,  7 Feb 2021 14:29:12 +0530
Message-Id: <20210207085911.270746-1-memxor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <YB+qDND2OmY8WwA0@kroah.com>
References: <YB+qDND2OmY8WwA0@kroah.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The global gpio_desc pointer and int vbus_irq were defined in the header,
instead put the definitions in the translation unit and make them static as
there's only a single consumer, and these symbols shouldn't pollute the
global namespace.

This fixes the following sparse warnings for this driver:
drivers/staging/emxx_udc/emxx_udc.c: note: in included file:
drivers/staging/emxx_udc/emxx_udc.h:23:18: warning: symbol 'vbus_gpio' was not
declared. Should it be static?  drivers/staging/emxx_udc/emxx_udc.h:24:5:
warning: symbol 'vbus_irq' was not declared. Should it be static?

Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
---
Changes in v1:
Switch to variable with static linkage instead of extern
Changes in v2:
Resend a versioned patch
Changes in v3:
Include version changelog below the marker
---
 drivers/staging/emxx_udc/emxx_udc.c | 3 +++
 drivers/staging/emxx_udc/emxx_udc.h | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index a30b4f5b1..3536c03ff 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -34,6 +34,9 @@
 #define	DRIVER_DESC	"EMXX UDC driver"
 #define	DMA_ADDR_INVALID	(~(dma_addr_t)0)
 
+static struct gpio_desc *vbus_gpio;
+static int vbus_irq;
+
 static const char	driver_name[] = "emxx_udc";
 static const char	driver_desc[] = DRIVER_DESC;
 
diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index bca614d69..c9e37a1b8 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -20,8 +20,6 @@
 /* below hacked up for staging integration */
 #define GPIO_VBUS 0 /* GPIO_P153 on KZM9D */
 #define INT_VBUS 0 /* IRQ for GPIO_P153 */
-struct gpio_desc *vbus_gpio;
-int vbus_irq;
 
 /*------------ Board dependence(Wait) */
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
