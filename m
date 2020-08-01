Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1D3235188
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 11:42:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C06478703F;
	Sat,  1 Aug 2020 09:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UMlEmuO80H4M; Sat,  1 Aug 2020 09:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9914F85773;
	Sat,  1 Aug 2020 09:42:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 828901BF834
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 09:42:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F0BB8886F
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 09:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wzG5QuwxqRiK for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 09:42:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 073D188866
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 09:42:28 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id v12so4501951ljc.10
 for <devel@driverdev.osuosl.org>; Sat, 01 Aug 2020 02:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Geux1n7ky2eH1Y8p9KzQaNhv3N4zS3YhRr+vtlh2v1k=;
 b=RyBKbaORrd7Ioae/J9LKl0aWf3Te5dKlH704lW5I7OPuFRkCis2LsMYTYPnuieKnPN
 YktxMvwrjlpTrgj0Uaz+QDKbcYuxuMEzwKbTzt0iTUk5YbKKbMm7o+2vXYS8ItpF1vFm
 F0chhUDF1xN4ua+hXhf/oTYN0rn75z1h1Fr4xHBGSc7gI6SPw4ffIL21eGEkZ/+ac9q2
 dzTFH8HvjiscMxOR2s1rGPnqlE3csaLJ0dWuY4yaJcoCFm4OSDT9wXkjkZRIq1Yca81W
 neJo0bsS+WH7/6yD6bCi5wxlQQ6W/W0xvOlY5N6Gv6djAPqH4qkojjHyFkYDH9Lz6Djm
 3KIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Geux1n7ky2eH1Y8p9KzQaNhv3N4zS3YhRr+vtlh2v1k=;
 b=uhboujAHKF1M3ydQE9APCPWtZSPBqXxKacUpoZuYGQiFgrtxe10sWOAHFIBOGivcnV
 Nopb1mbrFCfQke19Ai26gNZlwyUtY2KafO7yjuzuaceBs86bvWFnujx2NzZwH+FMXoG9
 MHO+TpIkebWgvV2RSQJYgWCKBSy8b5Ej9w1ef2UDQuve2WuD7BkzL07EJwxwoUoQ3VZl
 2zl5hRAVMFnorLGCaPEOk4p/3uBFYZUsYfC/mlSlfuNUCiffvI77itqhzOoh9X81dSuV
 WlHqEjr36EJE2kgpLMsxI4RLUFIxRrV+TVXj2xmkB9MF5KzycCr6LgVtzLGuczUC2C+J
 nnpA==
X-Gm-Message-State: AOAM533hLFBGZ2RocKcy1IY1g/sHzHlL+FYZlKavShFud8eHx+tqdDEx
 2Q80zzF+TnYLBmXiI2i1D7U=
X-Google-Smtp-Source: ABdhPJwdS0XFEcLSlBLi6ME2sayBQ4pLwGM9u5UnUzt5guHcN/wvVR4+5Rm/hBZ2SyTNlBX2lOBclA==
X-Received: by 2002:a2e:320c:: with SMTP id y12mr3485354ljy.399.1596274945927; 
 Sat, 01 Aug 2020 02:42:25 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id q29sm2573932lfb.94.2020.08.01.02.42.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Aug 2020 02:42:25 -0700 (PDT)
Received: (nullmailer pid 13495 invoked by uid 1000);
 Sat, 01 Aug 2020 09:47:20 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: r8188eu: replace rtw_netdev_priv define with inline
 function
Date: Sat,  1 Aug 2020 12:47:07 +0300
Message-Id: <20200801094707.13449-1-insafonov@gmail.com>
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
 B K Karthik <bkkarthik@pesu.pes.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The function guarantees type checking of arguments and return value.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/include/osdep_service.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index 31d897f1d21f..e0ccafdea9cd 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -71,8 +71,10 @@ struct rtw_netdev_priv_indicator {
 };
 struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv);
 
-#define rtw_netdev_priv(netdev)					\
-	(((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv)
+static inline struct adapter *rtw_netdev_priv(struct net_device *dev)
+{
+	return (((struct rtw_netdev_priv_indicator *)netdev_priv(dev))->priv);
+}
 void rtw_free_netdev(struct net_device *netdev);
 
 #define FUNC_NDEV_FMT "%s(%s)"
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
