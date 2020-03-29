Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2086196F89
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 20:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5AFA288222;
	Sun, 29 Mar 2020 18:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AUfXA3tvfI6a; Sun, 29 Mar 2020 18:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AEC6C88196;
	Sun, 29 Mar 2020 18:58:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B37A1BF337
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3829D85F60
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 18:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIUOgP5uiGKU for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 18:58:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C6BAC85F5F
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 18:58:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585508330; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=NVZaM/NPBjclc4eqzftERihHB0SIYGpyCry619907Y7skG3ved2cUPuJauhR0X82It1VLQlQhvLAlY0V7Lsoajp9cqjPEYpRENOcuPlI+uGvE9nBkbVwZOYuCtUgD6JIZtl+s2+sQHGImf4RnckT1CIo5PqBSxLonFSU10eBswM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585508330;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=ezUEMqPpc9ilQcbK7oMGYWwoxxfkJK9+laWJNyAlIRw=; 
 b=DAcn9HgwgML7z6XB7pR/ElUAcG/gkrxhvz5WIflw+G2Q9muEWtEW/APKW+rSmR/wASlkIuOEktBsqg/NhdmEoEcnSd/1jKpt9XhViU43ZuBfCTv/ZlMOO8KegVVcT6oGdlhvCuoFNAL0bJIpaDDoz7qMAbERW6CMv7SBRh9wPSU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585508330; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=ezUEMqPpc9ilQcbK7oMGYWwoxxfkJK9+laWJNyAlIRw=;
 b=Cpbj+3Fb/a8CaisD7juq//K4DCUZJCmL0rE8p1r3XD8g/MMH7RVfjUtSJ0I+Zc2/
 bl+a30SXIQ/ntvsy5o5uQmtAzO5pfyoTE2Awj+arp+QqvBQA4SjuWd1c/MdsdUlZyTK
 GHWhOgNkRm+Cwe28YDLhrJup3gSLDuUMJfxru6Bc=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585508328742635.2117972556791;
 Sun, 29 Mar 2020 11:58:48 -0700 (PDT)
From: Aiman Najjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <acd523d0d24cc81fae9eb933a066d87815587cee.1585508171.git.aiman.najjar@hurranet.com>
Subject: [PATCH v3 1/5] staging: rtl8712: fix checkpatch long-line warning
Date: Sun, 29 Mar 2020 14:57:43 -0400
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

This patch fixes these two long-line checkpatch warnings
in rtl871x_xmit.c:

WARNING: line over 80 characters
\#74: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:74:
+       * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,

WARNING: line over 80 characters
\#79: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:79:
+               kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);

Signed-off-by: Aiman Najjar <aiman.najjar@hurranet.com>
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
