Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 416F9196F8C
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 20:59:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F3A785F93;
	Sun, 29 Mar 2020 18:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VWWORhFTrSvZ; Sun, 29 Mar 2020 18:59:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E84C885F5F;
	Sun, 29 Mar 2020 18:59:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D6671BF286
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 972628818D
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OwRRMKjhXAvE for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 18:59:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC99A881AB
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 18:59:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585508334; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=OKw2hYItWU74WbmklwaUZt6BdkfUczGcsdaJ0f3Ip/0IcXaCxd12OQVArl2FLx5BpbaYKYDTsssM7sK4gt3GdP8niECjYLmBm8/z+yT6zJynN9lmITfFrtm8ZwWtV0VGUXQNFgP0UQTK/azEBrf2A7O8mX/gvKY28sIwfdxIuMI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585508334;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=e0DPm9Cyl0FybcTHdAlqkPRGupFmjUIIExQ1uX3Lc1E=; 
 b=koqt4+xURk8PRLatRxHwH8TwUzl87hg6zmgOXTC52AUUM3uoZ4nDAegWiVTAjgPBK7XemOQjg99YOSoC5GbR8BpinUCGi4KHaIYmClmz0Z/kYHDVwPWGgKFsYt7Wnnm1qjQM1hHrLS6vgb9XsIvuLm3rbSuP4PyLogTNS26paOc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585508334; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=e0DPm9Cyl0FybcTHdAlqkPRGupFmjUIIExQ1uX3Lc1E=;
 b=OzdpZ2fgkGz5PYHTvgNWySnG81pHvP9VPS7uon1DytHZaJk/q+Dq9v+xAYW8uZP4
 Bt179QMSbSZGsOBiMeVO+G7d24cpAWQCxSvnoHNNzaRYKYRzpMoC12vq+2FL+kx2JX6
 w5tkVnXEHwwPRWNF2k7HSgnaLqiTsS5Mx8AvRMiI=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 15855083319161007.5900282440623;
 Sun, 29 Mar 2020 11:58:51 -0700 (PDT)
From: Aiman Najjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <de477e0d8f352c1d6cd75d64d84ac6f9017db254.1585508171.git.aiman.najjar@hurranet.com>
Subject: [PATCH v3 2/5] staging: rtl8712: fix long-line checkpatch warning
Date: Sun, 29 Mar 2020 14:57:44 -0400
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585508171.git.aiman.najjar@hurranet.com>
References: <cover.1585508171.git.aiman.najjar@hurranet.com>
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: Joe Perches <joe@perches.com>, Aiman Najjar <aiman.najjar@hurranet.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following warning in rtl871x_xmit.c:

WARNING: line over 80 characters
130: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:130:
+		pxmitbuf->pallocated_buf = kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ,

Signed-off-by: Aiman Najjar <aiman.najjar@hurranet.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 628e4bad1547..454c26f83406 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -127,8 +127,8 @@ int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
 	for (i = 0; i < NR_XMITBUFF; i++) {
 		INIT_LIST_HEAD(&pxmitbuf->list);
-		pxmitbuf->pallocated_buf = kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ,
-						   GFP_ATOMIC);
+		pxmitbuf->pallocated_buf =
+			kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ, GFP_ATOMIC);
 		if (!pxmitbuf->pallocated_buf)
 			return -ENOMEM;
 		pxmitbuf->pbuf = pxmitbuf->pallocated_buf + XMITBUF_ALIGN_SZ -
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
