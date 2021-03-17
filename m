Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CB533FB19
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:27:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 082174EDED;
	Wed, 17 Mar 2021 22:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UzHrvq--1vZc; Wed, 17 Mar 2021 22:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01A074EDD7;
	Wed, 17 Mar 2021 22:27:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF69B1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD26F60636
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrV9C1GW9CVR for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17CD16F998
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:42 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id h13so4201614eds.5
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=lTFWZofitHxqKhExud/shG21NhBmf20x8cSCm+5sfLY=;
 b=X27opS4Z/9yZIYtdOoxCH009uNbs+w8QGJGqYZQ9bPfJoyoCx2U6HLAPlJAkyy1j1k
 Ub+vuH0Exp/BmdBL/Yhb2b7RLzVPL4xdzPe0LJ+5F33yclb7VJlyLJSAhD3+n2QWFNqK
 H590VQwWzwy9vFVWyR0jN1688BviMEttq8AFq6D/CcWG2ITjcnO/6xCKpPxNmHXYR6X0
 v0d5TvQz5z2mScL0AiGQbvFXG7vF2DdfjSNem6LQfeBRSg0IxuO5nj1OQjXgIaG3ySnN
 bxU+l0jzhddt/+1xX98R2WZVhzaHXvox0KqfnLXDWoijdynfJQjT9PQ+ULXZ3bseAHIe
 L65Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lTFWZofitHxqKhExud/shG21NhBmf20x8cSCm+5sfLY=;
 b=FTpVCCsjjZbSWg7g5qjrWNoNLQ6O/7hGnHk/nFBXpGPZWifN5qeukWdnhSeE6q5xZ4
 LSPPFCpyxET7E5Akxdzuh9QIeRClrHQmr6XpM1i+adchrL/dVHXdIXuZkID8jk383e+o
 Fku+rTiPMXPiHn/BoaGbyXAFFG3II/VbIIdeN1x5/WmNT9pxIQJwwjfSv1TCdZ3px8hg
 Wp5YVkb73LY2KsFwIpZR2oYFo773RefmT/YC+/k2gnyNZckynDDzGG8s0vpe8DgYrFCM
 0Prh9stfM2tqbeLDY0ZaeuYxbV7+BvxkAP4flL0ur9zEf/qS84PNcuJckYlX0GNYbKX6
 BG4Q==
X-Gm-Message-State: AOAM530SMrEe7E05vWhvte5iO1R1CGzW8/y55WFgXy9aqXGKovS2MIK/
 AqW2PEvGYVzYahgf36g0a9E=
X-Google-Smtp-Source: ABdhPJwV3HNMWEvy5OMFEIOXfDIMHl6VbtQVCV1u8NdP0HmUijVuiPM6Moux3EsgOaodTFrIPdc9NQ==
X-Received: by 2002:a05:6402:51d4:: with SMTP id
 r20mr44729976edd.112.1616019700363; 
 Wed, 17 Mar 2021 15:21:40 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:40 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 30/43] Staging: rtl8723bs: fix names in odm_interface.h
Date: Wed, 17 Mar 2021 23:21:17 +0100
Message-Id: <20210317222130.29528-31-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit converts names of structs / enums
in hal/odm_interface.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_interface.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_interface.h b/drivers/staging/rtl8723bs/hal/odm_interface.h
index b129eb81bca0..8159bbd06c22 100644
--- a/drivers/staging/rtl8723bs/hal/odm_interface.h
+++ b/drivers/staging/rtl8723bs/hal/odm_interface.h
@@ -39,7 +39,7 @@ ODM_REG(DIG, _pDM_Odm)
 #define ODM_REG(_name, _pDM_Odm)	_cat(_name, _pDM_Odm->SupportICType, _reg)
 #define ODM_BIT(_name, _pDM_Odm)	_cat(_name, _pDM_Odm->SupportICType, _bit)
 
-enum ODM_H2C_CMD {
+enum odm_h2c_cmd {
 	ODM_H2C_RSSI_REPORT = 0,
 	ODM_H2C_PSD_RESULT = 1,
 	ODM_H2C_PathDiv = 2,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
