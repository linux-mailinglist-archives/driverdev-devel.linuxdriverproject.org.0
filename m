Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7455633AFCE
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18D878349A;
	Mon, 15 Mar 2021 10:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Way0YnSy81oi; Mon, 15 Mar 2021 10:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FB76834AE;
	Mon, 15 Mar 2021 10:17:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE6421BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CAA44834F6
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6qHp4MOvrZr for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:17:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2920883478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:17:14 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 j4-20020a05600c4104b029010c62bc1e20so19106886wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=483MsuDXnE3RLzpAgeT1+D3H8iMhTgEIGI+7YS5vbGk=;
 b=gUJ+iDOd/hrZQ8CclyK4m6pm5Cq9McQVETEe3Zjf22sJ28FDACVqmGUJOlegK2Ipvn
 sqxGwlEGVAAFKJS0V4SyIbOFYf480OwRx8fEkXU5CGxRUy/p684/a04hmHbpjIUE1yli
 ca5Np78hHUUn0GijVoXU19YnWtRD4hROVi5gJhWB2YfZUMdAl7k/y5b37Wiew1FVKVSf
 RI4mO2VRRqiY7FZQ+bH0tFvExc86tajcJC1+8H5LF/Ck+QnFos78Tquh/EKXyvYDTVtB
 +KTgBN4+m+ycHndtp1Y8HCfEhdUNIbn2tM6ZUbzXZpdhDq7ZgycASU0GziJQo3cc2wlv
 F8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=483MsuDXnE3RLzpAgeT1+D3H8iMhTgEIGI+7YS5vbGk=;
 b=HifgEYTT8BJVLgWMz1ux6YIgDhmvv3JQmu5eWmPT6SLZF2h3qNXK+vVHGcz9xR1ejF
 qUFNJnCtPrfdCRZCNr1O8BIntJak+KbwxxpmYYvnO3ebPuYg1ey+chHLDG2OCfmsGF01
 9P1aqnD3MLoY4/IUaH+W2Oj4rq2QWmbmsIOa1EphVsSUV9xPlNjG5tdSXK8gYUCk0Ext
 cTneViV8PmeGFat63hHY5E3KBe1lV3aX48ViX5puxQChNfm+KCFoKjKkeAEPGhrZxIf+
 LUsbe+5FdL8faKLbimTkP6YV+zjc9V3smEIWR1bHJ3uWrzqv90WrVXEO7jsS4C1+f2sa
 /ApA==
X-Gm-Message-State: AOAM532OybNa8UPzEvgXOcftYLg1UwpT1/gAO3XWUMrPsBDiL7DFP8Rr
 7hW0es4MXD+sPiGX4ZdRPso=
X-Google-Smtp-Source: ABdhPJyRgNaVct6ICfAvGXKPms/Nv53BAGG/Ou8qQVTJZdvFrJffW/XwRR+USefCm6kUbkb5Gds5Vw==
X-Received: by 2002:a7b:cb55:: with SMTP id v21mr2359479wmj.188.1615803432395; 
 Mon, 15 Mar 2021 03:17:12 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id v18sm19410032wrf.41.2021.03.15.03.17.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:17:12 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:17:09 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 13/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_SW_CHANNEL_PLAN
Message-ID: <fff259ea5895a5875c37ee0cfacd1be6cd5664fb.1615801722.git.fabioaiuto83@gmail.com>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615801721.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_SW_CHANNEL_PLAN

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index bf07251a07d7..368807e05830 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -132,10 +132,8 @@ u8 hal_com_config_channel_plan(
 
 		hw_chnlPlan = hw_channel_plan & (~EEPROM_CHANNEL_PLAN_BY_HW_MASK);
 		if (rtw_is_channel_plan_valid(hw_chnlPlan)) {
-#ifndef CONFIG_SW_CHANNEL_PLAN
 			if (hw_channel_plan & EEPROM_CHANNEL_PLAN_BY_HW_MASK)
 				pHalData->bDisableSWChannelPlan = true;
-#endif /*  !CONFIG_SW_CHANNEL_PLAN */
 
 			chnlPlan = hw_chnlPlan;
 		}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
