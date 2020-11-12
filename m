Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094A32B062E
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 14:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CA02877A2;
	Thu, 12 Nov 2020 13:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8l6MCxGxnNiO; Thu, 12 Nov 2020 13:20:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 097EF8774E;
	Thu, 12 Nov 2020 13:20:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3D31BF3ED
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3778E87786
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KPmLYnUKEc9I for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 13:20:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 238888774E
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 13:20:10 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id o15so5971221wru.6
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 05:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LII9MNgt9pv1krh9xVWqsqClr9UQVbocm2wzkwzWn8k=;
 b=y26/CrKRMckJBmsrPXZ57maQyGpG/r7AzJk8ZEg9fz7LcpbCmzBKSDcHI2Sg66PzQj
 uRmSVTWXX4lTIbA07TkRB/9QxaFl1Cv0MypR3nOXQTFCuEI6CDa+3LuyomDu8RNTfVkC
 kIRmmqwZBoADKBXDiBJdComCFtEW01ZVKh/A6bjcUc6kV3Y9Y+UzmQWvR5I7kEcI7O+f
 FOKD5uia49j3F+Oqj7O8g2vSW3pw3D1otIrV6NzSbNLJqbGX1EOaD6SUlMufZSq4DDar
 LyoPTe0usXqm50eHkHNF6+IYv8XSBemL8m1xZKwJRO8oi6joWMZEV/ss4ArBdENaXN/1
 GWBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LII9MNgt9pv1krh9xVWqsqClr9UQVbocm2wzkwzWn8k=;
 b=cuCUPeXPDXnNlbjMcctV88Dm7nhpyjvdWs5V4D7wTXOhV1w4p+GDHGHUWwYVuNrDyR
 2B3s7kCmFSIStT76TgRBD0yn0WkICnWTe2WGmmNEPrFuUZ4fAidjuXA27HJMwUGQDEBM
 SpJntkUCux+6/+OW/qqB1DbQWwkMsRR1PjZM0DN1LmBnsRHyjGEAeIfXD1ZwNpOH69PN
 hRdZTJU/QpTQCrOfklD4mWdX0nZPvq3n7Fo1W5/zbbcXikWg4MHuogat7gQU1KijSRzg
 tp9sUT5/mAT/2Xn4z//RKTQ4VfCKZHYO0r2NAWi6Dz+RPwQ8QjsaXdt5v//T1fxnlSa8
 b7vQ==
X-Gm-Message-State: AOAM531+dSWed3SyQlWQ71tMF2rpiTntCyo0mZr9BgZfTz2961Sij6YK
 P6uwrioK9OJfTo6dYjvRxMcjfQ==
X-Google-Smtp-Source: ABdhPJzHfYnKQzvyLB/MD8YUCmrJjSC0CX5kUEpgJNSnqQu6q+cJK6cgvJfEWBAO7tRBswcwJfhpdA==
X-Received: by 2002:adf:dc0f:: with SMTP id t15mr8729158wri.29.1605187208708; 
 Thu, 12 Nov 2020 05:20:08 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id t136sm2806326wmt.18.2020.11.12.05.20.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:20:07 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/6] staging: net: wimax: i2400m: netdev: Demote
 non-conformant function header
Date: Thu, 12 Nov 2020 13:19:57 +0000
Message-Id: <20201112131959.2213841-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112131959.2213841-1-lee.jones@linaro.org>
References: <20201112131959.2213841-1-lee.jones@linaro.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>, linux-wimax@intel.com,
 Yanir Lubetkin <yanirx.lubetkin@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes the following W=1 kernel build warning(s):

 drivers/net/wimax/i2400m/netdev.c:583: warning: Function parameter or member 'net_dev' not described in 'i2400m_netdev_setup'

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
Cc: linux-wimax@intel.com
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Yanir Lubetkin <yanirx.lubetkin@intel.com>
Cc: netdev@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/staging/wimax/i2400m/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/netdev.c b/drivers/staging/wimax/i2400m/netdev.c
index a7fcbceb6e6be..8339d600e77b5 100644
--- a/drivers/staging/wimax/i2400m/netdev.c
+++ b/drivers/staging/wimax/i2400m/netdev.c
@@ -574,7 +574,7 @@ static const struct ethtool_ops i2400m_ethtool_ops = {
 	.get_link = ethtool_op_get_link,
 };
 
-/**
+/*
  * i2400m_netdev_setup - Setup setup @net_dev's i2400m private data
  *
  * Called by alloc_netdev()
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
