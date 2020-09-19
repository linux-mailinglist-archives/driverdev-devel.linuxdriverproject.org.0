Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42277270EC8
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 17:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F27220464;
	Sat, 19 Sep 2020 15:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K7H0jByO-tXO; Sat, 19 Sep 2020 15:12:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F0CE6203C7;
	Sat, 19 Sep 2020 15:12:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 401031BF4D7
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 38D2E20104
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ecn9wK6S-3MG for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 15:12:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 2CA1F1FEF0
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 15:12:32 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id q5so10077378qkc.2
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 08:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J6fVk3SkoqSjFVNo3hENg6/712uFKZxhyKcdpxBqMVg=;
 b=UqSvKAAQu5RpAxviVL3nmvQ/ulxxBKpXk+q63/hmKnOygBvUOyYjwmQm72dNbGzfYJ
 e7qmlHI7uSCF9CX3Z7roQS7j0vsMXxFL/2J/MCU0csgwkebyfBdf3pkVSmPlveo3XSiX
 CFtwNGrX1IBh9lFjulYlAU8llMFlWvJl8fiF4p2pDh30EYXorD1jt82nF91Jy6S9S8NC
 24TIOa8rOll1Vpn0u73Z2d+UMVmMc2p38MScaUcpiDXGuEHNV/zwnVSAC4gIOUuIQzP8
 hPWltISsbkObN3WFZb9hjJzILL8fJirRhCsnxcb1LeVwSMFiebTVU+4eq1d4V89r3mKJ
 9YEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J6fVk3SkoqSjFVNo3hENg6/712uFKZxhyKcdpxBqMVg=;
 b=SkJVS74JF9GHEjAzK9TuxiyvuMuKRzsePEkcEUIdRnlYMPNe1M5XJhhjTdtvTACtdw
 tzTe2uoMzKESEKX5Ts3SFkRC1k4wd3FtP5a8jm25lEtmSuMEfMcY39+VJI1E0Pb04mlm
 isQgZoVE/bx8zYnLcFro6HFrnZhpZpZlezpACBXaEMrj7Ii7Cdc0dWz6t4IEqfR9ch9U
 xaStvAlM84hTF3CuZiCAXuaIhXgBOkDgeoUA/VPeuVyjFlpKesMwTLE9QnkZa9SHORCP
 QkNewMATbOYJH5JeJjDPjj5SjEtNQiVaMywg6o0/dQ7RPsSQ/FjfVhAGkNTFgBZKdJbZ
 d3iA==
X-Gm-Message-State: AOAM533ObxDhPbmvcLz3Hmm554aY/eBPkWhSzInMXoXNcPoSAuH/koPT
 okrz58XvPyEgni5dGXfpgio=
X-Google-Smtp-Source: ABdhPJyCmTd+6VfyvcKSUT28I0xs3stDbMgHJo0xDoVwtuItwYr96eoITq3QNzDGSccIQ58BtSkVcA==
X-Received: by 2002:a05:620a:716:: with SMTP id
 22mr37673774qkc.356.1600528351111; 
 Sat, 19 Sep 2020 08:12:31 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-092-073-054-206.092.073.pools.vodafone-ip.de. [92.73.54.206])
 by smtp.gmail.com with ESMTPSA id z3sm4513222qkj.0.2020.09.19.08.12.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Sep 2020 08:12:30 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8192u: correct placement of else if
Date: Sat, 19 Sep 2020 17:08:22 +0200
Message-Id: <20200919150823.16923-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200919150823.16923-1-straube.linux@gmail.com>
References: <20200919150823.16923-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move 'else if' to the same line as the closing brace of the
corresponding 'if' to follow kernel coding style.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_wx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 4ac0baf8be83..1d1685d2e908 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -561,9 +561,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
 				zero_addr[key_idx],
 				0,                      /* DefaultKey */
 				hwkey);                 /* KeyContent */
-		}
-
-		else if (wrqu->encoding.length == 0xd) {
+		} else if (wrqu->encoding.length == 0xd) {
 			ieee->pairwise_key_type = KEY_TYPE_WEP104;
 			EnableHWSecurityConfig8192(dev);
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
