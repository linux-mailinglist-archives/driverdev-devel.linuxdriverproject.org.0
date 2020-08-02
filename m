Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7662356EA
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 14:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 66AF120486;
	Sun,  2 Aug 2020 12:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YthDwx0jFqsP; Sun,  2 Aug 2020 12:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B43F20475;
	Sun,  2 Aug 2020 12:39:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D73E1BF40A
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 12:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 976A187657
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 12:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBHoHi6CvUnv for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 12:38:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A274F8763C
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 12:38:56 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id v12so6536175ljc.10
 for <devel@driverdev.osuosl.org>; Sun, 02 Aug 2020 05:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZCwWa3wQ3B+vXB4XSBZx3GgzsfnhFIgec6eabtnva60=;
 b=LVdzxtUoUF6+yj43Wlmd1FTPM/kgDqw+0k16uHMMAXBGOItWntqoTikqgFHp3YxkTH
 i6bNHxoQgwnMl5vsBvz2DvNGVmI21NPIQnPBShmK9Z+6QpMO25i2vCiQaUDo7kgZyIIL
 gXQwC7GUh9PvbQErBY0V9jB7A7qrtDwICz9QbCkxwWTHvBLFbgf4mGdLRQ3B1p5KHMxx
 Cd/UVh+WOsVhsSnGP5u2f1p/lCQDD3M3/rKknNqttJnB0C82Q2kpJ2ZC1ry6Iym3s67q
 T7TBBTn4BIIQkyLp8/PAemM2AjtEk+0xnMIl7rM097Ik0fSzL3HYcc1AhSItyidw3ttU
 WFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZCwWa3wQ3B+vXB4XSBZx3GgzsfnhFIgec6eabtnva60=;
 b=BfzBCWiUH8pvbX6aPFo6O7idLUoHHCP+WFSPqx6GGr6scQqmAOdsmd84SUi9TxY2eJ
 RjUwa6bjdWKtJECMXO8+VvxlXzN+zM8dt+q8I1Im9XgxSGa9HMP1mGBB1CZBlaA1Wa6X
 BlmK/e/Kad6TjxUau3qDSv2t88PkHh+57yn1L1MRoYCamEoWwPm/yQhdQ69RU4/rgZLD
 NlMQZDbgAgQlm6xFYQz6ixxWSUwMm/37yIon89quATGitw/L4LXMDCqNPY/7PkLp8Bxd
 5BYMjkMimbwYsea0eKFNAdCi36wdnE9DWqvVxpb6iabB+C6+cG/TURACkWXL9qhjklfz
 MPbA==
X-Gm-Message-State: AOAM530L+vdO4GnrDIAMg5SeyKvU3DHWd/9oJ3+Jvv+KUjjcOHEAaIlT
 FfjEed6YgLonrKW0h67kwyg=
X-Google-Smtp-Source: ABdhPJx2WBmNwFisxAyj7HhSDW4AQnMsIPmYk0FBFS6x1YlKsfZ0iBIzC/dVbkWKNVh1oBLl7nzfng==
X-Received: by 2002:a2e:999a:: with SMTP id w26mr5333203lji.371.1596371934831; 
 Sun, 02 Aug 2020 05:38:54 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id z25sm3107028lji.33.2020.08.02.05.38.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Aug 2020 05:38:54 -0700 (PDT)
Received: (nullmailer pid 101483 invoked by uid 1000);
 Sun, 02 Aug 2020 12:43:38 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Hans de Goede <hdegoede@redhat.com>, Lukasz Szczesny <luk@wybcz.pl>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: replace rtw_netdev_priv define with
 inline function
Date: Sun,  2 Aug 2020 15:42:50 +0300
Message-Id: <20200802124249.101341-1-insafonov@gmail.com>
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
Cc: Ivan Safonov <insafonov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The function guarantees type checking of arguments and return value.

Result of rtw_netdev_priv macro can be assigned to pointer
with incompatible type without warning. The function allow compiler
to perform this check.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_service_linux.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_service_linux.h b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
index 1710fa3eeb71..4a5bdb93e75d 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service_linux.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
@@ -129,8 +129,6 @@ static inline void rtw_netif_stop_queue(struct net_device *pnetdev)
 
 #define rtw_signal_process(pid, sig) kill_pid(find_vpid((pid)), (sig), 1)
 
-#define rtw_netdev_priv(netdev) (((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv)
-
 #define NDEV_FMT "%s"
 #define NDEV_ARG(ndev) ndev->name
 #define ADPT_FMT "%s"
@@ -144,6 +142,12 @@ struct rtw_netdev_priv_indicator {
 	void *priv;
 	u32 sizeof_priv;
 };
+
+static inline struct adapter *rtw_netdev_priv(struct net_device *netdev)
+{
+	return ((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv;
+}
+
 struct net_device *rtw_alloc_etherdev_with_old_priv(int sizeof_priv, void *old_priv);
 extern struct net_device * rtw_alloc_etherdev(int sizeof_priv);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
