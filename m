Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FA1196754
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 17:31:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 019B720479;
	Sat, 28 Mar 2020 16:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QG4gHBc3IQLI; Sat, 28 Mar 2020 16:31:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4FA8C20406;
	Sat, 28 Mar 2020 16:31:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E67E71BF2C9
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E29B20406
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 16:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 475yjaOoksQf for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 16:31:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by silver.osuosl.org (Postfix) with ESMTPS id B41852048D
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 16:31:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585413070; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=WibfFDlX9nNQavD9Vuze/fsJ6LfffxjGVsCGCYjcAZnESnGnzbKcgTt/pca8rr/juDlkQVBkfTKETXhhML0FAnAX0/YOswPs/BoLngbJ86SszFcLW/95EY23MM+oQpA1TKhjXSwEhYYhK5fjmGdSHyGOxkB3QAJGoBHCzSiXuws=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585413070;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=lv58KTHttKhkSKHvO90o6T1u6Q/s85Jk79hT6tors5g=; 
 b=MkLXwWvLe1aWnvj/YxE8QRv949vtk2vtVXa2R7Ad5LtQ8uWDMrdv1Mi7KIWDZlmZ5pmmMklvs1P4bF3x/aP5hxZyehVWcGh3fBgFZa2pQEHLufr5hf1NZ6ZyXQCoOz/UYxhuZz/75Qn6ZnZAZr4zaGjhhNirtU41sY0oD5Sx2m0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585413070; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=lv58KTHttKhkSKHvO90o6T1u6Q/s85Jk79hT6tors5g=;
 b=gmw8p687FaxOkKwaP8OBJRJApMU23CeCvp3gyZMzeP8cSJ3182z+eP/tC9UZ3tBd
 6EIdM1oJX/NMTk5mJNQB6QdxkS0acvL+ko/Q/A7/qw8AAIvJxJV0cL5cxIz6HoggGWW
 wxHxO76pDDzUAvHUg2Sz7/OzXMztr+SE6PlMeXtg=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585413067764270.18101230636637;
 Sat, 28 Mar 2020 09:31:07 -0700 (PDT)
From: aimannajjar <aiman.najjar@hurranet.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <afcc551421d4642f2d5585dba1d87ee76bf63ab0.1585353747.git.aiman.najjar@hurranet.com>
Subject: [PATCH v2 2/5] staging: rtl8712: fix long-line checkpatch warning
Date: Fri, 27 Mar 2020 20:08:08 -0400
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

This patch fixes the following warning in rtl871x_xmit.c:

WARNING: line over 80 characters
130: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:130:
+		pxmitbuf->pallocated_buf = kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ,

Signed-off-by: aimannajjar <aiman.najjar@hurranet.com>
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
