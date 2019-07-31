Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C817E7CBD3
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:22:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F401184EEB;
	Wed, 31 Jul 2019 18:22:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id spIW7McZDqWr; Wed, 31 Jul 2019 18:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF18D849FA;
	Wed, 31 Jul 2019 18:22:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DF8F1BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A70887118
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7yXDX2o4mwXK for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:22:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0D1FF87113
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:22:39 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p184so32327751pfp.7
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=42JWHwYF6z9j3TvaHmVrJBlG7DPxjQN9Be0ZUa3qbmg=;
 b=R2F2EXpUAMh7XS98+4i+ms4XMAGWEvWnEmnfc/YngAEPMUHJ1W1UxHEgJjfmreodRa
 ROi1q98tUEzE/WqSKH17NAd+Vtk5RABmT2JgucXCC7oVhBFqGovVeH/FIbKcsTbtssBM
 ZEGm1XX3rO78/RwGGZ2sUtHfGzy4o0GvcxNKbrNU3qlnWmEiRjEOhNNgwR2VcNr1KkZD
 VEKIqM9pq3PsQDjdRUasKfL/I8xvGI7I0RsFsggpWeFhWOQC2v86obyQ0IINBIaMVRCg
 NyDfE0wA0Pm6sLaijcTkRTFC9+dlYv9urtBcC3FKXBvI0DpTKpDiooAwBQfij4YiB6zw
 cIKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=42JWHwYF6z9j3TvaHmVrJBlG7DPxjQN9Be0ZUa3qbmg=;
 b=g3P4rn0Uxs/2GVluaXh8eXrTFHqfffyyU8VOSyBun0vY1u6wNUw/NMNRAjc4s18naz
 IqtSqBRAThSHu1x9ZzEEMQZuhfz0/KH41RlS/Zmh8aEgAWzJMqaNDTodEamz99DyWRz2
 C90SctGLW5pJeouQoLZ165Zu0NpZnAJwSPMb69Wl4mDslCzKwvTiwIO7RfcI3q4pLjzf
 yowjpeX1JsxJzfIT7MmKzdLt5dB4VwTHg60Tp5Zq/zlC2EX+1jjdrAwEFkhYnsX8npaF
 jgOSWrN1UrR7jQWaG6L4xxmxvTkUFVjzRwv+8QPo3t+g3HP44jtCfTZlFs33blZVleEq
 yZsA==
X-Gm-Message-State: APjAAAVQ3GPIL/XdUqEwmACJKPoFPl2Cer4CZpj9391oISMX0ycMHHx3
 TvrIAN+MTQFpUvlmpXcdQzIrYAYA
X-Google-Smtp-Source: APXvYqx1ecLNRIsJBPPbf0M4/qluK0H6x8/0Y5NtcjCLCADGkSQ82Io8Ra/zGXzZ1j9nUZkchKX9og==
X-Received: by 2002:a65:5188:: with SMTP id h8mr4221297pgq.294.1564597358645; 
 Wed, 31 Jul 2019 11:22:38 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id r2sm87175611pfl.67.2019.07.31.11.22.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:22:38 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:52:32 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Kimberly Brown <kimbrownkd@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [Patch v2 08/10] staging: rtl8723bs: core: Remove unneeded extern
 WFD_OUI
Message-ID: <20190731182232.GA9713@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

Remove unneeded extern variable "extern unsigned char WFD_OUI"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2 - Add patch number

 drivers/staging/rtl8723bs/core/rtw_ap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 7bd5c61..2bb20762 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -13,7 +13,6 @@ extern unsigned char RTW_WPA_OUI[];
 extern unsigned char WMM_OUI[];
 extern unsigned char WPS_OUI[];
 extern unsigned char P2P_OUI[];
-extern unsigned char WFD_OUI[];
 
 void init_mlme_ap_info(struct adapter *padapter)
 {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
