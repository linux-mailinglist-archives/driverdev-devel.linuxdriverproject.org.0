Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45666432CF
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EFE98634C;
	Thu, 13 Jun 2019 05:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AL9OMVRx8RAm; Thu, 13 Jun 2019 05:42:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB9408629C;
	Thu, 13 Jun 2019 05:42:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57AB91BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 54EAA87E99
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zoreABoERDtI for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 516C187E5D
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:06 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bh12so7619276plb.4
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FqKvLbRud5wgufRHWsPfMUf2YIjcmhGjMC3QH6z2ee0=;
 b=Y+A9yWh62mKmpNZMevV1APQggvQksWyLDjRvDX5eKLRRrrl7xGvPgZ0zSBfhcfTwpN
 YrBoTiNzDn0JF11UgTT6l0sbJBoGiEC5Yy0XGEIA/L12l9R3bNTRqMiOtEznAnV0oIAt
 gjvBJe+4obZtMLueFhk3iQYnZJQ2vtaJWPnDwYmDHy+twc3V69jYGmD2fWarxpAa08jl
 CjJyQdMLQoxBdF6ryh7g8ijCKQDCzTQ2ulcsgQwTxWKAJpPX/Io/AsMIu/hz5Hc9qKvm
 uKiZlKj/stiJtcAu5OTJq1vnJiA1orl8rC80F1er+6RZj3MXHtIyAae0B2vqbO0seN9H
 8Pig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FqKvLbRud5wgufRHWsPfMUf2YIjcmhGjMC3QH6z2ee0=;
 b=DO0agx9IlfpP9iI6wtHj1xfqMa3LyxcaJIdoAtprM+JoIDDf6795XAwwcU/hux7NsP
 7lKR9rHnWK7r5NP+I64ZwmIKoXOGspyECNOtoo/Qg8tcygoap8aa/TSRk5+UGoUSeVea
 NOd19GuvQ4OUfghtpScpTa3XveSuvYzrZ8cbv8NteERUjEx4MGy6XLHu9qB0Gc0TBaqi
 TKMPHy8Tn/s4jq+nL+iSlgviz6qfmya3jRTXrilRqdjyOtcfkpGc5TMdNkbdlib0y6rP
 h0spV3LuoselID1fawT6AttH4iMVXwVRUVES93ageQ29WxdCeZ94YLBvQ3nH2YIUc24s
 ZJyQ==
X-Gm-Message-State: APjAAAV+rGCFoeFH7ROQ1zD62gDCUDAk3X1jCWshkrwwqN3Pd5J5J55v
 X85ohgPrmQ8PzsZhFzRlPkQ=
X-Google-Smtp-Source: APXvYqxLmOLg7KzpfcRw5nNeC8vE9oHOHuVsT+oFaaTSFRCn14oHngFDtouIGo/k1H3SPN6wwH26MA==
X-Received: by 2002:a17:902:106:: with SMTP id 6mr22544732plb.64.1560404526061; 
 Wed, 12 Jun 2019 22:42:06 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 01/11] staging: rtl8723bs: core: Remove function
 eeprom_read_sz()
Date: Wed, 12 Jun 2019 23:34:29 +0530
Message-Id: <20190612180439.7101-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove unused function eeprom_read_sz.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_eeprom.c | 47 ---------------------
 1 file changed, 47 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_eeprom.c b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
index 5eea02cfce1f..433d5d255e77 100644
--- a/drivers/staging/rtl8723bs/core/rtw_eeprom.c
+++ b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
@@ -268,53 +268,6 @@ _func_exit_;
 
 }
 
-
-
-
-/*From even offset*/
-void eeprom_read_sz(_adapter *padapter, u16 reg, u8 *data, u32 sz)
-{
-
-	u16 x, data16;
-	u32 i;
-_func_enter_;
-	if (padapter->bSurpriseRemoved == true) {
-		RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
-		goto out;
-	}
-	/* select EEPROM, reset bits, set _EECS*/
-	x = rtw_read8(padapter, EE_9346CR);
-
-	if (padapter->bSurpriseRemoved == true) {
-		RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
-		goto out;
-	}
-
-	x &= ~(_EEDI | _EEDO | _EESK | _EEM0);
-	x |= _EEM1 | _EECS;
-	rtw_write8(padapter, EE_9346CR, (unsigned char)x);
-
-	/* write the read opcode and register number in that order*/
-	/* The opcode is 3bits in length, reg is 6 bits long*/
-	shift_out_bits(padapter, EEPROM_READ_OPCODE, 3);
-	shift_out_bits(padapter, reg, padapter->EepromAddressSize);
-
-
-	for (i = 0; i < sz; i += 2) {
-		data16 = shift_in_bits(padapter);
-		data[i] = data16 & 0xff;
-		data[i+1] = data16 >> 8;
-	}
-
-	eeprom_clean(padapter);
-out:
-_func_exit_;
-
-
-
-}
-
-
 /*addr_off : address offset of the entry in eeprom (not the tuple number of eeprom (reg); that is addr_off !=reg)*/
 u8 eeprom_read(_adapter *padapter, u32 addr_off, u8 sz, u8 *rbuf)
 {
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
