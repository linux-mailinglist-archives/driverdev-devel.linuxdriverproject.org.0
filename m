Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F129A7CBDA
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB0808496B;
	Wed, 31 Jul 2019 18:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uVk8qj3xSEAz; Wed, 31 Jul 2019 18:24:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C63CD84AE1;
	Wed, 31 Jul 2019 18:24:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CA3E1BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 882E481B82
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NeJGCFjIF8fZ for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D049E81B78
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:24:06 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id s1so26160632pgr.2
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=LMprJ1umUnvu1dTPiCF12+IEy2mbH3QvbE/6RTXXxRo=;
 b=tyb32Or3VmREdlP9nkj0OyFFjS3LBsRt3zMvjFavg+65HKxCSVSUX11NDfj9UdNawF
 uJucIx3kBcwVjXfBMquMuh8KX5sGLWuiSzbLb4LalwNSazcPBIToTHKC9kmYw77n3+k2
 vQHaOL33IeMXPDSdi8d3uAzbbpb1ubyu+ea665xYHd790jDaIlfNkU5K7YAZWVSHojyw
 ikHYozd4OIUoxJX5ACxmRhI9b+XLvilnCY0eH8wE6Jg7wp/oyEmyRSWtAimSgViMTsKx
 hqGGSP4wiz/fWHacE6h5txA+aBGJjcu79nfWS2ywvAaU1uUhfGornX4HPZhvPVkGuuY+
 RCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=LMprJ1umUnvu1dTPiCF12+IEy2mbH3QvbE/6RTXXxRo=;
 b=o1Q+/SL74VXJqoMzuTqjC6GzRxgswegt4dqebr1X0HTe02bYfrlimZBSGFbhaQXWUq
 5hfy4GFDDm5Rt0DES79p36mnHADu+vy2LjB4O84sBoeQBUHCy8mPsNAS53QhIfcCylOI
 bNdU68wnLimgtObjIwG12aoTKdWWy5+FO4QLe3IEpRNmKwKvuwNgI2wDFVH8cFvNnx00
 KdGPz2jX+TiINl8jC5YI2mJAlhOMlffObKr1GyyFlrZto+hs35bYv7npJgFXrm9lzJWZ
 wfvNH2Hl3O3FC9P4NcW9Fmfvt9zsg8A0+2yA7xj+kYmv5ExgB+Imkq/OA1bHrPpCplio
 DwQA==
X-Gm-Message-State: APjAAAWYkDncn2xQkZ9zQGuFT1esGMqOQkDcYk1D088/CJ+1GGX+x8XN
 CFjM2QfLV/3zmFkpsYhLlUE=
X-Google-Smtp-Source: APXvYqzhzw2BA7flXoBf5Mp5rPLsLG16tG/QklwIadDX0PbQT9u1Cq4Ak1UsMdb6apJ3lcoK9x+HWA==
X-Received: by 2002:a62:7990:: with SMTP id
 u138mr46840329pfc.191.1564597446519; 
 Wed, 31 Jul 2019 11:24:06 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id u23sm71863700pfn.140.2019.07.31.11.24.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:24:06 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:54:00 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Colin Ian King <colin.king@canonical.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Jeeeun Evans <jeeeunevans@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Aditya Pakki <pakki001@umn.edu>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Subject: [Patch v2 09/10] staging: rtl8723bs: core: Remove unneeded variables
 sgi_20m,sgi_40m and sgi_80m
Message-ID: <20190731182400.GA9792@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

htpriv.sgi_* variables are of type u8 ,instead of storing them in local
variables ,its better to read value directly from structure.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2 - Add patch number

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index b5dcb78..0690d5e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -346,21 +346,18 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 
 u8 query_ra_short_GI(struct sta_info *psta)
 {
-	u8 sgi = false, sgi_20m = false, sgi_40m = false, sgi_80m = false;
-
-	sgi_20m = psta->htpriv.sgi_20m;
-	sgi_40m = psta->htpriv.sgi_40m;
+	u8 sgi = false;
 
 	switch (psta->bw_mode) {
 	case CHANNEL_WIDTH_80:
-		sgi = sgi_80m;
+		sgi = false;
 		break;
 	case CHANNEL_WIDTH_40:
-		sgi = sgi_40m;
+		sgi = psta->htpriv.sgi_40m;
 		break;
 	case CHANNEL_WIDTH_20:
 	default:
-		sgi = sgi_20m;
+		sgi = psta->htpriv.sgi_20m;
 		break;
 	}
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
