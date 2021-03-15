Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E5033C3DC
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:15:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B381A430F1;
	Mon, 15 Mar 2021 17:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id epsETJeAo5qN; Mon, 15 Mar 2021 17:15:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16F3C40170;
	Mon, 15 Mar 2021 17:15:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AEA51BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 279AB83486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tgjl5XlSpdOm for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7846683478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:50 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id si25so11808257ejb.1
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=eVpiosVQaogqfXs0vbpMj+II5PNo1rnfT0Vu/RkGXmo=;
 b=MrjLmL8BtR1dV90FBXxgQfXOI+usFVgeIjEzh50AtemWNsLPY7KhyFFPI1DxXJYSct
 Mh4a0aMpPam2kF77yiajfIOS5Uw2NdfilI8tyzoAy/oRmPfasBK4u1zdsXrn2AJ3+c6P
 CQ576jvEGcqdf+CWw6iH0LYZnyODE0Ok8KFgNzploFZMeB2MrCtytR4KEwMVFaOEhqvi
 n5QBzgIF0Y8nZKjhec82Ehdwrf6Guy5kREIII/U3+aUdz4guFdNjdAOGlpY0zqYIVufU
 1VhkTpD+UfoPiC/woDp3xsPiWLQqclOxkiiH+lF6kvDoPVsLMPq63typCK6hwxEt5CD3
 aFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eVpiosVQaogqfXs0vbpMj+II5PNo1rnfT0Vu/RkGXmo=;
 b=IuN1Ep9mlIbVfHoKvWUvA8Z2SJY3EY1TC+ON4/jiLa0WUNNTyo8gnUaXKnSLOYeHha
 Xs4iLwY5J76JQLqdeEyWisT8QbwoF5ccxFeYMR4Uoh/KcMHeDopvxW0fRbOf4Tl/AQA2
 xridgcj0NJ3KLtdgs2XI9K1cO9oKZKU5lKfrvxY+XYpMNXOBcEUa1tU/cn8aN9Pgnb3M
 e0OBR5Fln7cyCitv/TygCzm+M7cx9MHmSlJIj498Gt1hezG6i0LAHSffHJit4ldj6es5
 V2MS5NoO7iAMRdMbFP0t2iOAZPux0FVRCXxssdka4li/lv00G3jqvlnhPA3tQ24Br/Zu
 908w==
X-Gm-Message-State: AOAM53199u7sMQOOIv8U3MzmsnCY3MCYc00LA03OJpTSa8q6+dPwdwfL
 ewHtm/X5j5sb6P9NPcJAX/A=
X-Google-Smtp-Source: ABdhPJzGJiz020y4mi072Zj9q2q6AXY5JwobVXuRHxBpVzLGhX7DvOn0laoQMILx4M6UIbWHx78+ng==
X-Received: by 2002:a17:906:1408:: with SMTP id
 p8mr24476685ejc.89.1615828008789; 
 Mon, 15 Mar 2021 10:06:48 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:48 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 48/57] Staging: rtl8723bs: fix spaces in osdep_service_linux.h
Date: Mon, 15 Mar 2021 18:06:09 +0100
Message-Id: <20210315170618.2566-49-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl error:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #123: FILE: ./include/osdep_service_linux.h:123:
    +extern struct net_device * rtw_alloc_etherdev(int sizeof_priv);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_service_linux.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_service_linux.h b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
index 6454625d6bcf..3492ec1efd1e 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service_linux.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
@@ -120,6 +120,6 @@ static inline struct adapter *rtw_netdev_priv(struct net_device *netdev)
 }
 
 struct net_device *rtw_alloc_etherdev_with_old_priv(int sizeof_priv, void *old_priv);
-extern struct net_device * rtw_alloc_etherdev(int sizeof_priv);
+extern struct net_device *rtw_alloc_etherdev(int sizeof_priv);
 
 #endif
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
