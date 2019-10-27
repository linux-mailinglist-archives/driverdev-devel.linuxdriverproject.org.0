Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B5DE628D
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Oct 2019 14:06:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E01186111;
	Sun, 27 Oct 2019 13:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sjx1xtICLLSN; Sun, 27 Oct 2019 13:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E77EB85055;
	Sun, 27 Oct 2019 13:06:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 558B11BF3E9
 for <devel@linuxdriverproject.org>; Sun, 27 Oct 2019 13:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 52D5784D41
 for <devel@linuxdriverproject.org>; Sun, 27 Oct 2019 13:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CLoo479U7YIA for <devel@linuxdriverproject.org>;
 Sun, 27 Oct 2019 13:06:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0B55784589
 for <devel@driverdev.osuosl.org>; Sun, 27 Oct 2019 13:06:33 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id n7so6682409wmc.3
 for <devel@driverdev.osuosl.org>; Sun, 27 Oct 2019 06:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vIE8XssdDi2D15V3zAvt/eEC5atPcZygXFN0pGgPoW4=;
 b=V5YCU6c0YaFSoVOLXUeBlkIVfmyzbRFjBosz5ee1KljrPAJdbemc22aK5+m4yPuZaP
 /X3an58nkOAXwMnio0/QFSumtp2VUYdRrlrvKxLeVuph9xHjzRHQADDrs9LOkygWW/Tl
 HTa2QFTDt2VIY7N1ARzhvTHIpdMnZGU1csZHyx8fyTNlnNHb26kaz2g0QK9fS5xMwLG/
 +r98BfbFdkzPZabFOY1DBS+t7MGfF5EHWWCGz8ozhyeu1SfJ+gyi3wALVbAlsUUXCoQv
 iP8XnA7D86lqSZZQbLnwkiIe+m2fP0gjuCbKyqv3hZ+w534PO1b/jcWN4FZnmhWupjew
 G1XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vIE8XssdDi2D15V3zAvt/eEC5atPcZygXFN0pGgPoW4=;
 b=HoHha1VQopglSrbNyNpuoWvBDE0p47OLkIL+QDJWttdA+L8pqr5Y5zNRgMUeSjzi2l
 kt16E3ElheGEMRajAP/nqtLmWwRSqiVZTxc4A6vqq02Z5orBiWh6HHaSds+NuKfdyBeD
 0zq/ughsrS+fX+IvgJCVMRdVs9ovXnK8sxviU+9GQdOyb+v3IoJ8l/qJTRHoWih6Ghp9
 qjzxBHLprzqHDYTOMI+bDHdl38lZs+RXNKPl2k2g4yOROqk0y41UxX0DDaii6P2E80gF
 YNP2pFGo9ofu6SKmPeE74DALbe+n5u+yCXNxAa5qbtl6XZrGstT3xK96wILzO5j9r1DP
 YFuQ==
X-Gm-Message-State: APjAAAWhBUpjb6B0/ttcgwCutUdANCDPb33SuOndcwN3HnvDpo0RuyEi
 oI6fiUasY4mTvR7WrhbZV/w=
X-Google-Smtp-Source: APXvYqw+rHqY8MyVMbrLRoK37aBhL4DbeoQPEB1GMR6L+lvLYeiKYBgu9qGh6zLgM08gBVDn4C+N5w==
X-Received: by 2002:a05:600c:228b:: with SMTP id
 11mr11770998wmf.112.1572181591661; 
 Sun, 27 Oct 2019 06:06:31 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id 126sm8127371wma.48.2019.10.27.06.06.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 06:06:31 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: rtl8188eu: remove return variable from
 rtw_init_bcmc_stainfo
Date: Sun, 27 Oct 2019 14:06:03 +0100
Message-Id: <20191027130604.68379-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191027130604.68379-1-straube.linux@gmail.com>
References: <20191027130604.68379-1-straube.linux@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove variable res, that is used to store the return value, from
rtw_init_bcmc_stainfo. Instead return _FAIL or _SUCCESS directly
and remove the now unneeded exit label.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 6c03068d7ed2..8b7adb9e76c2 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -451,24 +451,21 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 u32 rtw_init_bcmc_stainfo(struct adapter *padapter)
 {
 	struct sta_info *psta;
-	u32 res = _SUCCESS;
 	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	psta = rtw_alloc_stainfo(pstapriv, bc_addr);
 
 	if (!psta) {
-		res = _FAIL;
 		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
 			 ("rtw_alloc_stainfo fail"));
-		goto exit;
+		return _FAIL;
 	}
 
 	/*  default broadcast & multicast use macid 1 */
 	psta->mac_id = 1;
 
-exit:
-	return res;
+	return _SUCCESS;
 }
 
 struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter)
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
