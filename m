Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CE1291FAD
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 22:06:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E98F2871C1;
	Sun, 18 Oct 2020 20:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PI_1tpGg7Kgg; Sun, 18 Oct 2020 20:06:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D8B287184;
	Sun, 18 Oct 2020 20:06:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68C341BF46A
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 20:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6113887184
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 20:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ERJnv2S9QJcr for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 20:06:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2DB218717B
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 20:06:44 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id c21so9169616ljn.13
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 13:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2/yIw3iAR/1P5k0So8EgvrDXUbc+1qYmRQGCO4NWl/w=;
 b=b69PazCEQHn7OPDdCs/gWBr8mjGJRM7gm6e07VMEpYBiGYaCSPVJiHlPxXRRGKoJiy
 NTv8hkJrp1Zqjj34xJtZnTsNh/CVAspSmOO+SOLxdo9UWudTCfQKTYskkg1BBRQ8HpTp
 hApFjixJXxApYqbYVhgmsV31broLa9pJhRIDdDXVyWoNPbALPLvwYGstE3fOJasPzg0s
 6xFodBWvZG7u2SG2IAL1u5/AXwhTOVmK9N7egCQs56PiXovVirJUU75LdpPOJCeWLyw9
 VaTeOQ50i9m2ZSO5moOFj7rMEdBj94Pbjsm6SmZSRmlCnmjFxA/2vUNCDVofXhYhDVjK
 aZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2/yIw3iAR/1P5k0So8EgvrDXUbc+1qYmRQGCO4NWl/w=;
 b=JEAQ6j+eiKreMBcM1rPv8eEdaTbQdNRuOwYVGPFrgmKgpTryv8A0TzTQEFyNcNE9v9
 9juM8drNT9dHkG7WCCaexz6tQZZyf+oOfPK59U8B4veDUlrssYXZGJoaYpmuFYQo/+sv
 WYjbNB3KAIjAlZ4EQspyxMVyy0uUUXkiy1qnV/68IRHYeSTNe+SbioWfmUV3uXd8sKJk
 X3s/2zAbdb6ZmLg3mYYZ8zSZnBkZp/KZYbLYOPgBKnZ7M4dAQDV3TzWlW5nS1AF8w5J/
 VFlHAt8MeX4ppT0NM07NdTHXqrIoEldjuAS5QGYba2kw4qkpAZxCNw11FPb/0zQ0BXGJ
 fXSA==
X-Gm-Message-State: AOAM530yk2mznVosEm5qx8DWDZTWLRsVAPqZZ65fHKja2PLtpqodisFb
 K9JoMgFof10NP73oxM0IICE=
X-Google-Smtp-Source: ABdhPJxI8070+K/ZJqjo/lQBAaeG9lXgtxCzHV5F0lo2CGbRsBaXz+7QXfe3Rlh7v9IYpYGTHXrcTg==
X-Received: by 2002:a2e:924d:: with SMTP id v13mr5477780ljg.375.1603051602303; 
 Sun, 18 Oct 2020 13:06:42 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id m19sm2878691lfl.38.2020.10.18.13.06.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Oct 2020 13:06:41 -0700 (PDT)
Received: (nullmailer pid 40529 invoked by uid 1000);
 Sun, 18 Oct 2020 20:12:07 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: r8188eu: inline rtw_init_netdev_name()
Date: Sun, 18 Oct 2020 23:11:33 +0300
Message-Id: <20201018201132.40480-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The rtw_init_netdev_name() is a small function
that is used once and does not encapsulate any logic.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/include/osdep_intf.h | 1 -
 drivers/staging/rtl8188eu/os_dep/os_intfs.c    | 9 ---------
 drivers/staging/rtl8188eu/os_dep/usb_intf.c    | 6 +++++-
 3 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/osdep_intf.h b/drivers/staging/rtl8188eu/include/osdep_intf.h
index 07c32768f649..5ee4ed995025 100644
--- a/drivers/staging/rtl8188eu/include/osdep_intf.h
+++ b/drivers/staging/rtl8188eu/include/osdep_intf.h
@@ -23,7 +23,6 @@ void rtw_cancel_all_timer(struct adapter *padapter);
 
 int rtw_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
 
-int rtw_init_netdev_name(struct net_device *pnetdev, const char *ifname);
 struct net_device *rtw_init_netdev(struct adapter *padapter);
 u16 rtw_recv_select_queue(struct sk_buff *skb);
 
diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index e291df87f620..c80d30f31869 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -292,15 +292,6 @@ static const struct net_device_ops rtw_netdev_ops = {
 	.ndo_do_ioctl = rtw_ioctl,
 };
 
-int rtw_init_netdev_name(struct net_device *pnetdev, const char *ifname)
-{
-	if (dev_alloc_name(pnetdev, ifname) < 0)
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("dev_alloc_name, fail!\n"));
-
-	netif_carrier_off(pnetdev);
-	return 0;
-}
-
 static const struct device_type wlan_type = {
 	.name = "wlan",
 };
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index 99bfc828672c..43ebd11b53fe 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -390,7 +390,11 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 		pr_debug("can't get autopm:\n");
 
 	/*  alloc dev name after read efuse. */
-	rtw_init_netdev_name(pnetdev, padapter->registrypriv.ifname);
+	if (dev_alloc_name(pnetdev, padapter->registrypriv.ifname) < 0)
+		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("dev_alloc_name, fail!\n"));
+
+	netif_carrier_off(pnetdev);
+
 	rtw_macaddr_cfg(padapter->eeprompriv.mac_addr);
 	memcpy(pnetdev->dev_addr, padapter->eeprompriv.mac_addr, ETH_ALEN);
 	pr_debug("MAC Address from pnetdev->dev_addr =  %pM\n",
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
