Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DBF345EBD
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:59:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE7CE404CF;
	Tue, 23 Mar 2021 12:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mVwZXD1oVMBx; Tue, 23 Mar 2021 12:59:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9240640469;
	Tue, 23 Mar 2021 12:59:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D65E51BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C58CA60828
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rRsfh7u_UABB for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1756C6080C
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:26 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id u5so26934254ejn.8
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nme5ONpWtFP36oE58brk0se7hmjfl2KeXVc77HwtpBc=;
 b=BJVznlmWnFQoPqAdaF2BIiTsgoYEVQzFfl+cvSJ2+dPpPE6NH9IU3zIXTE9nCXWxsI
 xtiayIxOrdEbx3mUISvfEn+XOgiRETbmOi2fQpjz2vZrCHZu60DcA2rgoZMkpHlbm55e
 B9kx9bX4CvrIojbOETn7d6BwOL89ioM7fMKB5uINpV0tY1dN58k9NocyRiiUq/BaeuHB
 s+XkKnVoq7el9OqY+yfztGnTyjNkiwjt21etwMPOjd/KigUeV2xuWU/2unCbSiqBAhea
 k7VdDhXNsX3iXBLa7RCiFmpURrT9m39HaIrxasS6FzRRju+WP0pBO4nhdOXeJPbsAMRZ
 Y4tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nme5ONpWtFP36oE58brk0se7hmjfl2KeXVc77HwtpBc=;
 b=o2FA+ceKEgQJfClXLu4GSjxkkAxEhyVglslHau0lOf6ZvFjlK24gZY+tISkGd2EnW2
 CYmjeQakOpRI9V9JZBB4JlhgS6cmPjRpkVktwnMMvBzRBhjBjpwtvGxC/GF2SQx/vNnN
 C9e8hAz38r6+kAkywbQNuZ5j4WJAWueAFrfdHSxNyG5sl8fjrhO/1IaZVD9jiNwObJ/z
 gfUmwzThmFLoDtdWUBM+CV1EkQR3C9W0wrq10LkARukTpII/OA3XFqVR3b+eUT2WbK0v
 +rHaUI5VM6SxgFUXgg7pKYoUb21yPujV35q8QhgHftI6ZOqMAI2eQnnLLjd/B54RO5OV
 o8Vg==
X-Gm-Message-State: AOAM531NLQwzhIKlycYaWDTWHwKto9f7J+vldU9ECla3vfh95zpvdiyA
 G0X3X8ndlCEfTuMYdxvdUzs5CiiTftMdaw==
X-Google-Smtp-Source: ABdhPJx2xa6D9VkLp9eb745fYzZCRpk/mVl/e4fEOi4s9cNCyyi/cCbiBRQK8uhCWIZgW68cMq49xQ==
X-Received: by 2002:a17:906:d790:: with SMTP id
 pj16mr4700201ejb.255.1616504305424; 
 Tue, 23 Mar 2021 05:58:25 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id 90sm13191751edf.31.2021.03.23.05.58.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:25 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 6/9] staging: rtl8723bs: move function prototypes out of
 os_dep/int_fs.c
Date: Tue, 23 Mar 2021 13:56:33 +0100
Message-Id: <4604b856b9c20f1141e19894f46934cb860eebd4.1616503354.git.fabioaiuto83@gmail.com>
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

fix the following checkpatch issues:

WARNING: externs should be avoided in .c files
196: FILE: drivers/staging/rtl8723bs/os_dep/os_intfs.c:196:
+int _netdev_open(struct net_device *pnetdev);
--
WARNING: externs should be avoided in .c files
197: FILE: drivers/staging/rtl8723bs/os_dep/os_intfs.c:197:
+int netdev_open(struct net_device *pnetdev);

moved function prototype in include/osdep_intf.h
removed function prototype and made a static
removed unnecessary extern declaration in os_dep/ioctl_cfg80211.c

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_intf.h    | 2 ++
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 2 --
 drivers/staging/rtl8723bs/os_dep/os_intfs.c       | 4 +---
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_intf.h b/drivers/staging/rtl8723bs/include/osdep_intf.h
index 5ad85416c598..48c90f00cc2e 100644
--- a/drivers/staging/rtl8723bs/include/osdep_intf.h
+++ b/drivers/staging/rtl8723bs/include/osdep_intf.h
@@ -69,4 +69,6 @@ void rtw_ndev_destructor(struct net_device *ndev);
 int rtw_suspend_common(struct adapter *padapter);
 int rtw_resume_common(struct adapter *padapter);
 
+int netdev_open(struct net_device *pnetdev);
+
 #endif	/* _OSDEP_INTF_H_ */
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index a577ddcce8cd..03a784558d79 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1259,8 +1259,6 @@ static int cfg80211_rtw_get_station(struct wiphy *wiphy,
 	return ret;
 }
 
-extern int netdev_open(struct net_device *pnetdev);
-
 static int cfg80211_rtw_change_iface(struct wiphy *wiphy,
 				     struct net_device *ndev,
 				     enum nl80211_iftype type,
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 9ae7d46fb501..c6c5cc0a9e08 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -193,8 +193,6 @@ MODULE_PARM_DESC(rtw_tx_pwr_lmt_enable, "0:Disable, 1:Enable, 2: Depend on efuse
 module_param(rtw_tx_pwr_by_rate, int, 0644);
 MODULE_PARM_DESC(rtw_tx_pwr_by_rate, "0:Disable, 1:Enable, 2: Depend on efuse");
 
-int _netdev_open(struct net_device *pnetdev);
-int netdev_open(struct net_device *pnetdev);
 static int netdev_close(struct net_device *pnetdev);
 
 static void loadparam(struct adapter *padapter, struct net_device *pnetdev)
@@ -875,7 +873,7 @@ int rtw_drv_register_netdev(struct adapter *if1)
 	return _rtw_drv_register_netdev(padapter, name);
 }
 
-int _netdev_open(struct net_device *pnetdev)
+static int _netdev_open(struct net_device *pnetdev)
 {
 	uint status;
 	struct adapter *padapter = rtw_netdev_priv(pnetdev);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
