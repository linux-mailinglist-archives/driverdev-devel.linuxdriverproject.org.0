Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F808432D1
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE5BC876F7;
	Thu, 13 Jun 2019 05:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YOv3JqecNvvC; Thu, 13 Jun 2019 05:42:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2020286D6F;
	Thu, 13 Jun 2019 05:42:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED1FD1BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E94C4876D1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WkH33hIRsYsa for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4AB10876C9
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:11 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id m30so10563273pff.8
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hUOWYTKrv0v3pf3LPvO6f/yFD3P2YQ1jSDGtGT9M60I=;
 b=C++FIfVeBeNqwlpUqHwKF7awNycRdoeIp76W259h3wwoNWYOOMPk/TeoI+nuIy1jAn
 IDfl8DC1z6wlCsgB3E0v+k4zhjjcJWTrf0Q+PdFDvivpXQhTnDGBOuAjSXSUsPbHVqs0
 N7SMJcPkBrfGzG+u72jiMGpUZhHrq1DgqB3k6C7H5dXrfSRhEEsmD6BvCQOA95ir8uIq
 uKQmpBQlqfdUGdOpgnjRE5duq3KAb7V2h19RuOYUSjFTq52hpaW16Jq7AvB5HAhyWDGZ
 gcYPeyr9LYpj9FrdMPd44zY7QneFkOWajr5sbVgrMiQ1ar4qm/2oPApl2GDi9S1JaYVo
 1ziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hUOWYTKrv0v3pf3LPvO6f/yFD3P2YQ1jSDGtGT9M60I=;
 b=I54Yi2cefk7NJmlrcM9jSqWjw5RGAvrmYfsvCb/BaWXEkWJkvKV1BwZAw4efs81XsI
 nuF4drRoIhjhg6SosNDJStzHSE1ViCEtIviSDqORtALgBNQm8zIk/ORPhl1c4l6nPkIM
 AY53WqZgy4V4bXyqmMTdpJi4ZBUyVRXwf9d1s4LNJ15Mmk5x5rzlDlcHTwvldX8H7wBK
 ueK+qOJYRwOacfQauHqb9UnRpdazFHP6JeBPyaWtv1KcNYbn8siFDkRY8QNSgpoI6WEB
 Rg0GEyhkY5VBxrZQPTIadMjkBk0ep8ksQoG9S201gQou8JLIu8A8civQAbfLV2FsTa05
 sf2Q==
X-Gm-Message-State: APjAAAXFKOadW1sZhRGYoIlaaUDSpM7IyuMOrknOrWvuAzFUmHwlowPS
 JKr4YFMhSZ5jrW2VPkf+PBg=
X-Google-Smtp-Source: APXvYqyJJg0J9Z9vXlsRUJfHMeP0hdprZ0aqn3kA6E6Eb3ErbEtmQ+ik6ydRlV3Ywwp6hUNfxnvZ+A==
X-Received: by 2002:a65:51cb:: with SMTP id i11mr27969798pgq.390.1560404530865; 
 Wed, 12 Jun 2019 22:42:10 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:10 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 03/11] staging: rtl8723bs: core: Remove eeprom_write16()
Date: Wed, 12 Jun 2019 23:34:31 +0530
Message-Id: <20190612180439.7101-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190612180439.7101-1-nishkadg.linux@gmail.com>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused function eeprom_write16.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_eeprom.c | 62 ---------------------
 1 file changed, 62 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_eeprom.c b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
index 8594848e9a56..a707c2534a65 100644
--- a/drivers/staging/rtl8723bs/core/rtw_eeprom.c
+++ b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
@@ -166,68 +166,6 @@ _func_enter_;
 _func_exit_;
 }
 
-void eeprom_write16(_adapter *padapter, u16 reg, u16 data)
-{
-	u8 x;
-
-_func_enter_;
-
-	x = rtw_read8(padapter, EE_9346CR);
-
-	x &= ~(_EEDI | _EEDO | _EESK | _EEM0);
-	x |= _EEM1 | _EECS;
-	rtw_write8(padapter, EE_9346CR, x);
-
-	shift_out_bits(padapter, EEPROM_EWEN_OPCODE, 5);
-
-	if (padapter->EepromAddressSize == 8)	/*CF+ and SDIO*/
-		shift_out_bits(padapter, 0, 6);
-	else									/*USB*/
-		shift_out_bits(padapter, 0, 4);
-
-	standby(padapter);
-
-/* Commented out by rcnjko, 2004.0
-*	 Erase this particular word.  Write the erase opcode and register
-*	 number in that order. The opcode is 3bits in length; reg is 6 bits long.
-*	shift_out_bits(Adapter, EEPROM_ERASE_OPCODE, 3);
-*	shift_out_bits(Adapter, reg, Adapter->EepromAddressSize);
-*
-*	if (wait_eeprom_cmd_done(Adapter ) == false)
-*	{
-*		return;
-*	}
-*/
-
-	standby(padapter);
-
-	/* write the new word to the EEPROM*/
-
-	/* send the write opcode the EEPORM*/
-	shift_out_bits(padapter, EEPROM_WRITE_OPCODE, 3);
-
-	/* select which word in the EEPROM that we are writing to.*/
-	shift_out_bits(padapter, reg, padapter->EepromAddressSize);
-
-	/* write the data to the selected EEPROM word.*/
-	shift_out_bits(padapter, data, 16);
-
-	if (wait_eeprom_cmd_done(padapter) == false) {
-
-		goto exit;
-	}
-
-	standby(padapter);
-
-	shift_out_bits(padapter, EEPROM_EWDS_OPCODE, 5);
-	shift_out_bits(padapter, reg, 4);
-
-	eeprom_clean(padapter);
-exit:
-_func_exit_;
-	return;
-}
-
 u16 eeprom_read16(_adapter *padapter, u16 reg) /*ReadEEprom*/
 {
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
