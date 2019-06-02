Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD5F323DF
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 18:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFECD87938;
	Sun,  2 Jun 2019 16:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eKPmXl4Ef3hD; Sun,  2 Jun 2019 16:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AE2E87893;
	Sun,  2 Jun 2019 16:35:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CF071BF5A9
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 16:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7646786410
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 16:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0Wgsx3HN9QK for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 16:35:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A549084EE9
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 16:35:46 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id e16so1441113wrn.1
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 09:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wWcxgEI3gs42SAaAZOA2b9Y+neLUp9KjqdAC8jB7QHQ=;
 b=PmVtSjB7f/TOFWpB+2Q/vdiDC/y/WjxLBWpT23SHz8vsHy/i5nvOC7GCNJoxb7ltxk
 nvX+h1438RNymOktsMGM8nKRWisn8Hhg4+AeXmHnJdEm/BeY+YR2lQFaaU1wtGIKanp3
 EsOfq1KXs+Ut411etBiUeXsat/FA+CqwB28EAiT6IBOMklhGYQWy/gQGtCWWpTusNwlR
 DDgVKHWKi2XGFF5AFA+e3tzI0isoqevl1mDrbad1aozr6xQgl6pP7O0VaCLL5NRi4BDo
 fVeS/DmoOcKvKG78mYSNOLFywWF3cd3YA5KuI9tT7CmpePhO6FYG6TJ470QjEIdJVIfR
 Ldww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wWcxgEI3gs42SAaAZOA2b9Y+neLUp9KjqdAC8jB7QHQ=;
 b=Nxl1hO9KhyTGShDnnoOHGfKM4WxkonoujVKlJV5W+L10MOgoMS15uNnP5kOjTv59vb
 M5K1xPjLtN+HloS1yJ4oZyL7BDHeO+PEPaY4kKaiL1FZA/bt8LmHUxaOyoOXgGKjhB8L
 lSkUGhyL51z3XXXCqrOltEbNQ5fyZWYXVAwbM59FcRgEy5q9nFEHCl8DfdQ0z1r08c7X
 iEj0yEn6Iq+jT9uKw66pTeAFzpJO2nzqG3UxRWYXpQp/wai0nVEnS7xXkhvoMXxEKLdb
 xkHuF0isNqGA2H68pakwFHFnsTsOiFcbQIBiA0mGu6dd3plzhHT+YPH37v1Rc3/06Chx
 u4zQ==
X-Gm-Message-State: APjAAAWs6SaYWZaeZfA8U23bT6PBx4cBYuy/vcVl5o9DP3ZWAdm3Pp+W
 DFTyryYL7QAmaUirdIg4Jt0=
X-Google-Smtp-Source: APXvYqx7op/7MpCSPePSRvMMp9c2IfcUO4+YSiAbeshsCOA5pXZyvI9CiP0SAE2kuxE3SH334Wd2KQ==
X-Received: by 2002:adf:8306:: with SMTP id 6mr13626082wrd.155.1559493345342; 
 Sun, 02 Jun 2019 09:35:45 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id c5sm6639273wma.19.2019.06.02.09.35.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 09:35:44 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: remove unused definitions from
 ieee80211.h
Date: Sun,  2 Jun 2019 18:35:28 +0200
Message-Id: <20190602163528.28495-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190602163528.28495-1-straube.linux@gmail.com>
References: <20190602163528.28495-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MGMT_QUEUE_NUM, ETH_TYPE_LEN and PAYLOAD_TYPE_LEN are defined but
not used in the driver code, so remove them.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/include/ieee80211.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index d43aa4304ca5..42ee4ebe90eb 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -12,11 +12,6 @@
 #include "wifi.h"
 #include <linux/wireless.h>
 
-#define MGMT_QUEUE_NUM 5
-
-#define ETH_TYPE_LEN		2
-#define PAYLOAD_TYPE_LEN	1
-
 #ifdef CONFIG_88EU_AP_MODE
 
 #define RTL_IOCTL_HOSTAPD (SIOCIWFIRSTPRIV + 28)
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
