Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA0E33C3EB
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:16:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A75D06F580;
	Mon, 15 Mar 2021 17:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pm_1ESDBsgSB; Mon, 15 Mar 2021 17:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 001136F56B;
	Mon, 15 Mar 2021 17:16:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D2D81BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D4B641503
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q-qA6hai7-z0 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E6AD40170
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:56 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id si25so11808882ejb.1
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=f5Og/LBxhgIvFa2yEoALoW6p/rY2Dpbh9m+5dBwlL74=;
 b=gXo7OPycYpZTWt76pIzXENoTi8ySSuCgpGhx9YwSdPCL1K5x+zIS7mU6laVsHFFSPi
 MEaiAJMMruIrsBs4+LYBSw1ePxPxwY8dOe7HWXbZ0nzrOb75mG05sjp/MNOICbhLmLAN
 Lph2RbJhkEVZaR4YJzm0v5FLaWpmCZM96h5mfLhFK6NnwT7UsF4Xd/BTEG+Y5IG1QN2E
 I7s8Z+EPmOWrWR3MR6FiAS0JS4bDgH7djlw+lZ48XhMIOPZ9fY8t3um373HAXfqJiq0o
 Q0l7wwJJqQzOlJovsa7GHOiE1/+XbS6tjdXQSxDpvOySpsJAKdS9lb72I4ZWctPdJRlT
 TBCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f5Og/LBxhgIvFa2yEoALoW6p/rY2Dpbh9m+5dBwlL74=;
 b=HT4QhsKPqq+7Avbf0sCEX66NTYRi4/SA+ixjZ05gbinSWC8M9DIRekxVqkeK3y/dws
 JZGUU8zx4jH1QM1Ay14HJudLDSz3jT/+4o+NSaU6aFIpnmXfwqtXsGeEhTf3asK3KJnc
 nC+6pFk96kSySd+LkuVkVa+OXzH+ZJGyEgh0VWjzzf7A9G+rRZa8jTG/32GsEGPUftXg
 5VKMwcTw3iAZ36JTcDUzlF1yk9I7OjmMioBuVHhkBYdwjllL7xbrSD8SZ64syP2nB9/V
 /kV3U9GsqDrGsnPG3g8XIIub9jQVwoANEuyMM0JCteIPOuP+YEkLKVev6F88FPtZcNFn
 qtyA==
X-Gm-Message-State: AOAM531sIdX0EYk2+7yNYfsqQ7WGnCRkAxAUgByl37/zsZ6P3nDo0KzK
 RALTdKd4ithPQEKDC5diRho=
X-Google-Smtp-Source: ABdhPJxjuvrNo2Utx46qTl4hO4ckaSJG81uIDqwziJKgtbGNR35JxWXo0tXrWJ04Hgc5k2/P/bqt2w==
X-Received: by 2002:a17:906:130c:: with SMTP id
 w12mr24699632ejb.253.1615828014939; 
 Mon, 15 Mar 2021 10:06:54 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:54 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 55/57] Staging: rtl8723bs: fix spaces in os_intfs.c
Date: Mon, 15 Mar 2021 18:06:16 +0100
Message-Id: <20210315170618.2566-56-marcocesati@gmail.com>
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
    #208: FILE: ./os_dep/os_intfs.c:208:
    +static void loadparam(struct adapter *padapter, struct net_device * pnetdev)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 4ece23737712..2ccade46efb8 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -205,7 +205,7 @@ int _netdev_open(struct net_device *pnetdev);
 int netdev_open(struct net_device *pnetdev);
 static int netdev_close(struct net_device *pnetdev);
 
-static void loadparam(struct adapter *padapter, struct net_device * pnetdev)
+static void loadparam(struct adapter *padapter, struct net_device *pnetdev)
 {
 	struct registry_priv  *registry_par = &padapter->registrypriv;
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
