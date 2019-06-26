Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D583356F82
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 19:30:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19DB387DA2;
	Wed, 26 Jun 2019 17:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BObsSiLD-DQy; Wed, 26 Jun 2019 17:30:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FD9887CDE;
	Wed, 26 Jun 2019 17:30:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8384F1BF326
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 17:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8038382108
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 17:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y4EbFEawkQra for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 17:29:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE39F81F2C
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 17:29:56 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id f25so1519820pgv.10
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 10:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=5T6JwdKRjR0/RiG3X8PeL3Pv8Cc3TnWD4IRh13Xy5ag=;
 b=My7eCbBlW0B5mb2GiL0BF8ubkmwJqvdlp2tjJodqd30zEwBuyaywestOcC28RB/fHl
 eWqpPYluiFgdQJnQ5cdPaifnUof2fwhquXW/5BbSuJrUrZvfU+F1QWXW7N8qvQRvepYz
 YuJkQJDQMoSFtGQ7zJtLkvhFrQ6V83tu+W1ALYoHtIHZBew3gtEM2P3hp4tnurJlS/vg
 CE+jLYwkZgBpNtUXa3L5ysct7ElmiI7l4Hb0u+LZVma+wMG6OLTrCEVuKDZJiJVaIFhe
 WHzIOALIYKaNa/uV0Ozs1qjve+pxiZpKu8Pa1KXzjfrqyRZkJ69xxlc5+Sf7y1oICyPd
 SY5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=5T6JwdKRjR0/RiG3X8PeL3Pv8Cc3TnWD4IRh13Xy5ag=;
 b=Ay22Tlb4eLUtKA+NPlOv09lWRbsmwFywF8DqITwG4WzXlrDrHyt/pEOf0Sq4nHilXa
 4GcpA2KNErXvcN7ShFRfujkTg9fTOAxsHZQj1+2IAHf4Eq3YZigo8WzyKa2HDR2BvGAW
 hV3GTrfS3RWNFYVv7p2MfyxBjIOJFEfng2fH+CgUZz0DW+g9gGmkFtg4bHYSBLSUOJml
 F2WQJyS/uY+ZYnPKWtD5QjKIrKCiGFSrpMShKnFcX0RgTJ4omvf496Iq9sN63uSqLf2o
 ANYrSjisHFAmS/ULVyEyO9F4BlnX/5BEoU2dUfWZpsWRzUA6NUT4k0ujY2hI8VTfEDNd
 +zDg==
X-Gm-Message-State: APjAAAUDIQKCIuzA2ktEh7gzvAKgL+hcp4jWaa/11KQCpqEIKOgzOdE6
 FrSfddj6K835zJ4dJpHo398=
X-Google-Smtp-Source: APXvYqzqQLv6YPA7wFT/1bH52+5xuqCsBHVv8kbrO5obSZEqzQEy5t8+odJ4iW8Nb9Gh6c2C+g2dmw==
X-Received: by 2002:a17:90a:be08:: with SMTP id a8mr190221pjs.69.1561570196512; 
 Wed, 26 Jun 2019 10:29:56 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id 11sm30296257pfw.33.2019.06.26.10.29.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 10:29:55 -0700 (PDT)
Date: Wed, 26 Jun 2019 22:59:51 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Hans de Goede <hdegoede@redhat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: rtl8723b_hal_init: remove set but
 unused variable pHalData
Message-ID: <20190626172951.GA7521@hari-Inspiron-1545>
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

Remove set but unsed variable pHalData in hw_var_set_mlme_join
function

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 6cfd240..8ca6249 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3579,14 +3579,12 @@ static void hw_var_set_mlme_join(struct adapter *padapter, u8 variable, u8 *val)
 	u32 val32;
 	u8 RetryLimit;
 	u8 type;
-	struct hal_com_data *pHalData;
 	struct mlme_priv *pmlmepriv;
 	struct eeprom_priv *pEEPROM;
 
 
 	RetryLimit = 0x30;
 	type = *(u8 *)val;
-	pHalData = GET_HAL_DATA(padapter);
 	pmlmepriv = &padapter->mlmepriv;
 	pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
