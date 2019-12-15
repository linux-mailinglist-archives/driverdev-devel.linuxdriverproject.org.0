Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B9911FA5C
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:12:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA03B204BA;
	Sun, 15 Dec 2019 18:12:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nShVwThoYcQI; Sun, 15 Dec 2019 18:12:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B43582046C;
	Sun, 15 Dec 2019 18:12:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 455CD1BF59D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4265A848D5
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AR2NGZ7UvcPq for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:12:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mta-p7.oit.umn.edu (mta-p7.oit.umn.edu [134.84.196.207])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9BBDA84870
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:12:52 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
 by mta-p7.oit.umn.edu (Postfix) with ESMTP id 47bXZD14lPz9vYkt
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:12:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p7.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p7.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M27Ti6ulBqQ3 for <devel@driverdev.osuosl.org>;
 Sun, 15 Dec 2019 12:12:52 -0600 (CST)
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com
 [209.85.219.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p7.oit.umn.edu (Postfix) with ESMTPS id 47bXZD04Nxz9vYkn
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 12:12:51 -0600 (CST)
Received: by mail-yb1-f199.google.com with SMTP id l8so2325144ybm.22
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 10:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1Sd4wDOGySgNuBq62kvgRKaS2P+yDRGvZWncnO1u3k=;
 b=T9aEdQlgrUMr5PCmALh0xtrBogCzg6SwS+LSaCSNmY8AlNcgSeTaopntfe/joFepcP
 apFVkpz0ZNerL8JIjA7AfaAeuyud5z4lZj827ATCowSOXbA9dXiQW0UUD+L0w1rJ0/y5
 LB2wvkflqacATyhGAauiN1U0WMN87XKsd3H4PmoZ0GXNtg7u0jnjTrgOWIMlnWh5/611
 uIju8sfKfv4fhkKbREabtNRv7619hxv6gnu5gKTg28n9vzx/gK0FuLiPpdj38ITIKyXK
 sfyyMshdltskk4aehjxoOhnT6+vkmTiqMH7Z/QInbzAlRL0U6SHRx5rMtwiFavgXWCwq
 nhiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1Sd4wDOGySgNuBq62kvgRKaS2P+yDRGvZWncnO1u3k=;
 b=NB3bScfi8UOuhuUVyvmQGwpRVNn8zi0P7nzUkdl+zlLi0ZZEHxIMFOLAQoPOohv5q6
 uEBkY7xPhkPuSMsWBsgilWQvhUH+Y9yxvxDP96VWoRKafDgrVntZAxuaaMOEsaiRQPIu
 24RiQsqYCh0PxpCfqe06HlCrUC16xly+p9PGQS9oCQg3uu4pcziVSZG3cozz3btaFzYz
 Vy/TVIOgF1HQUtmBkcg/G5TmPjYGEPBOGytYHyzrb+183hd1WJom+GoSmsuPKkwqAgU8
 haPrlTtT3nwwsaFurdtD6o7S7wH5NB02EGgnCI/WfWZCOh9Xj1BjuzOciIEUzezcx2QT
 CUwg==
X-Gm-Message-State: APjAAAWsw1rrdIAWLv+nzSY15NvHlNWyhvEyJ48Gb/pWyE/IovaQnXBh
 maOzw706zTzEgiNP6NOU95aADBj/3p/j5G2WGjAhTOqk9L3O7da7KcLJ9m+oR5eJKI2yk/jKBJ8
 HIxWgLQE37Xdn8lTfb9AIFTLFzg==
X-Received: by 2002:a25:31c6:: with SMTP id
 x189mr17347163ybx.514.1576433571478; 
 Sun, 15 Dec 2019 10:12:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqzytpruw2bkHNQvDI6R+irVXH3fLtBBzdcopu87zda/RMDMvWwtbYjdW7j3Uw14zMRE0Jq9Lg==
X-Received: by 2002:a25:31c6:: with SMTP id
 x189mr17347150ybx.514.1576433571249; 
 Sun, 15 Dec 2019 10:12:51 -0800 (PST)
Received: from cs-u-syssec1.dtc.umn.edu (cs-u-syssec1.cs.umn.edu.
 [128.101.106.66])
 by smtp.gmail.com with ESMTPSA id u130sm2260529ywc.10.2019.12.15.10.12.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 10:12:50 -0800 (PST)
From: Aditya Pakki <pakki001@umn.edu>
To: pakki001@umn.edu
Subject: [PATCH] staging: kpc2000: replace assertion with recovery code
Date: Sun, 15 Dec 2019 12:12:37 -0600
Message-Id: <20191215181243.31519-1-pakki001@umn.edu>
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
Cc: devel@driverdev.osuosl.org, Vandana BN <bnvandana@gmail.com>,
 Harsh Jain <harshjain32@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In kpc_dma_transfer, if either priv or ldev is NULL, crashing the
process is excessive and is not needed. Instead of asserting, by
passing the error upstream, the error can be handled.

Signed-off-by: Aditya Pakki <pakki001@umn.edu>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index cb52bd9a6d2f..1c4633267cc1 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -49,9 +49,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	u64 dma_addr;
 	u64 user_ctl;
 
-	BUG_ON(priv == NULL);
+	if (!priv)
+		return -EINVAL;
 	ldev = priv->ldev;
-	BUG_ON(ldev == NULL);
+	if (!ldev)
+		return -EINVAL;
 
 	acd = kzalloc(sizeof(*acd), GFP_KERNEL);
 	if (!acd) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
