Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFEF2353E7
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 19:57:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D81CB8839C;
	Sat,  1 Aug 2020 17:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tB-SpTcbMgR4; Sat,  1 Aug 2020 17:57:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B24288330;
	Sat,  1 Aug 2020 17:57:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6054C1BF5B5
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 17:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 57E05203DD
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 17:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ppRsytQg6NGH for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 17:57:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 398CB20335
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 17:57:43 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id v12so5265546ljc.10
 for <devel@driverdev.osuosl.org>; Sat, 01 Aug 2020 10:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MVROroz657/I/Ih2063QqkFa0hHlRqGYHGpAlZxIDIU=;
 b=PKiWM1z0wSCVv5xEm41YfLhadbzphe6Czf6TvIm1dVHi8am+D8SmoENHmOuFvTb6Ks
 2/3JCblBdYCIrzLfhImazWRAG8BMXLnhSJUF9aXJb7Uzn/1veAyCoSG260mRuGfuP4dW
 mhT9NozcmAB6SZ8zU0OGUpXbQF8ZTIRwhyMJ0d2gm8/CXx6+itzzUXF0xOcPv0XsloYs
 eRBxIFJmMADC49RR06UN0eBrG4wwgI3Q3NdGc5wRc8o1xiaFI/nKO7RhcdKXMu7trk7O
 FVN9qIXybwH3eD4I0u5JxxXy5cTirMGObNMBPG6Kudw64AtfBqipU53KTAzmW+lG6ckY
 Hp9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MVROroz657/I/Ih2063QqkFa0hHlRqGYHGpAlZxIDIU=;
 b=gVw9zSBVc6+uYk3rf1oO5pqGEs5cIN5EqeSNhdnuL05xFs7wyJi1SeV9k4mdLgkmIA
 sKMCCp5fL1nUnao8c/YIAYtD1bXinl6TSpn2scqP1eJLpfYeOkgGcLyw2TywRD0wal5c
 J4T1/VM7pVQU1W0+qSDTFnCuzeTnWnRzadfeR5ipCofedoDR+3OeYNcZyEpvky3ojN8z
 EPYkMXB0PHv+Pv4z4IIAu8fTfqir/xHL5ygkK+7igLRbRqybGuXpsHmsfz8H9agMfdNR
 ZNcnGQKgGRPXff1gbtiuIaJhYum2FHok2dThmUimmqck6mCGU1/o5ZbgLzbAvSsXGqBq
 xnng==
X-Gm-Message-State: AOAM533aeACgiiPA/1fIrVVoqJKlj8H744c/ZgbxPHalM1SFsTQYlkpC
 lASOEHlvN1rQnh1+x5wdEpA=
X-Google-Smtp-Source: ABdhPJzEQqKL7E5Po5xXjYbD3pkXhwpZpVFJAQc1NLxWnKtXEi969IU4Unxd6/EEZyeXAAXvYQnZVg==
X-Received: by 2002:a2e:b008:: with SMTP id y8mr3759143ljk.421.1596304661274; 
 Sat, 01 Aug 2020 10:57:41 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id d6sm2480920ljc.23.2020.08.01.10.57.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Aug 2020 10:57:40 -0700 (PDT)
Received: (nullmailer pid 34162 invoked by uid 1000);
 Sat, 01 Aug 2020 18:02:52 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v3] staging: r8188eu: replace rtw_netdev_priv define with
 inline function
Date: Sat,  1 Aug 2020 21:02:35 +0300
Message-Id: <20200801180235.34116-1-insafonov@gmail.com>
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
 B K Karthik <bkkarthik@pesu.pes.edu>, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>
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
Changes in v2:
  - add blank line after function definition;
  - improve commit message.

Changes in v3:
  - use proper argument name;
  - remove unnecessary parentheses.
---
 drivers/staging/rtl8188eu/include/osdep_service.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index 31d897f1d21f..b44d602e954a 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -71,8 +71,11 @@ struct rtw_netdev_priv_indicator {
 };
 struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv);
 
-#define rtw_netdev_priv(netdev)					\
-	(((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv)
+static inline struct adapter *rtw_netdev_priv(struct net_device *netdev)
+{
+	return ((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv;
+}
+
 void rtw_free_netdev(struct net_device *netdev);
 
 #define FUNC_NDEV_FMT "%s(%s)"
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
