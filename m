Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCD5345EC8
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:59:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6527E83ED8;
	Tue, 23 Mar 2021 12:59:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YGOvAYRHZ9la; Tue, 23 Mar 2021 12:59:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3EAB83EAE;
	Tue, 23 Mar 2021 12:59:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE4491BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAA5C404BE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QbaFhZBhv15V for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08F5D404BD
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:28 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id hq27so26929802ejc.9
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mb74xJj4X7Fk0W46aIpOMrmEyQd8S7cZr54o50UVkWo=;
 b=EgPlfl3kVTpXpdHgw82Om8tWnkPoO0pPCshmHxSh/61ZqhiRTsf8Sm7NwXFH1cK3Eq
 /7Kfih1nJjyuaA4nXumtUB2OPo6XJlsgo6NcrQ2+QdaOjtN2uwcPSlVDRBOw9PYnMapq
 NZQdkSdFpEO42btf6/Miw2mF5nsuNK0qquo/FgbMOiSmWSbeGkElun7fV7PbVuA2va1P
 n0p6/1Pd0/PnFblodytQFniseNGPq4xqQdBX5ETGHO+egmu13zN58jzpLjHLH8azo2dF
 u5CghaSMa+ftl5/ov321wpEQVb5TB4W3rdvM9ZPQotl2votyaVb/8f5XyRIpxQI0gsih
 fpDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mb74xJj4X7Fk0W46aIpOMrmEyQd8S7cZr54o50UVkWo=;
 b=ECSTnuWJo/tbSfJrWLvHhP2VFDHBZRxDXxM6I/HUmnrEtR2eMhFkO2qNtqPFDvGIvk
 CdKbM92TN9uFmjNcbeeRqwiY8ZzL42F8cjxMSlLoTrtcHxDKpUYm7keFgh5NyORLxy5D
 gIU2ZiR7sn9VAcotrtOHLOFcy5P8un6hLRLH5SBp1dyyH7zhSTdu5GwkUGPqFrjI78Vp
 tYflxJSqG6XyptgjknJBgfoVLFSpvfQWvDukrfNEnF4L1fDKgP+9EOlgd+H0GF7xKBP4
 UlQVW5g9ITSJlwyfb5CSgv2r6MD8LifXbVHdUOfKukskbQCFZOaIFXMrEpAhsEf/URse
 uPWA==
X-Gm-Message-State: AOAM533Fth3GlBF8Ytwe+xW9mspmb6sZNT3TK3A1HLWNF++JKUPDNymp
 GmBpla/yTsBJROAgEtXGkb2dt0Z1XbxrXQ==
X-Google-Smtp-Source: ABdhPJzMWu/kpH8U1YbDFjLTVKSjkii4IqojKYpx81UFyj41WFUzuSXtrHDZ2LQoGtxaZ1hlNn+9Yw==
X-Received: by 2002:a17:906:a896:: with SMTP id
 ha22mr4700972ejb.503.1616504307276; 
 Tue, 23 Mar 2021 05:58:27 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id t12sm13278578edy.56.2021.03.23.05.58.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:26 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 7/9] staging: rtl8723bs: remove undefined function
 prototype in of os_dep/sdio_intf.c
Date: Tue, 23 Mar 2021 13:56:34 +0100
Message-Id: <06d61465fd33b6cf6d9428ac983e55f50afd448b.1616503354.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616503354.git.fabioaiuto83@gmail.com>
References: <cover.1616503354.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch issue:

WARNING: externs should be avoided in .c files
486: FILE: drivers/staging/rtl8723bs/os_dep/sdio_intf.c:486:
+extern int pm_netdev_close(struct net_device *pnetdev, u8 bnormal);

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 8f8549eee23e..185919b6963f 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -483,7 +483,6 @@ static void rtw_dev_remove(struct sdio_func *func)
 }
 
 extern int pm_netdev_open(struct net_device *pnetdev, u8 bnormal);
-extern int pm_netdev_close(struct net_device *pnetdev, u8 bnormal);
 
 static int rtw_sdio_suspend(struct device *dev)
 {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
