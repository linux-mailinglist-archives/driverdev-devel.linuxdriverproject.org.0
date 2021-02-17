Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3990631D590
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 07:53:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA73C6F600
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 06:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hBWIQpamsN_I for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 06:53:51 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 912CA6F5F4; Wed, 17 Feb 2021 06:53:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7491A6F559;
	Wed, 17 Feb 2021 06:53:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6B911BF834
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 06:53:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C390885B3D
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 06:53:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w5hn07kaQFMO for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 06:53:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
 [209.85.210.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7F9C85B25
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 06:53:23 +0000 (UTC)
Received: by mail-pf1-f181.google.com with SMTP id m6so7831862pfk.1
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 22:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=se5FUyCQzSsn7GYKjWN/TuB61TV8alAVKg2rTO/qIOQ=;
 b=eoq0XBv+owlqCY40+UOo/vTlCiZrwb173bhQ0mCH2cOO6HJiA2rDg2tw0kgeYUo37D
 iPcUgcdmigJGHITr9RGWcush5yHJ0u32CjASBqicd3+wXJAuTgZ/Hv6yx46/D5DphWu7
 zeo09aI+T+V8bKC15+2NKkYE/g85J8MD8fauJYuIbEAbLyh7djrZmdw2b0kjvzb/EA5t
 +Gn5Xc6fKSlq1OEwE26G+mvvR/4S/M1TVGWoQSaNMNHhlnnbP84ehRs+D/MxQ1MpbW51
 gQfkDgPiRMd4YVkgtg8yNq5qQRBZDWPzcZtZQqgSwK1sLTyiE18sB/0pdlks/2EU2CsJ
 +wSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=se5FUyCQzSsn7GYKjWN/TuB61TV8alAVKg2rTO/qIOQ=;
 b=nZ++ENVIvvJEXhBWQEbnYnjfoR0oSTafNg+/5xwhsutra1AN6NDz0rFaP+TIdeVVIu
 PBxsGMSqQKphJd1V0qTVY0rPjDCnBWT49TwSMAhI3elkd+zDJ3A0Z39TylLGlB9mOcIW
 QE0+c0wOQmvhvTvyc7jFjslhIcT2tz3CP6LB5Lnh6ucf4yGtgoSmHN8sy+lMZGWcONZC
 K1mf8lzvhBWDKOEkoI3HTrP7nOq/wGwDnV8ba75zjomSqD1CRqTspvgldGqHd7et8oCg
 vrm5iE7wvdJpejgP2M37qjy2U9vkQa4dI/ovZz7EcnSOPXPFL3bMdbRInH9flJHSSXpD
 71sA==
X-Gm-Message-State: AOAM532XfVs2MPTcc0tI2kHwYIyL/YA+c2K7u4oy6WdnwYBu8bYIec5C
 W8habaUokjBeJTusZIpSTQM=
X-Google-Smtp-Source: ABdhPJyGlF0SogcoGEpVNWPFeFGp/lRKtFhk0g+Aadxkk+MXmBubwnnjYJQ+bKdPRL/h1d6oey7HMg==
X-Received: by 2002:a63:4760:: with SMTP id w32mr22594631pgk.378.1613544803458; 
 Tue, 16 Feb 2021 22:53:23 -0800 (PST)
Received: from localhost.localdomain ([116.73.175.128])
 by smtp.gmail.com with ESMTPSA id v1sm1273601pfi.99.2021.02.16.22.53.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 22:53:23 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: matthias.bgg@gmail.com, gregkh@linuxfoundation.org,
 sergio.paracuellos@gmail.com
Subject: [PATCH] Staging: mt7621-pci: pci-mt7621: fixed a blank line coding
 style issue
Date: Wed, 17 Feb 2021 12:23:18 +0530
Message-Id: <20210217065318.6685-1-selvakumar16197@gmail.com>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed an unecessary blank line before closing brace reported by
checkpatch.pl

Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index c3532bc138fb..1781c1dcf5b4 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -521,7 +521,6 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 
 			if (slot == 1 && tmp && !tmp->enabled)
 				phy_power_off(tmp->phy);
-
 		}
 	}
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
