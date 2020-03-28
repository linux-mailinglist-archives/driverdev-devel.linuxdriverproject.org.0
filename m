Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536F9196751
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 17:31:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB41588B29;
	Sat, 28 Mar 2020 16:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8NqbPgCT0EiB; Sat, 28 Mar 2020 16:31:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59D6888A95;
	Sat, 28 Mar 2020 16:31:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2033F1BF2C9
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1CAF886AEB
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r82CGHp7uent for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 16:31:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB75B86AE8
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 16:31:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585413066; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=jmahVfXXiKrAgLaTYjDkKdnexrQaJNzWaKYmMpUsaw7M/+e1zl+NqFX46b9mwqxWe53G7+BR72Q93k6G2K6kIaGw5gXzIjedBrL39LySO/9Gb4dYgHMPa1Yx1uZFJpLh4mtre4RoLGgrvvrBbBzaPsbxjHg4D4tFNxvoX1CtjM8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585413066;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=XjIv4xlxQZ6wCF5IGABghzHdi4GY3K4HquTmkmKpzbs=; 
 b=CrqmyGrhn3yhY171+stkO2fHMWmi13E1gKJ4NgiiGn6WeTkVE9iLMNQU2GM2rR+HGlRV+YFqXTsdnqzIN5tyt+iqKXV2QpuTZ+kOSRAFo4raW1umkLje3g94YIag4wQ2ez+fZGAK6n0auoUT3I+x+jw1CGeFO0qbBAMLA9MosOs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585413066; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=XjIv4xlxQZ6wCF5IGABghzHdi4GY3K4HquTmkmKpzbs=;
 b=FUBKUtbIewxEqNCCocK1Fyfa+HYZA9rLJPlG0XXP6l7NE5qFXV3I5/kwHZeYop6r
 9eWLvfSQSB9rymGVqet58oECqc16TymNv4IQQjhnJ+qMjRqfb/fgn7nLNk3eWn/krwx
 5Oze+OowoBkVdQUgPX3LGoxbCUpBckWn6nc6Of9k=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585413064074384.74081461290166;
 Sat, 28 Mar 2020 09:31:04 -0700 (PDT)
From: aimannajjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <6a4d94b4e5446f4665dc11290ed1351661554f01.1585353747.git.aiman.najjar@hurranet.com>
Subject: [PATCH v2 1/5] staging: rtl8712: fix checkpatch long-line warning
Date: Fri, 27 Mar 2020 20:08:07 -0400
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585353747.git.aiman.najjar@hurranet.com>
References: <20200327080429.GB1627562@kroah.com>
 <cover.1585353747.git.aiman.najjar@hurranet.com>
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
Cc: devel@driverdev.osuosl.org, aimannajjar <aiman.najjar@hurranet.com>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes these two long-line checkpatch warnings
in rtl871x_xmit.c:

WARNING: line over 80 characters
\#74: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:74:
+       * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,

WARNING: line over 80 characters
\#79: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:79:
+               kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);

Signed-off-by: aimannajjar <aiman.najjar@hurranet.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index f0b85338b567..628e4bad1547 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -71,12 +71,13 @@ int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	_init_queue(&pxmitpriv->apsd_queue);
 	_init_queue(&pxmitpriv->free_xmit_queue);
 	/*
-	 * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
+	 * Please allocate memory with sz = (struct xmit_frame) * NR_XMITFRAME,
 	 * and initialize free_xmit_frame below.
 	 * Please also apply  free_txobj to link_up all the xmit_frames...
 	 */
 	pxmitpriv->pallocated_frame_buf =
-		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);
+		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4,
+			GFP_ATOMIC);
 	if (!pxmitpriv->pallocated_frame_buf) {
 		pxmitpriv->pxmit_frame_buf = NULL;
 		return -ENOMEM;
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
