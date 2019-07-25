Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F73744E4
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:27:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4F5086168;
	Thu, 25 Jul 2019 05:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z-vsgA20JqWZ; Thu, 25 Jul 2019 05:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8CC7986135;
	Thu, 25 Jul 2019 05:27:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 650821BF2B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 622FC8614E
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zndzdIzUX7h5 for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:27:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EB0818614A
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:27:15 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id g2so22119794pfq.0
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UhtuJCqNcxIm+EBXcjESVIufNkTV5hpQi4vJIdOJsVY=;
 b=LixUab5LzazCWQB5rBPndlcvfbyGC8zR8pck6CQuqOXx3NkzBiWAfiKsl4nvC8cDYZ
 PYRqvin4/Xxk5JnXzfiRQUJr7Ybqpzzbhf4/wN4lr8tQMGq9C3X78pdJS5ib7ibR4/UM
 HAvsgKWHoeTg8LaUFmGQuxLV3UdIvyMi/1H3n1ktvdlwTQ5ckEFU9y64OCkhumR5LCZN
 gkvhspymHjllrkwpBwhT1ZJSNEPlGawSdRU5CfixEQouO0twmnsJL16ifs79OXG92AC0
 1FVidsXhWKGLfAbx3OPYG0HExhbU7IzrmvTXI7D5f+tqrwO79fwmCfLdpnvBJ6nc7uFV
 nl8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UhtuJCqNcxIm+EBXcjESVIufNkTV5hpQi4vJIdOJsVY=;
 b=JFA9taBTxzZxp2TTbQbBozYfpfFaKyjuuJJELtlFrrWusi5QhtlTs1v6tJMqtTaViZ
 J/y1jnNwgWbwfRmQ0DtMK9toCvlQIPr6f9GcAmkpVfLL9agl4GtVlRfIKl+wptMMgOfF
 59giR7+mqec+/ysiIn3z7XMlJsM3z20+gvXt3RE7HbCdE7k9VF3QwT3jm82aUPbGKlkG
 9qUWwv9q0OQOsSAQVub77LaNeu/UAml/lQcfk5Ak34xFPnMABrO9u5TKzMgNI0O+VkQ3
 lPld3wKATvP1MVKfiaFOdGWgPslbdK2duOHEcRE8PoWbQh/FUdZQcG+s7nGtnAOIwelY
 MPIA==
X-Gm-Message-State: APjAAAVn1DZYHv+Zn003xx3LH6OUBluKNZt/XcRYaCYaI8az9GgtfRxE
 idkHPUuLz91k/7zzJLEd/O8=
X-Google-Smtp-Source: APXvYqwAJz5rTBlgFzYwZN95A9jQhtMtBrCFQRn5IRNP8pki2WjP4Imr/xqzYM6NeYB0MjR8iS6otg==
X-Received: by 2002:a63:36cc:: with SMTP id
 d195mr43823167pga.157.1564032435602; 
 Wed, 24 Jul 2019 22:27:15 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id w22sm51615877pfi.175.2019.07.24.22.27.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:27:15 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 8/9] staging: rtl8723bs: Replace function
 ODM_TXPowerTrackingCheck()
Date: Thu, 25 Jul 2019 10:56:44 +0530
Message-Id: <20190725052645.2372-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190725052645.2372-1-nishkadg.linux@gmail.com>
References: <20190725052645.2372-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function ODM_TXPowerTrackingCheck as all it does is call
odm_TXPowerTrackingCheckCE.
Rename odm_TXPowerTrackingCheckCE to ODM_TXPowerTrackingCheck to
maintain compatibility with call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index 01f732853689..dd9a16fb83a4 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -342,8 +342,6 @@ void odm_RateAdaptiveMaskInit(PDM_ODM_T pDM_Odm);
 
 void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm);
 
-void odm_TXPowerTrackingCheckCE(PDM_ODM_T pDM_Odm);
-
 /* Remove Edca by Yu Chen */
 
 
@@ -1390,13 +1388,7 @@ void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm)
 
 }
 
-
 void ODM_TXPowerTrackingCheck(PDM_ODM_T pDM_Odm)
-{
-	odm_TXPowerTrackingCheckCE(pDM_Odm);
-}
-
-void odm_TXPowerTrackingCheckCE(PDM_ODM_T pDM_Odm)
 {
 	struct adapter *Adapter = pDM_Odm->Adapter;
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
