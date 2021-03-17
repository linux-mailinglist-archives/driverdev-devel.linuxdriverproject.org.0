Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DB933EED6
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 11:52:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEFA04EDC2;
	Wed, 17 Mar 2021 10:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJDbtNBVYpu2; Wed, 17 Mar 2021 10:52:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFD554EDC4;
	Wed, 17 Mar 2021 10:52:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9375B1BF3D7
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 10:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FAFD83FBE
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 10:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UKcJisR0sF-g for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 10:52:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D047683FB3
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 10:52:29 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so3101803wmy.5
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 03:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7ZEmZdoNzTf0jQ1Rx3FYRD3InQh2pIlPzg/PoJOuS1A=;
 b=vGhqd8J/KOPvVcl54UKfueWhz/dmR19kbkBhnBbmE1ZP0xLMwmLG54v/oQfG9rTbIi
 mGDvgBwv1eSwbEePwnEFwqKt3R8VJWOLvmsvQtzh0fG1RjrgB2aCE9YoBc+wb0L39ihg
 HaA77dmjbmENhBTt04M96ddBTsuaT6YjpzKM1OzR2rFW7jw2ouTPsbwc3uiypGUhZGx/
 LT7UXjB6ce2hlrQthg+08DDXViWziOwlERwLaXNYYULIDmMcmDsJuBLZMctq04PTS3wK
 slv+NCI1ECxR0N+EbTIAeuv4HLlLUc6YVqlo+wrcupWIfNJBJ4qUvqCh5Xx9GbnH4Cwl
 3awQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7ZEmZdoNzTf0jQ1Rx3FYRD3InQh2pIlPzg/PoJOuS1A=;
 b=s8SZBJuHb2ZOmLfc+0Jtuw3N1cHWQ22tAAfJfrBNRCl0dpC2G3OSKBtDBZZmvBFp6U
 Si0ni2JoGtg0t7sJx7GubZTpdoSFdXgo6ECOJ465IpCO8lcb2jGoR7e8cjHsbgc8gZ8d
 00mz8M9lQlbNGR70wMN9ru08f6txOJ6UoAoN++F+u+wu+Vr4S+uR2JykMw2UboKyVnbe
 zxRjj7/REQYw7f4cPsuHgI7aJv8BwO7SrizPi76J4jRCfPEPdsQAkxMh/atcRW6wASx/
 fjqlo5R22DXQIV8OvVfnWBnwdb9BhHDJ9QJv8gntYte4o1WaV18AuoR5R8ZpxgMxRHsO
 khzw==
X-Gm-Message-State: AOAM533w5cMNXUPiWvmd+iDlPNWWScFeqbIG9e1zhYYLPwO3oK+fE52P
 y/ke9tMXWee6x0eIdEuga5A=
X-Google-Smtp-Source: ABdhPJzqR1Fv/5bJYHjRFxLg7ddyD6q0zfMkbWQa+WfG/ogOupuPRcnxqoC40LbMr6OSKPREfQA4/g==
X-Received: by 2002:a05:600c:4f44:: with SMTP id
 m4mr3035485wmq.175.1615978348153; 
 Wed, 17 Mar 2021 03:52:28 -0700 (PDT)
Received: from agape ([5.171.81.191])
 by smtp.gmail.com with ESMTPSA id n1sm7855036wro.36.2021.03.17.03.52.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 03:52:27 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove unused code blocks completed
Date: Wed, 17 Mar 2021 11:51:44 +0100
Message-Id: <20210317105144.3732-1-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <YFHTpb6oSarirQJv@kroah.com>
References: <YFHTpb6oSarirQJv@kroah.com>
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

Remove related item in TODO list

-------------------------------------------------------

searched for other unused code blocks:

grep -r '^\(#ifdef \|#if defined(\|#ifndef \)CONFIG_' \
drivers/staging/rtl8723bs/

drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:#if defined(CONFIG_PM)
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:#if defined(CONFIG_PM)
drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:#if defined(CONFIG_WEXT_PRIV)
drivers/staging/rtl8723bs/include/drv_conf.h:#ifndef CONFIG_RTW_HIQ_FILTER
drivers/staging/rtl8723bs/include/autoconf.h:#ifndef CONFIG_WIRELESS_EXT

all blocks left are checked by existing defines.

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/TODO | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/TODO b/drivers/staging/rtl8723bs/TODO
index 45065fd3fd5d..afa620ceb2d8 100644
--- a/drivers/staging/rtl8723bs/TODO
+++ b/drivers/staging/rtl8723bs/TODO
@@ -1,5 +1,4 @@
 TODO:
-- find and remove code blocks guarded by never set CONFIG_FOO defines
 - find and remove remaining code valid only for 5 GHz. Most of the obvious
   ones have been removed, but things like channel > 14 still exist.
 - find and remove any code for other chips that is left over
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
