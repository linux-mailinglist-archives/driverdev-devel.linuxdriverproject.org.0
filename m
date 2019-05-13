Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 719E91BE3C
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 21:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 717AA85D41;
	Mon, 13 May 2019 19:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JQV9xPHBVJti; Mon, 13 May 2019 19:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4915A842B4;
	Mon, 13 May 2019 19:57:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D21F1BF3ED
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 85F7985BC8
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 22qMybiLh_RS for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 19:57:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 18AAB842B4
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 19:57:13 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id y11so7742328pfm.13
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 12:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=r6k9/YZaz4y78B8qT4eotOymWB1aFMkUs0RQFNmV8zc=;
 b=e5iaZXQcmsAHjnVZvLppSnVjEFtUIUfUXDa+UTFxgeUyqY2fadopEHPfa59DZ+DhVx
 L2LvNFREFn3FPx3Vi8oJAJdPmld2n19dSQcuAN0eHuYLGEhWahePI4nddsZ4KAPyhwV5
 q4W4H7X1nOOsbFjWzHETgbMVPPsb/mVoEtKxSyvRxCipXfcqBvpqKarBg5JD/SqPXpdU
 ZhssWjQOJI63Jcviw0RmOOQ2RRs6qD707FKkfoP/Ac89ri05qJ64cTnO+BwpWJVyzP4w
 5MT4JgVwGy80dVMb8yp5bXQP/hI8G4x9YP7uI1JeZHLaTybx54RWGsuYLmKqHtfEt2Gu
 R6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=r6k9/YZaz4y78B8qT4eotOymWB1aFMkUs0RQFNmV8zc=;
 b=PQuEopkGlmteVNrrjrPKJVdDB+030778UKh9x2CByO44HuVpkx2ij9dQtscGkLQbEB
 SBQPl8IzWeakK+BlFq7XTxL9xdJEbQhhIyAsd0nr+XGmN2SJXPnclrq3btSXBsVHDq4B
 4FZBgXN6EFnKz84u0nRxed/7Zf+mmNmcBHjHgTAC5O6Uw4sQcpr6psxjRpB+v0miJJ9w
 cP4iCXk/BQnshP84Dzop8dPKLJzbHiUX0qcGLIUZwPd25Qm3KTOwn+iSJy2zmi33FH8w
 TfOc3P6iwZ3gbQgYODWuWJtAnPEegZgIhNF0Vy+iAwUM2gx0kxRX6zLcPWu81ELodjfD
 FSJw==
X-Gm-Message-State: APjAAAVWhLuwdWw1ArMHMfiLu4BOMvxoN507LaxOagNrLjPwlJCNItNW
 1hqRVOi+wGMmkyrMzWm5K0Ts14Co
X-Google-Smtp-Source: APXvYqw8RgNHw3yKNTD83OUNtz0nAqThg2pkmQiQmrzktZzv6Jp1KE5sUZdiuWRChZDx5U3lRZfjeg==
X-Received: by 2002:a62:e201:: with SMTP id a1mr35973336pfi.67.1557777432515; 
 Mon, 13 May 2019 12:57:12 -0700 (PDT)
Received: from arch ([2405:204:7102:1ca6:a53f:1f68:43dd:48ab])
 by smtp.gmail.com with ESMTPSA id f4sm4159462pfn.118.2019.05.13.12.57.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 12:57:12 -0700 (PDT)
Date: Tue, 14 May 2019 01:27:06 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8723bs: os_dep: Fix if-else coding style issues
Message-ID: <20190513195701.GA4608@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix placement of opening brace in if-else statement
to correct coding style issue.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 052482554f74..178f0c16e601 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -368,8 +368,7 @@ static struct adapter *rtw_sdio_if1_init(struct dvobj_priv *dvobj, const struct
 	padapter->intf_alloc_irq = &sdio_alloc_irq;
 	padapter->intf_free_irq = &sdio_free_irq;
 
-	if (rtw_init_io_priv(padapter, sdio_set_intf_ops) == _FAIL)
-	{
+	if (rtw_init_io_priv(padapter, sdio_set_intf_ops) == _FAIL) {
 		RT_TRACE(_module_hci_intfs_c_, _drv_err_,
 			("rtw_drv_init: Can't init io_priv\n"));
 		goto free_hal_data;
@@ -569,14 +568,12 @@ static int rtw_sdio_suspend(struct device *dev)
 	struct adapter *padapter = psdpriv->if1;
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
-	if (padapter->bDriverStopped == true)
-	{
+	if (padapter->bDriverStopped == true) {
 		DBG_871X("%s bDriverStopped = %d\n", __func__, padapter->bDriverStopped);
 		return 0;
 	}
 
-	if (pwrpriv->bInSuspend == true)
-	{
+	if (pwrpriv->bInSuspend == true) {
 		DBG_871X("%s bInSuspend = %d\n", __func__, pwrpriv->bInSuspend);
 		pdbgpriv->dbg_suspend_error_cnt++;
 		return 0;
@@ -591,8 +588,7 @@ static int rtw_resume_process(struct adapter *padapter)
 	struct dvobj_priv *psdpriv = padapter->dvobj;
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
-	if (pwrpriv->bInSuspend == false)
-	{
+	if (pwrpriv->bInSuspend == false) {
 		pdbgpriv->dbg_resume_error_cnt++;
 		DBG_871X("%s bInSuspend = %d\n", __func__, pwrpriv->bInSuspend);
 		return -1;
@@ -635,8 +631,7 @@ static int __init rtw_drv_entry(void)
 	rtw_drv_proc_init();
 
 	ret = sdio_register_driver(&sdio_drvpriv.r871xs_drv);
-	if (ret != 0)
-	{
+	if (ret != 0) {
 		sdio_drvpriv.drv_registered = false;
 		rtw_drv_proc_deinit();
 		rtw_ndev_notifier_unregister();
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
