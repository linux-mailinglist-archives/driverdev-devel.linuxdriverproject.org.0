Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 604001496CE
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 18:09:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D756B86777;
	Sat, 25 Jan 2020 17:09:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rN-qPsdeMgKp; Sat, 25 Jan 2020 17:09:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10E9486742;
	Sat, 25 Jan 2020 17:09:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33A291BF33F
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 17:09:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F4768804A
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 17:09:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6xcb23Txbdi3 for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 17:09:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B7A7F88026
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 17:09:37 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id k3so2857007pgc.3
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 09:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=b6njYIG6ff8eY1VFaMmfpvx8PhOEu/k5+MjVDr3pN7U=;
 b=B++NlONWRWsNIZANd707V/YLH+WiK/uNB7UNheivQx7q29GhnFHLgKMeyQJFw2E1+g
 yCcrqPua/dRNSm7m03QQoUPh45oht9Qd8pFbnJ+oxSqXKOocoWzKKeXq7g3g4FqFztVI
 FZwbhxEYPlKzZPgZUb2TolYCOD0icD/etvjmGu94WoegsE3QfOQokQqTpqGeHyc7u/Iy
 dW5AJIVQ49LezGnat4UGOe42GXgHS53bzI9SNSuiP2uqZ+2MaZ9gS90nepNTTGzx96eR
 3+KyiQMiNgcLWuTSqWBt2ydXTjCZ88PTmikQIRgcCTGObuesYbYp7AaueGedDugmFmk0
 uxzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=b6njYIG6ff8eY1VFaMmfpvx8PhOEu/k5+MjVDr3pN7U=;
 b=rjFAl+MZWnUzFgqWbX5lmRuRbxuv8w9zOLqR/qV9OKqXIQelTxEIz+8szvk5YzAznU
 HXrQ3dexSH53hIvJyERONRf6iVqorwY56OVzrEJSGS0hlzY+uw9NaDo2EwIosJ1/cHwq
 mEpOzsRQEbreGkehC2pGbOvfG/6Q4qlAZu0H5GmIgZNDg2cYZiiZqsSGopoqfbHRkfP6
 QjBJst00gDvNA+lYP0kt7F/NyjpX8le788H9S5tOJ27kHTAnyskC38cWF/uTQB64gxau
 7QXFRxeQ8HUH8v8Ujj++RS6DH1YyaFzd0o/C6/GunJZ4PZNn2tGFSldYk0CITdm3n+Ft
 Nf0Q==
X-Gm-Message-State: APjAAAUU19dB0IXM+Gpi0bKGK6bn97OhkUApBIa2A4QRO9CJ8kGj9x5s
 h8SbyWNmcWwBRjS2XeEEMGIwMQfM7t0//g==
X-Google-Smtp-Source: APXvYqww1GWZAEpKI0hYdg/duDCDhypF8ADpRXtwQ4+BGmX/ggPSVC13d/Tx7TJMcc9V0CaFReRSkg==
X-Received: by 2002:a63:2a49:: with SMTP id q70mr10278060pgq.265.1579972177300; 
 Sat, 25 Jan 2020 09:09:37 -0800 (PST)
Received: from google.com ([123.201.163.48])
 by smtp.gmail.com with ESMTPSA id a12sm10408176pga.11.2020.01.25.09.09.34
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 25 Jan 2020 09:09:36 -0800 (PST)
Date: Sat, 25 Jan 2020 22:39:30 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
 quentin.deslandes@itdev.co.uk, colin.king@canonical.com,
 saurav.girepunje@gmail.com, tvboxspy@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vt6656: fix Unneeded variable: "ret"
Message-ID: <20200125170930.GA4809@google.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (NetBSD/sparc64)
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
Cc: saurav.girepunje@hotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unneeded variable "ret". Issues reported by coccicheck.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
  drivers/staging/vt6656/card.c | 3 +--
  1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 7958fc1..654cebc 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -719,7 +719,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
   */
  int vnt_radio_power_on(struct vnt_private *priv)
  {
-	int ret = 0;
  
  	vnt_exit_deep_sleep(priv);
  
@@ -739,7 +738,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
  
  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
  
-	return ret;
+	return 0;
  }
  
  void vnt_set_bss_mode(struct vnt_private *priv)
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
