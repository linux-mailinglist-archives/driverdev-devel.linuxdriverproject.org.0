Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3744344759
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:33:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 480D7402B9;
	Mon, 22 Mar 2021 14:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tEvOzjGUxbTt; Mon, 22 Mar 2021 14:33:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DD1F40288;
	Mon, 22 Mar 2021 14:33:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C52B61BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C17E940288
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n2hFB7krwNGW for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86A2A4026B
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:34 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id a7so21636785ejs.3
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L10f41YFPSYuLZ2Qn/bqjPBEJJpbB3QUZrKXGhgQjLM=;
 b=SsH5PpjaNiAR5wZ3sW4D3h0vSMAIljyr4ysm68wvsC74YowdUhSMbM3b9l+F0HvmBc
 7HqaBPFNF/khVg/luG3nn4rxKj8tkTwy7frZw/qAnWO8jcxz9oZSEScuWGZGYREn4bqI
 ZW5M28IQ6jygp14eBvbIQOt2d4U5sEg8XJuA+H0qqvtu/+t1ETuzqAaSk+oph4NAnxS8
 mZGjE7CUwVYyRlzjEjRdZooxA0A6duEQsvbDTZs4LZCB4hLUXtB99QTf4f1tm0+Jx/c0
 kqxfu+w0Hk08OqjB+8iIty9iYAJdkksC+tdGwtm4Hzm3cxD9Ki0/NM1W44CBRG1r9uyK
 0LJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L10f41YFPSYuLZ2Qn/bqjPBEJJpbB3QUZrKXGhgQjLM=;
 b=shEr9HoHjR97RkuFzlWnBrbwgc4lh6OA5reMMhm/XI1TYa1C7XPZA/qYAqlyrRjtLu
 cOCN3TufDdy5MxXIMHb0rmncpYyNStF/n7kVQXyO//DNO9PKmnXY3rRM5Vpr3+VI5A5Y
 XHWhvw2B/+25edPfqnvGhrckBA02b4Xpl+y+SsnVTgJqU/5IMauV/rBVLzxHUlc3jKFY
 mySdMBB0aOZoG+KVuKeG3fT4KKYby1XDSRFmVRaSAw1wKQKqSPBDp70MnEshkMs9v9C6
 poG4GbvxvA/xVUdqpsl3trGKDYd5tEtRvt3dftgh15OczFc9qwbIUp2iub2CBpiNd3Jn
 X42g==
X-Gm-Message-State: AOAM530SaDDS4EYz+FyD8upEIKY8+dfmVOqZ5tn0ex1W0cNdxYx4A5+H
 4q9phtuKHXJ2Ry+OZj7eauQ=
X-Google-Smtp-Source: ABdhPJwLX9eIrea6pppO4av3ofC1dO2zQ7JoOEF9bqD+/3Kzuv7hlpqINE1FQI2rGzomfOxXzTHmmQ==
X-Received: by 2002:a17:906:d94:: with SMTP id
 m20mr19171558eji.511.1616423552688; 
 Mon, 22 Mar 2021 07:32:32 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id bx2sm11728567edb.80.2021.03.22.07.32.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:32 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/11] staging: rtl8723bs: move function prototypes out of
 os_dep/int_fs.c
Date: Mon, 22 Mar 2021 15:31:47 +0100
Message-Id: <9e1a40b86fb716d89bb12e5e3dfbe567a21fda6c.1616422773.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616422773.git.fabioaiuto83@gmail.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
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

moved function prototypes in include/osdep_intf.h

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/osdep_intf.h | 3 +++
 drivers/staging/rtl8723bs/os_dep/os_intfs.c    | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_intf.h b/drivers/staging/rtl8723bs/include/osdep_intf.h
index 5ad85416c598..dc279ceb1469 100644
--- a/drivers/staging/rtl8723bs/include/osdep_intf.h
+++ b/drivers/staging/rtl8723bs/include/osdep_intf.h
@@ -69,4 +69,7 @@ void rtw_ndev_destructor(struct net_device *ndev);
 int rtw_suspend_common(struct adapter *padapter);
 int rtw_resume_common(struct adapter *padapter);
 
+int _netdev_open(struct net_device *pnetdev);
+int netdev_open(struct net_device *pnetdev);
+
 #endif	/* _OSDEP_INTF_H_ */
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 9ae7d46fb501..3713c62a477c 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -193,8 +193,6 @@ MODULE_PARM_DESC(rtw_tx_pwr_lmt_enable, "0:Disable, 1:Enable, 2: Depend on efuse
 module_param(rtw_tx_pwr_by_rate, int, 0644);
 MODULE_PARM_DESC(rtw_tx_pwr_by_rate, "0:Disable, 1:Enable, 2: Depend on efuse");
 
-int _netdev_open(struct net_device *pnetdev);
-int netdev_open(struct net_device *pnetdev);
 static int netdev_close(struct net_device *pnetdev);
 
 static void loadparam(struct adapter *padapter, struct net_device *pnetdev)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
