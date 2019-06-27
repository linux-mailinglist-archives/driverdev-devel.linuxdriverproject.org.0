Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D94588E1
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 19:42:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC7BB22246;
	Thu, 27 Jun 2019 17:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J1AlZKqVU4PR; Thu, 27 Jun 2019 17:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 942932221C;
	Thu, 27 Jun 2019 17:42:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AEFF1BF3F9
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 17:42:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66D0087FFF
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 17:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BB1wNFcbTBVE for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 17:42:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1204488002
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 17:42:29 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c14so1691376plo.0
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 10:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Kp4iDZgoItQSuXm+UYx3os3MRNcj7Hprz4VyxWNkTks=;
 b=dZsxusE9+/V+r1ZJwK0LgfWe5snVirwKO7sLCaI+btbDC58sFqi2fJzLJunylRln1V
 FTQwSyX7xFWpOdCy6BykN8AzNiGcjJJXvit1vNJaV4ozeX+VxP2Dr5vN0/DxdpfFPNXg
 7RmpXLWHzS5esi2a1xCHDIFe05LZ/rX+VksFM7JvkQwOqbwwN4QVU+oi8WuDMTZBVRbx
 z+Ok1HpJyOegsf/l+/AQZ2RFBKxLMzJOQO1Hg7m2yypfxYKlKCuTU9iMTdfL2K+/2yeK
 hY4nGvOoG5uHZwgb+IYwWRDVb7V1yjHIvVppPf+tYUNbYp29Y+y0I6WHnhthUCQOYvLq
 KQWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Kp4iDZgoItQSuXm+UYx3os3MRNcj7Hprz4VyxWNkTks=;
 b=galm+tzoE8NoBSY7+VHlOX0Z3C4/fg2f6d9/c1u5unjY9y1JOZhg2OwHew4ios+mwF
 k8aXicaWe2mw/XSiPkrXpMtcglPotf+oi/C7/ioAWXKNj2RkMRS+HkylvMWaEZIHjvTp
 +y2kUqQNrH6rWqoK396bVN0YCfHHrcZqKXzrDx/rRhSOv4ztd7o+cuS04+tOQ0J3cSRD
 k1JdP8GxdgIR99PJP8X5GEQ8sl0cizmZ/t8UHw/BoZCJfAkhcq7CCzqOZ9IDKTXXZsEe
 JQenOI5W532HG8qato68DdPXFeBijgcpkEZlPZKRflulw8bgrslI4vusQB/FHofTdTGn
 5LuQ==
X-Gm-Message-State: APjAAAW74t2qMVhm5N+6oze8b5mswyKN2Z7YRF4VfMAex/AWeORCugTd
 HUm2rdYHRdPSZPsKd1sq66I=
X-Google-Smtp-Source: APXvYqwTsq0jFBSQJqHgX90OSkCYA2IUp8QIZmtStEdGpluVmULNUikp8RDrNT98JfPvW5rznbZPWg==
X-Received: by 2002:a17:902:f81:: with SMTP id 1mr5931859plz.191.1561657348772; 
 Thu, 27 Jun 2019 10:42:28 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id f64sm3557445pfa.115.2019.06.27.10.42.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:42:28 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 51/87] rtl8188eu: os_dep: replace rtw_malloc and memset with
 rtw_zmalloc
Date: Fri, 28 Jun 2019 01:42:21 +0800
Message-Id: <20190627174223.4670-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Fuqian Huang <huangfq.daxian@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

rtw_malloc + memset(0) -> rtw_zmalloc

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
index 9db11b16cb93..250acb01d1a9 100644
--- a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
@@ -98,10 +98,9 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	if (authmode == _WPA_IE_ID_) {
 		RT_TRACE(_module_mlme_osdep_c_, _drv_info_,
 			 ("rtw_report_sec_ie, authmode=%d\n", authmode));
-		buff = rtw_malloc(IW_CUSTOM_MAX);
+		buff = rtw_zmalloc(IW_CUSTOM_MAX);
 		if (!buff)
 			return;
-		memset(buff, 0, IW_CUSTOM_MAX);
 		p = buff;
 		p += sprintf(p, "ASSOCINFO(ReqIEs =");
 		len = sec_ie[1] + 2;
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
