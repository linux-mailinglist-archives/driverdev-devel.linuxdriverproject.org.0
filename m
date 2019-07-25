Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54142756F9
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 20:32:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CE33881C8;
	Thu, 25 Jul 2019 18:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K5A+ywvMP2oH; Thu, 25 Jul 2019 18:31:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C3E488046;
	Thu, 25 Jul 2019 18:31:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 086071BF2C8
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 18:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 056F486559
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 18:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rUUxG4-n74gy for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 18:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E473C8654C
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 18:31:54 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id o13so23438717pgp.12
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 11:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=qPt6GSvNaRNxnnTu6bRMZgg7HoSbPOn74FTRNXInFbk=;
 b=EHlOM0QygTwzmZQvs33/voY6md2Kl/JmHanGKPu3dGDQcFuBknI63q591sKbcgB/kN
 haIXUpg22a8h+wmcHTm7QdT5jsPM3YAW/TsCCXITTyAHAwNieSUSmdcCYh2lJm+uBs3B
 FXiQ9BbpQYr0FykEF5Rz0Ey3tXfKRVY6hHjGEGxxkJw+Sa1aHY87qoVAMGMEgDbopUS5
 EnlM6FKEB4s1ipS30YgMF+CjlMkzD0L7nit1nsqvAbUmrOKCHfaD4aC26gVvPJRlA7iI
 KuGbouX5yZC+elOjkG87SlwQCpajKOBv//vIUD0BG72KXkyw04QJ5OW0TKZAJCqGTv8Q
 Tfig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=qPt6GSvNaRNxnnTu6bRMZgg7HoSbPOn74FTRNXInFbk=;
 b=jHSN1BpKVWxDTYeFksXScKX8fL49yY3JNRWDQIVeIXHeS9IXxj4vRT31i7+yVgFM/Y
 tUtQm9zkNn7Uaq2jfi+r9W3F7azsVnwtKVPVQKWGwD9NSkuCLZIbHnbBr79Kv1VNr2Gu
 Mdosxq0zaJL5cdDepSyJpfKgeC6a9OHzA6tGfKR4KfmzANiktFSfBicMoUfjCNK5e7pz
 ORVtSryir0jFvVDjZ2bA9IPvtX3wdO9vulkZncwZNS6lAuqmLbHwhsQWdHRjGJHHe0Dn
 RnzRUIs3I2ZB/Fsr2qjdPe3bwC9NNyxYFI4dyCNzwXdFruHWCpzgFM8ukCAiA8sM7f7j
 DVbQ==
X-Gm-Message-State: APjAAAWtkgI3IWCEl1qz0c/gCsszEO8O6W0WU3jHA8PkcDDl9rYsRO8g
 Fw0YwxgcdOius8NOTDLEdTE=
X-Google-Smtp-Source: APXvYqxvm1fX7QjHkQM2xD11QPpwhO6OXzuaDSdDN5yGVIeR7nIoZK+NOr8aXEWhiMrP7Og03UtJ+Q==
X-Received: by 2002:a63:5f09:: with SMTP id t9mr54149080pgb.351.1564079514119; 
 Thu, 25 Jul 2019 11:31:54 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id a5sm43583407pjv.21.2019.07.25.11.31.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 11:31:53 -0700 (PDT)
Date: Fri, 26 Jul 2019 00:01:47 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8723bs: os_dep: Move common code to func
Message-ID: <20190725183147.GA15303@hari-Inspiron-1545>
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

Inthis file all functions has below common functionality
1.Check flag padapter->bSurpriseRemoved
2.Get sdio_func structure from intf_hdl.

This patch introduces two new APIs
rtw_isadapter_removed,rtw_sdio_get_func which helps to do above common
functionality.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 149 ++++++----------------
 1 file changed, 41 insertions(+), 108 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
index 50b8934..126429e 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
@@ -26,26 +26,38 @@ inline void rtw_sdio_set_irq_thd(struct dvobj_priv *dvobj, void *thd_hdl)
 	sdio_data->sys_sdio_irq_thd = thd_hdl;
 }
 
-u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
+static s32 rtw_isadapter_removed(struct intf_hdl *pintfhdl)
 {
 	struct adapter *padapter;
+
+	padapter = pintfhdl->padapter;
+	return padapter->bSurpriseRemoved;
+}
+
+static struct sdio_func *rtw_sdio_get_func(struct intf_hdl *pintfhdl)
+{
 	struct dvobj_priv *psdiodev;
 	struct sdio_data *psdio;
 
+	psdiodev = pintfhdl->pintf_dev;
+	psdio = &psdiodev->intf_data;
+
+	return psdio->func;
+}
+
+u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
+{
 	u8 v = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
 
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return v;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -65,23 +77,15 @@ u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
  */
 s32 _sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = 0, i;
 	struct sdio_func *func;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 
 	for (i = 0; i < cnt; i++) {
 		pdata[i] = sdio_readb(func, addr+i, &err);
@@ -100,24 +104,16 @@ s32 _sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
  */
 s32 sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -135,23 +131,15 @@ s32 sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
  */
 s32 _sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = 0, i;
 	struct sdio_func *func;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 
 	for (i = 0; i < cnt; i++) {
 		sdio_writeb(func, pdata[i], addr+i, &err);
@@ -170,24 +158,16 @@ s32 _sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
  */
 s32 sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -200,24 +180,16 @@ s32 sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 
 u8 sd_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	u8 v = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return v;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -234,21 +206,19 @@ u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
 {
 	struct adapter *padapter;
 	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 	u32 v = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
 	padapter = pintfhdl->padapter;
 	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
 
 	if (padapter->bSurpriseRemoved) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return v;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -295,22 +265,15 @@ u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
 
 void sd_write8(struct intf_hdl *pintfhdl, u32 addr, u8 v, s32 *err)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -326,20 +289,18 @@ void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
 {
 	struct adapter *padapter;
 	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 	struct sdio_func *func;
 	bool claim_needed;
 
 	padapter = pintfhdl->padapter;
 	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
 
 	if (padapter->bSurpriseRemoved) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -398,23 +359,15 @@ void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
  */
 s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = -EPERM;
 	struct sdio_func *func;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 
 	if (unlikely((cnt == 1) || (cnt == 2))) {
 		int i;
@@ -453,23 +406,18 @@ s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
  */
 s32 sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 
 	struct sdio_func *func;
 	bool claim_needed;
 	s32 err = -EPERM;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
 
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
-	func = psdio->func;
+
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -497,24 +445,16 @@ s32 sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
  */
 s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	struct sdio_func *func;
 	u32 size;
 	s32 err =  -EPERM;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 /*	size = sdio_align_size(func, cnt); */
 
 	if (unlikely((cnt == 1) || (cnt == 2))) {
@@ -555,23 +495,16 @@ s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
  */
 s32 sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 	struct sdio_func *func;
 	bool claim_needed;
 	s32 err =  -EPERM;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
