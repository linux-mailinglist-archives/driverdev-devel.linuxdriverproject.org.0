Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF43133C3D9
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:14:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AD1B430EF;
	Mon, 15 Mar 2021 17:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JRC1JYNF1B6w; Mon, 15 Mar 2021 17:14:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4A5440196;
	Mon, 15 Mar 2021 17:14:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D17E1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7CCA66F584
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CRjVd63t_kII for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6B096F56D
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:48 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id lr13so67563577ejb.8
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=wUWbzxkdL6pUMCf4+ZnQLpAU/tZYUkrcNYq+xytFnS0=;
 b=i6Og+OVnsDLjJgbY3yGZ1NO1DwhpyG82w5cMyylGsmtbABhtsVV63r0vYMKWoQvcNH
 nH5j/SWmSXEXHDWVsdvjwVnM5NmFE2UvQJWBSg+Ef6bhLWaFEi7jh27zaqC0Ts5HavIV
 AMWFtEF33GLyUvU7gZq5X/oeEljQenLvRDiXAyZjb9//c4PXQoXkutlaCBmvvYIyqiYY
 +93X01g2reyTGwZ8I+IYAWRfj9sqvylZRhzx+xeo6tZ/AyvfYb5flJzMKy4bk+tAsnev
 xeiwME3P7ixiAeuGRuY7sUhJkxecKiE6fqabKFz0FptRz7si6k3kokQaQY7ZbBfxcB9F
 mMwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wUWbzxkdL6pUMCf4+ZnQLpAU/tZYUkrcNYq+xytFnS0=;
 b=J0RBKWLXV1VT3jwIhorQYmbjKeeZyRY9ac0vlNvHhOFB3XWt0+4R2KOImnbXgaLIi5
 CjatlRf9aa3Zfy2N/tMHr3Sd1fAPuRIvHbPm0+3f2Tmlhy3bYMrzmTRwrYTvLE99805C
 N1SZDkDGY752CgmakVZLVO9IL27AVCfKUwOSTaFsxFhKrq4Yz8X7e351sPrDf2LPwAKo
 8r+sKhxzeRbnJZZy6Vk382x103clZcufBMGzYJUkocsOqaUZt+TlhYucK3FMyO+q0PH8
 YkvHd1g0yQ8xz7fvpWcC/Vuf/B04oGc98Vlia6BFRMpKsiXkCgQw2T1V2PtgdkFKiLrB
 K+Pw==
X-Gm-Message-State: AOAM533QNndCmBqB3Ns6LgXKraar+SBvr58aUVmt0mlVMN3L+quVtB9X
 IY628UaZdDyYcNR8YTkxuIc=
X-Google-Smtp-Source: ABdhPJyrHoj787KHinpka04wKK+BmWT8RozUYfkhWV34MXrIeS7snPgpFIV/6hJRWArEGjVPf7O+tw==
X-Received: by 2002:a17:906:32da:: with SMTP id
 k26mr24743744ejk.483.1615828007001; 
 Mon, 15 Mar 2021 10:06:47 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:46 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 46/57] Staging: rtl8723bs: fix spaces in osdep_intf.h
Date: Mon, 15 Mar 2021 18:06:07 +0100
Message-Id: <20210315170618.2566-47-marcocesati@gmail.com>
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
    #73: FILE: ./include/osdep_intf.h:73:
    +void rtw_ndev_destructor(struct net_device * ndev);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_intf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_intf.h b/drivers/staging/rtl8723bs/include/osdep_intf.h
index e9fee6bf8d43..aa4337686183 100644
--- a/drivers/staging/rtl8723bs/include/osdep_intf.h
+++ b/drivers/staging/rtl8723bs/include/osdep_intf.h
@@ -70,7 +70,7 @@ int rtw_ips_pwr_up(struct adapter *padapter);
 void rtw_ips_pwr_down(struct adapter *padapter);
 
 int rtw_drv_register_netdev(struct adapter *padapter);
-void rtw_ndev_destructor(struct net_device * ndev);
+void rtw_ndev_destructor(struct net_device *ndev);
 
 int rtw_suspend_common(struct adapter *padapter);
 int rtw_resume_common(struct adapter *padapter);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
