Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BA133D78B
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:33:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67DD06F65F;
	Tue, 16 Mar 2021 15:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yMLMqH2FwnYB; Tue, 16 Mar 2021 15:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87019606AF;
	Tue, 16 Mar 2021 15:33:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0974D1BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E955F83DA8
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OwMZ-VrA5wBF for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:33:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D3BF83D81
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:33:05 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 c76-20020a1c9a4f0000b029010c94499aedso1728980wme.0
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oJWAVqxGMjHMFdENUlaqR+GUs9koSOvHosCFoEJ2b9Y=;
 b=DDnOft4AONKTvCp72MmHeurGgLkQ5QPNI7Px8jvJKtu2gnzNN+4+NRsAyio8ZMu2SR
 QFWqiqk57Dh6HxfloA6WyG0NuCECMToFIuGztBLAyIe1VdgOlA9FSf1Uo4zyWm3glDwD
 lRWGVX4a2JMhW+AguiGrDVdFDeMpmkmzDW8B+QiJL08KLYJcjIgrvlDMMQ6bFG9ym6ry
 bixeYX7Q3h8DsCpoqGa8h/DeVqGM2pnXff6vwcTaeZ1wgxF8SUrVmTNNWYrlPcmlj9+e
 CkTNhrEwBrgMjquOPKCKufoCZbVGUvITM8AMFx/0coA6GXyn8qSCsO4/spSIqXENDhz5
 bE0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oJWAVqxGMjHMFdENUlaqR+GUs9koSOvHosCFoEJ2b9Y=;
 b=dmHruN5WTLKtG+5DUZt7w/yyXMPP2GnPWgFU/aLGMSM++V7nA7G8bvr/7gtB8l5Tu0
 RteJkbFQfN+XJ57nroQsHnTBtDsh+Xiyiz03z+l8d/mv9NgoeL4AccWPULoSXvrdB6k9
 ysfd1sBv4u9cqfaqQb9ln734ueZblf1U9Ij+BHCNVI6pAxjtG6y0AeLH0ZotjB3K59wu
 UKSPwrjvP4fPz3h3pT/vBHWIeBuVjAhYF5hy5RjFShgKyhAQOUzIUtbxuSd9GWscIDC2
 dLLK27ANruvrdvT/SUGTgVPAmquXmx78wikbEcJHb6EA5qE/E4At7s2x8z9HAQvXvBWI
 xphg==
X-Gm-Message-State: AOAM530eZZ2Xl+7WcKfwFWw7eudYq7zjTCQm0BgW0sWeU/VGozwAmybR
 RvY983JGfcEPKYIjSh3aO6A=
X-Google-Smtp-Source: ABdhPJxluN9D9kHW8U6CoBmwKy3bve+Pe6x1Xzoe0dFtFayn5GMIDfP/91/5acMbRohz3zccDppHmg==
X-Received: by 2002:a1c:7fc9:: with SMTP id a192mr203454wmd.15.1615908783497; 
 Tue, 16 Mar 2021 08:33:03 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id h25sm3949902wml.32.2021.03.16.08.33.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:33:03 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:33:00 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_R871X_TEST
Message-ID: <108837d49bfc158ba9ffa21a06c31a9a0e7fba97.1615907632.git.fabioaiuto83@gmail.com>
References: <cover.1615907632.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615907632.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_R871X_TEST

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_intf.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_intf.h b/drivers/staging/rtl8723bs/include/osdep_intf.h
index aa4337686183..5ad85416c598 100644
--- a/drivers/staging/rtl8723bs/include/osdep_intf.h
+++ b/drivers/staging/rtl8723bs/include/osdep_intf.h
@@ -35,12 +35,6 @@ The protection mechanism is through the pending queue.
 	struct mutex ioctl_mutex;
 };
 
-
-#ifdef CONFIG_R871X_TEST
-int rtw_start_pseudo_adhoc(struct adapter *padapter);
-int rtw_stop_pseudo_adhoc(struct adapter *padapter);
-#endif
-
 struct dvobj_priv *devobj_init(void);
 void devobj_deinit(struct dvobj_priv *pdvobj);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
