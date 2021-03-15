Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A62C633AFD0
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:17:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADBD148075;
	Mon, 15 Mar 2021 10:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uwp_SkCmeQRZ; Mon, 15 Mar 2021 10:17:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C117847DA3;
	Mon, 15 Mar 2021 10:17:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C586D1BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C210C6F477
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8A0yN8O8x0iS for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:17:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A8D560707
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:17:27 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id v11so5381206wro.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Z19T33UGYuqCwizp47siFJ6FOeFaLx2TKUwNaoixEfE=;
 b=Cek31PW6fyYjviTHc+RBaMW/cNtZb0qD4w0YB/GJvJP+v7Ubg47lSNFrHe4krY+QMd
 b+jp4BHUWv7vqgNUjUeAoD62oZtYShPGpZigLfHamE5NZL/CztkrMhhrHPfCqYs1TLf5
 rWd3CtNUo9+cHsTzl1T/O8WVQRFzqXlfpatocSCBqW8td/OvJFH5kTiGs5FkgQQwPGZ+
 nNnxmkeZUsI4PNSHhQ0ZwaJ0SYwtUxFF0pYoHerQCJTJzzdb3ao0imkRFfYhiXd7kO/5
 dRvaQIJ2hDujZaTVmdIZekdKkCvoQAFU+aUhgz8e/GFM1yD8/Hx/0rKp0KcTLccktcx/
 4uMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z19T33UGYuqCwizp47siFJ6FOeFaLx2TKUwNaoixEfE=;
 b=daJOdRURiulVfS1fARZobu8035UXdHrR6dtHZFcIK4Yk2Ogq3IkUpDccM2l2bl3U4L
 E/XgxIE0cS4ZsksXv0KhcEEYAvQlngygZeS0gfBTCfXsh/U6Ds2RwVH5ncquLNte1CM7
 uMTIuWU5Iz/MeKumaorBwfrFuvwY4Hk5Q/r1XjllDylvUnCK4iik8xuV/oGUpPX4NrJ/
 1rTDzfipc7RnDRCKNKyfdNJ69vaqdfeeTc81ONt+ITl85TXlaMJjMvAQiwjMf4XPgwLa
 TWXQJLeqdC9TyqNTGEZ7I0iSq+I3SCbQ8PFly5Rop859XkZwsTI3QNWWY365NgnT5ogr
 ekSA==
X-Gm-Message-State: AOAM53288cJpcNaj9oaMby2QLBdkP/sIQ/SmJ4RsPzIIa55sodtL2vhd
 U7mwue7LBQQ8fJMcmfhf3Qg=
X-Google-Smtp-Source: ABdhPJxhzSX8668Wu02UfyDRW3tD2PKvJsjQ796FD6/hGR8GxSXUdNUnS19nuaoyR02zddh/YiXfRQ==
X-Received: by 2002:adf:e582:: with SMTP id l2mr26736002wrm.207.1615803445481; 
 Mon, 15 Mar 2021 03:17:25 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id q17sm13080993wrv.25.2021.03.15.03.17.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:17:25 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:17:22 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 14/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_C2H_PACKET_EN
Message-ID: <dfb524b34be556c499787b4f057d7c157b577a21.1615801722.git.fabioaiuto83@gmail.com>
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
CONFIG_C2H_PACKET_EN

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 0ea97e85e6a2..170a28f4b191 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -974,7 +974,6 @@ void sd_int_dpc(struct adapter *adapter)
 
 	if (hal->sdio_hisr & SDIO_HISR_TXBCNERR)
 		DBG_8192C("%s: SDIO_HISR_TXBCNERR\n", __func__);
-#ifndef CONFIG_C2H_PACKET_EN
 	if (hal->sdio_hisr & SDIO_HISR_C2HCMD) {
 		struct c2h_evt_hdr_88xx *c2h_evt;
 
@@ -997,7 +996,6 @@ void sd_int_dpc(struct adapter *adapter)
 			_set_workitem(&adapter->evtpriv.c2h_wk);
 		}
 	}
-#endif
 
 	if (hal->sdio_hisr & SDIO_HISR_RXFOVW)
 		DBG_8192C("%s: Rx Overflow\n", __func__);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
