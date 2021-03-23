Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADD1345ECC
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 14:00:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D416883EDE;
	Tue, 23 Mar 2021 13:00:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7CjoU7PwwV26; Tue, 23 Mar 2021 13:00:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3108B83112;
	Tue, 23 Mar 2021 13:00:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A15531BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E708402D1
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4poX83Ila5fr for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07860402E0
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:32 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id r12so26937511ejr.5
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/yFbNdJ3xMv1sAY5u8eppFWtweKYPab1rduxtHqBonA=;
 b=TTAXQ1upqcvfz5w7L/lHG1Tnfocg5eW7jlvCw3/KNd8o3NEXPhwSXNtI28f8ehLKAt
 aK00Py7MotNsUNpcI/BOD8qcGn8abahgZQlKW1tMefFxe6piK5GGvHXUhuQMM5srJNEp
 3ZGSdEtYUJNST1T+iUXEvl4Ukzxn3Qi+P+9b6dC50ErxLrCsZ98oYy6cCOW4T7ZboDNj
 8v6ly6KQLmdWTq3Z5ZiHb9rtolSyAHU+fTGLZyk+2OEDhIzxBvqmdB5N1Px2J8WqOBne
 7oijz9p3NxZ+DZd9Yz1av0ztp3q6jgnvQUpKKRrYapVaH6xwP5hCl73FfxEDNbpLgntq
 jaTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/yFbNdJ3xMv1sAY5u8eppFWtweKYPab1rduxtHqBonA=;
 b=dmIFfDXoJk3jY2i2dKvidFPkgwdDzlChbu/YKWOeJrXGbRNFVkhnGfrPCgcUXNGpfH
 gn8lP39oIXfAbwIHhy87An86u9Tkd9Sj1NedqmS04JD9K60wxhL+IH1boVooGVrL8Ko4
 NrjAYw5eesWSYqJjiQE+AgViP9TXqm654qzvn1QSYR49AjF6/kdZz1QoXL43j8Vew7Ve
 /KUlWZ8gsGUeM0HF8+Vx8jDhNLBhP/Uvh+FWZBeJC+rFBQpodIOQlAq4E8SB5GrsyCk7
 uaPbET6pZXzZ6o9Hy840GOIwPVMYvWap9W+My7HfCxwGnchvEPQpHeSFf7IuGPwIpbpQ
 xTJQ==
X-Gm-Message-State: AOAM532LjBuYh9GNJ5Hq0pCZvczec5UgnnD9ahZrW5sf0CxLPx3k4XYA
 JTFmhsRFnI7DRVkrpuZLtfM=
X-Google-Smtp-Source: ABdhPJydlwVNNAWGcBxqBthHdZkvec5JhbWFZsToapkS8YFwLwTvlFZX210E2rlS9F9YKQdfVgOPPA==
X-Received: by 2002:a17:906:da0e:: with SMTP id
 fi14mr4972101ejb.188.1616504311327; 
 Tue, 23 Mar 2021 05:58:31 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id p27sm10774390eja.79.2021.03.23.05.58.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:31 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 9/9] staging: rtl8723bs: remove blank line os_dep/os_intfs.c
Date: Tue, 23 Mar 2021 13:56:36 +0100
Message-Id: <ae5671883e9a869aced3eece40b587c51e15d520.1616503354.git.fabioaiuto83@gmail.com>
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

remove blank line

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index c6c5cc0a9e08..405aa95af579 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1027,7 +1027,6 @@ void rtw_ips_dev_unload(struct adapter *padapter)
 		rtw_hal_deinit(padapter);
 }
 
-
 static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
 {
 	int status = -1;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
