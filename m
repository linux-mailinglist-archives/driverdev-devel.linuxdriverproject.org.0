Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C37E27DDC3
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Sep 2020 03:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2858B871AD;
	Wed, 30 Sep 2020 01:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 96yDBJV1zkRX; Wed, 30 Sep 2020 01:27:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 967B686FBB;
	Wed, 30 Sep 2020 01:27:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A84E1BF48D
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 01:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 56DAF860CF
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 01:27:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8rk5ob-pstKS for <devel@linuxdriverproject.org>;
 Wed, 30 Sep 2020 01:27:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B2B02860C5
 for <devel@driverdev.osuosl.org>; Wed, 30 Sep 2020 01:27:48 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id db4so109618qvb.4
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 18:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=5gnISX+IzAorXHcCo+89A+UyYx9cHW9TLkVvhrX+eKY=;
 b=tEEBIv+qbex8aRCj3XUftJLJmIgNEDArOgjk0UThudv2pDpM4/OxQSJHKtduuUu37F
 B4iJ40o2L5so+Ebb8Br5uyCDKTRfhwOA/5B7q/FRvrTda5dyHIa4B+luYBZLCMpv3R1S
 70TgWA6L2ZWP/CF/Jmhe9BfYKiSHJl333c2lEKqTb9Ap2Ij3+Hc1E+T08iVA7wpPW6Ud
 I2uijLazYW1Gd1EvHAZazR0xBdA0vuVKq9xaHrRDSbbCts9s+fuEZAp/X+2+tDnZ++FI
 WIsuNrGCNeVI7s1DAueICI1zxTznzkOzWklCg543FJ+o7AuZcNl5ZD1OctfH9wl3ZMYN
 2y7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=5gnISX+IzAorXHcCo+89A+UyYx9cHW9TLkVvhrX+eKY=;
 b=lNSp3ebfdRg7MIMUZIkVGYGkOlQk2PBdPC9gal/60sCTkidKGmMvD1NwCzoPJaY22D
 d8f4SHd5tUqM0oBcQcMz7juNexFNavlgUsqQrrKty5h5/j929T2Og970aVUN9JLzFtOI
 vyd5FUjaXkl7Buo7eRTzQkDdwA3b88tqmT4b95XyJpt364IRjDi+F5ZTbgwLsgmxmNKy
 DYj8cM6iwr5H1E+/fGwMYvhq25BmQuvykabrgmuyHhcSLjIdjzeq2gV959o9Jg4IIiHx
 JSoRHJoN2hwBgr56iKLq9A0VDeYH5HnEadyl3ZXTC4dBElRzG0Y604oew8fKLmH+kJS0
 zJKA==
X-Gm-Message-State: AOAM530UUJHHSUkhc/63qnXYSpbZCMvc+0pm3lbQ8dlPZVaNP5yJ4f/3
 BmoC/lhw1DQN5vfbyccLcMA=
X-Google-Smtp-Source: ABdhPJx5iSB+x25WErWz1VdSvy6nwLd46V+4VlwnHAj+ThkVa5O0hdCpWJUEjfI/bsP9qZ6TEhAlhA==
X-Received: by 2002:a0c:d443:: with SMTP id r3mr207532qvh.17.1601429267746;
 Tue, 29 Sep 2020 18:27:47 -0700 (PDT)
Received: from core.localdomain (pool-71-175-101-131.phlapa.fios.verizon.net.
 [71.175.101.131])
 by smtp.gmail.com with ESMTPSA id c40sm380220qtb.72.2020.09.29.18.27.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Sep 2020 18:27:47 -0700 (PDT)
Date: Tue, 29 Sep 2020 21:32:21 -0400
From: Matthew Hanzelik <mrhanzelik@gmail.com>
To: marvin24@gmx.de, gregkh@linuxfoundation.org
Subject: [PATCH] Staging: nvec: Remove duplicate word in comment.
Message-ID: <20200930013210.br2env7wjvul6tcd@core.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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

Gemoved a duplicate word in a comment within nvec.c.

Signed-off-by: Matthew Hanzelik <mrhanzelik@gmail.com>
---
 drivers/staging/nvec/nvec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 360ec0407740..a80996b2f5ce 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -289,7 +289,7 @@ EXPORT_SYMBOL(nvec_write_async);
  * interrupt handlers.
  *
  * Returns: 0 on success, a negative error code on failure.
- * The response message is returned in @msg. Shall be freed with
+ * The response message is returned in @msg. Shall be freed
  * with nvec_msg_free() once no longer used.
  *
  */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
