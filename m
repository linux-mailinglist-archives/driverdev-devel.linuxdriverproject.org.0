Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1FB78FED
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 17:56:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C381486DEA;
	Mon, 29 Jul 2019 15:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNcE4HViDONq; Mon, 29 Jul 2019 15:56:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 518AC85A1D;
	Mon, 29 Jul 2019 15:56:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D7471BF37F
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 15:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 429548708C
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 15:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G7MFRgDRPYKp for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 15:56:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BF63D864CB
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 15:56:13 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s3so54322962wms.2
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 08:56:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yQAt39gVIx/12+cMOBRXnhsWR+PllWWi+W8+K2ks0aA=;
 b=D/yNy2JuqVt5ExF7LMXAgZdxYbkGVArC5Mnba2fKyUpZqz6Q5jlm9AdCnFQbkUrYRD
 eed11+TGkNhfXP79dSxGYa4/M9bFPJqQPA2wBRdiKV6qKlXUOM3TQW7SoOhHaWpBkYp1
 MikM+zQs2UElpzjTEomgZLV+4NBtl3DOXcYzsqQzb4TIikdpezYNlQBz7UKDTk5MQZEv
 w5t77WvGhmGw4Ry/+T84WfCxKzqb/q8m5Gzytbzglk8UiUr/sk1Pj2ty3Pxco/ZoaY79
 re0Vd7Zf3VvbywPZN9qrL946zUENnmNodQ+L/GZHoglMCSNGwqjtzneyxrr8uTMRPR2O
 dYKw==
X-Gm-Message-State: APjAAAUnLXPD9XZuplgxzDSHakdO1W0UVrpvCPBipbVqy+0HmoESl4uH
 a5hBHIvPw9VhvYtqxlM69HQqlQ==
