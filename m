Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B49556F60
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 19:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01D1087D7F;
	Wed, 26 Jun 2019 17:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fptxP28XAKud; Wed, 26 Jun 2019 17:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8283D87C09;
	Wed, 26 Jun 2019 17:13:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B08D1BF326
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 17:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0CB25860C8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 17:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m-spt48Wh-Wg for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 17:13:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 39211860C6
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 17:13:43 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i189so1678683pfg.10
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 10:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=CsaoBvUbxc4mMIWtj7F1FJyHfEKhGjA3BcDoeeu3Mi0=;
 b=KAkMWvinYM3WCFHMk5qD8sTYuPiJ3/ha66J2WkO+zyCEeGVcyyAaWZD+rTZsiZGU6W
 EPjWJzzObfouO3IGkNT3FeUOfWqU1H+1sWaFZvTx6Pqtfi9rQ9MD/sk/8wnPeGhLr2LS
 u7zyOVNZkIgfVbPMK4K1LtS54PXSYzMpflGC5tU1uBK8a8y5vfNra/yCMeCDSBIPHwFE
 31S2zy2gXEwJ4CDdANZ/pSK//T2CG2KyUA/MUdp55o4txqCWwzAvPOUPShqLvUR3xeuu
 r0iusCKOBhzgPn/h78UI96oVwout/9MtuQ3xKmQOjtLSdqqPIo+kpQfsDSrqVbsnjhjB
 VIUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=CsaoBvUbxc4mMIWtj7F1FJyHfEKhGjA3BcDoeeu3Mi0=;
 b=hxfGSWkAPdfgf4hkbXpbv5drKFvmrZmTqCX8H/unBv75XkjQKLcmeQo/jisbNZ9U5U
 VCTzf3vEYw09Q2Jau+wNg1Kagl6BtUueTzrY52/xqF6p2kPCTNfHy1a1tSVCqO9akT/D
 5k6ubFGHw2CnWQtZi6Zp2A1cDjZcCmjlRp28rt3/wWrdWgF78GiaE3hURHM7+ocJcwun
 4QH/ISmzONyrrKgePdxhWDARq4s1Lf+wPVQee8/z6ZpBGM1IfQH/KlSWhGkQt/hSCWld
 7CVhl2bTz2CisgY7noz9cR9yNXTtzSEPgXco+6g5AagvCSIMoxjvqDA83F/MxHDnmGWU
 ycFQ==
X-Gm-Message-State: APjAAAVifJ84Av7zndT135Lx06ej8WPsq9POHIYodOvbPkShS87ZKEk1
 jiR3Mn9lpozNfXxsBDPOuYI=
X-Google-Smtp-Source: APXvYqxBT+vxW7Vr9Ioed3EaYFrEGIu6rhm47wEvrFmZ1H9U8/Ee9r2s2rKeZ8U+uY1J56ij5tPRkg==
X-Received: by 2002:a63:f817:: with SMTP id n23mr3997244pgh.35.1561569222723; 
 Wed, 26 Jun 2019 10:13:42 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id 85sm24709590pfv.130.2019.06.26.10.13.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 10:13:41 -0700 (PDT)
Date: Wed, 26 Jun 2019 22:43:37 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: rtl8723b_cmd: remove set but unused
 variable
Message-ID: <20190626171337.GA6080@hari-Inspiron-1545>
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

Remove set but unsed variable pHalData in rtl8723b_set_FwRsvdPagePkt
function

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 48efbfd..1bd5f5f 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1434,7 +1434,6 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	struct adapter *padapter, bool bDLFinished
 )
 {
-	struct hal_com_data *pHalData;
 	struct xmit_frame *pcmdframe;
 	struct pkt_attrib *pattrib;
 	struct xmit_priv *pxmitpriv;
@@ -1464,7 +1463,6 @@ static void rtl8723b_set_FwRsvdPagePkt(
 
 	/* DBG_871X("%s---->\n", __func__); */
 
-	pHalData = GET_HAL_DATA(padapter);
 	pxmitpriv = &padapter->xmitpriv;
 	pmlmeext = &padapter->mlmeextpriv;
 	pmlmeinfo = &pmlmeext->mlmext_info;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
