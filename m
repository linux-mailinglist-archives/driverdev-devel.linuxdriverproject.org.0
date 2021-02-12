Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCE7319A80
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 08:35:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5ABBD6F5B5
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 07:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E6RtJNy_UcAN for <lists+driverdev-devel@lfdr.de>;
	Fri, 12 Feb 2021 07:35:05 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 156886F613; Fri, 12 Feb 2021 07:35:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78EF56F485;
	Fri, 12 Feb 2021 07:34:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A29CE1BF33F
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 07:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9BAB78693C
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 07:34:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zpTw8_nFRK5B for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 07:34:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E4CD786A01
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 07:34:36 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id d24so11799538lfs.8
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 23:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y3hGEJAC31/KRNjy0ROs+LaCPxDmfXe9m8Xp8ZPqihs=;
 b=KY8CWmmvhmEQaatRl10NIsd/xWZpEElri4vTuBbzGR3jOEQYF5/lnqnMpFi9JJYTdA
 FHGHbUjv14vmZWRk+Mhg2jOqINdacPBYl7f9X4jItK/hzKj6pE/PynwWW3bGtPMQOF3M
 SJ2jBwnmHztFCww+zZ/B6f/aQOiJxdPNxxnDEPTMsOOhkBpMraQ1na9wnxhVpLiane0q
 pigV+v/6P7L4/ubMyIcSN2wAPmxl7JUxsIvJrLhPP09nYdtQWwMUIt+s+r5kPu7CdaAo
 GJMpGzQH/BDU1C+NAerp58gxeFROcy7Muq2M0PDWft8tEmsjdIq6aVTRUYk1KH0Bvsq1
 PXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y3hGEJAC31/KRNjy0ROs+LaCPxDmfXe9m8Xp8ZPqihs=;
 b=gwQsqtEPEt6K8ShVMYFb/XskbUuoWvnmkALvlWu3V+RrwYl4AkeKaQYf+HCseYWRyT
 VLU3zhplw5565dszV5OT4Ht/WpZOatLExz8+cVGXtxZSPNYXKLyXnXY6ak8Y1ywnx3Gm
 UuUsJQsvTIaeDJKlCBRCdT71J/hE9J/ZbePrjgPF06nM0wqLMbmaUF8nPRbXu0UZ7eBb
 Nsot6U5HH75LjEGhisOdQ54tMutLOzbILU/D728y3VPqYzMF9QwIB/nl2vX4bP4wNhzP
 zNnHRJ5yyl/FRVOJBRGIohUy3GOwirXHMbPxxXfoLwnbmG4RlK37fKGLCGb+DvdWroD5
 q0hg==
X-Gm-Message-State: AOAM531rtNBngMfWhaWQA+99mn4EoYlcEMz2+EugTtlUl3A/DnQFXPaH
 5sQ0amV4QTzyNaS2kBiOuSI=
X-Google-Smtp-Source: ABdhPJzv5Dw2UavQKAtYF4gkGVlRUlW06E5X49hx6/reBkqFu+Q+yooaflQj2bSHIkYwhLI98r1wcg==
X-Received: by 2002:a05:6512:505:: with SMTP id o5mr900612lfb.90.1613115274959; 
 Thu, 11 Feb 2021 23:34:34 -0800 (PST)
Received: from TRWS9215.usr.ingenico.loc ([213.143.229.14])
 by smtp.gmail.com with ESMTPSA id z11sm883311lfd.98.2021.02.11.23.34.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 23:34:34 -0800 (PST)
From: Fatih Yildirim <yildirim.fatih@gmail.com>
To: marvin24@gmx.de,
	gregkh@linuxfoundation.org
Subject: [PATCH -next] staging: nvec: minor coding style fix
Date: Fri, 12 Feb 2021 10:34:23 +0300
Message-Id: <20210212073423.20562-1-yildirim.fatih@gmail.com>
X-Mailer: git-send-email 2.20.1
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
 Fatih Yildirim <yildirim.fatih@gmail.com>, linux-tegra@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix for the below coding style warning.
Warning: Move const after static - use 'static const int'

Signed-off-by: Fatih Yildirim <yildirim.fatih@gmail.com>
---
 drivers/staging/nvec/nvec_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec_power.c b/drivers/staging/nvec/nvec_power.c
index 0e861c4bfcbf..b1ef196e1cfe 100644
--- a/drivers/staging/nvec/nvec_power.c
+++ b/drivers/staging/nvec/nvec_power.c
@@ -338,7 +338,7 @@ static const struct power_supply_desc nvec_psy_desc = {
 };
 
 static int counter;
-static int const bat_iter[] = {
+static const int bat_iter[] = {
 	SLOT_STATUS, VOLTAGE, CURRENT, CAPACITY_REMAINING,
 #ifdef EC_FULL_DIAG
 	AVERAGE_CURRENT, TEMPERATURE, TIME_REMAINING,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