X-Google-Smtp-Source: APXvYqwHII30jmJt0M7zCkJUR5OPuGi5dT8AzXGrcmlhnfXxMWpawqq2f08UVsVEu4ejzCU2SDr5qg==
X-Received: by 2002:a1c:18a:: with SMTP id 132mr101242272wmb.15.1564415772230; 
 Mon, 29 Jul 2019 08:56:12 -0700 (PDT)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id b186sm45845832wmb.3.2019.07.29.08.56.11
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 08:56:11 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: Move common code to func
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
References: <20190725183147.GA15303@hari-Inspiron-1545>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f8e2bc8f-1eeb-37ab-ad5c-2d9584e4a686@redhat.com>
Date: Mon, 29 Jul 2019 17:56:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725183147.GA15303@hari-Inspiron-1545>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 25-07-19 20:31, Hariprasad Kelam wrote:
> Inthis file all functions has below common functionality
> 1.Check flag padapter->bSurpriseRemoved
> 2.Get sdio_func structure from intf_hdl.
> 
> This patch introduces two new APIs
> rtw_isadapter_removed,rtw_sdio_get_func which helps to do above common
> functionality.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>   drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 149 ++++++----------------
>   1 file changed, 41 insertions(+), 108 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
> index 50b8934..126429e 100644
> --- a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
> @@ -26,26 +26,38 @@ inline void rtw_sdio_set_irq_thd(struct dvobj_priv *dvobj, void *thd_hdl)
>   	sdio_data->sys_sdio_irq_thd = thd_hdl;
>   }
>   
> -u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
> +static s32 rtw_isadapter_removed(struct intf_hdl *pintfhdl)
>   {
>   	struct adapter *padapter;
> +
> +	padapter = pintfhdl->padapter;
> +	return padapter->bSurpriseRemoved;
> +}
> +
> +static struct sdio_func *rtw_sdio_get_func(struct intf_hdl *pintfhdl)
> +{
>   	struct dvobj_priv *psdiodev;
>   	struct sdio_data *psdio;
>   
> +	psdiodev = pintfhdl->pintf_dev;
> +	psdio = &psdiodev->intf_data;
> +
> +	return psdio->func;
> +}
> +
> +u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
> +{
>   	u8 v = 0;
>   	struct sdio_func *func;
>   	bool claim_needed;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
>   
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return v;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   	claim_needed = rtw_sdio_claim_host_needed(func);
>   
>   	if (claim_needed)
> @@ -65,23 +77,15 @@ u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
>    */
>   s32 _sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
> -
>   	int err = 0, i;
>   	struct sdio_func *func;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
> -
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return err;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   
>   	for (i = 0; i < cnt; i++) {
>   		pdata[i] = sdio_readb(func, addr+i, &err);
> @@ -100,24 +104,16 @@ s32 _sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
>    */
>   s32 sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
> -
>   	int err = 0;
>   	struct sdio_func *func;
>   	bool claim_needed;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
> -
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return err;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   	claim_needed = rtw_sdio_claim_host_needed(func);
>   
>   	if (claim_needed)
> @@ -135,23 +131,15 @@ s32 sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
>    */
>   s32 _sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
> -
>   	int err = 0, i;
>   	struct sdio_func *func;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
> -
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return err;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   
>   	for (i = 0; i < cnt; i++) {
>   		sdio_writeb(func, pdata[i], addr+i, &err);
> @@ -170,24 +158,16 @@ s32 _sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
>    */
>   s32 sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
> -
>   	int err = 0;
>   	struct sdio_func *func;
>   	bool claim_needed;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
> -
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return err;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   	claim_needed = rtw_sdio_claim_host_needed(func);
>   
>   	if (claim_needed)
> @@ -200,24 +180,16 @@ s32 sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
>   
>   u8 sd_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
> -
>   	u8 v = 0;
>   	struct sdio_func *func;
>   	bool claim_needed;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
> -
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return v;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   	claim_needed = rtw_sdio_claim_host_needed(func);
>   
>   	if (claim_needed)
> @@ -234,21 +206,19 @@ u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
>   {
>   	struct adapter *padapter;
>   	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
>   	u32 v = 0;
>   	struct sdio_func *func;
>   	bool claim_needed;
>   
>   	padapter = pintfhdl->padapter;
>   	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
>   
>   	if (padapter->bSurpriseRemoved) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return v;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   	claim_needed = rtw_sdio_claim_host_needed(func);
>   
>   	if (claim_needed)
> @@ -295,22 +265,15 @@ u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
>   
>   void sd_write8(struct intf_hdl *pintfhdl, u32 addr, u8 v, s32 *err)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
>   	struct sdio_func *func;
>   	bool claim_needed;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
> -
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   	claim_needed = rtw_sdio_claim_host_needed(func);
>   
>   	if (claim_needed)
> @@ -326,20 +289,18 @@ void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
>   {
>   	struct adapter *padapter;
>   	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
>   	struct sdio_func *func;
>   	bool claim_needed;
>   
>   	padapter = pintfhdl->padapter;
>   	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
>   
>   	if (padapter->bSurpriseRemoved) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   	claim_needed = rtw_sdio_claim_host_needed(func);
>   
>   	if (claim_needed)
> @@ -398,23 +359,15 @@ void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
>    */
>   s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
> -
>   	int err = -EPERM;
>   	struct sdio_func *func;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
> -
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return err;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   
>   	if (unlikely((cnt == 1) || (cnt == 2))) {
>   		int i;
> @@ -453,23 +406,18 @@ s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
>    */
>   s32 sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
>   
>   	struct sdio_func *func;
>   	bool claim_needed;
>   	s32 err = -EPERM;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
>   
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return err;
>   	}
> -	func = psdio->func;
> +
> +	func = rtw_sdio_get_func(pintfhdl);
>   	claim_needed = rtw_sdio_claim_host_needed(func);
>   
>   	if (claim_needed)
> @@ -497,24 +445,16 @@ s32 sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
>    */
>   s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
> -
>   	struct sdio_func *func;
>   	u32 size;
>   	s32 err =  -EPERM;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
> -
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return err;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   /*	size = sdio_align_size(func, cnt); */
>   
>   	if (unlikely((cnt == 1) || (cnt == 2))) {
> @@ -555,23 +495,16 @@ s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
>    */
>   s32 sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
>   {
> -	struct adapter *padapter;
> -	struct dvobj_priv *psdiodev;
> -	struct sdio_data *psdio;
>   	struct sdio_func *func;
>   	bool claim_needed;
>   	s32 err =  -EPERM;
>   
> -	padapter = pintfhdl->padapter;
> -	psdiodev = pintfhdl->pintf_dev;
> -	psdio = &psdiodev->intf_data;
> -
> -	if (padapter->bSurpriseRemoved) {
> +	if (rtw_isadapter_removed(pintfhdl)) {
>   		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
>   		return err;
>   	}
>   
> -	func = psdio->func;
> +	func = rtw_sdio_get_func(pintfhdl);
>   	claim_needed = rtw_sdio_claim_host_needed(func);
>   
>   	if (claim_needed)
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
