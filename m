Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5737211549
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 23:44:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 452778AD6A;
	Wed,  1 Jul 2020 21:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aeKxEl5DBVZY; Wed,  1 Jul 2020 21:44:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B33EA8AD4F;
	Wed,  1 Jul 2020 21:44:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 545141BF5DF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 50C1026EAB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id apCXREsPmKAB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id EBB6226639
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 21:44:29 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id h23so19749386qtr.0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 01 Jul 2020 14:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VWeXCcV/MlpePmUaN1mA3lyqeOKNfkxC7Dd6zGwowsc=;
 b=EvSA8F2wUvjJBPwkiWAilPv61x0r9SpOg+jL74jfbVFH21lMsXPZpK8dAtyPv06gTs
 pDsP1fWZezRZF7oddfibGPrkFYb3vdHuDyVriO7u8DtT7sfcFhWn/948MfzrnLgCqwP0
 TlyzST19/uIPQ3MfudILwa3GGAytwTH2tMXA2LCrxn7k9LFQVcbZ06fF2bOcWnYLDtZ6
 zPnITe47Y4Nc1RJZ8XQBzoCh35IMB5CCpOtM3MV5WLT5sDt3UKwmQoRtK8vhmxdHLjnQ
 3fcIcsgZ4zHfZsiFQZOlJdFYs5tHbaic9nzah+G5EAr3hyoE2ZUzJA4wlraLV6RQ0Ah+
 6Rsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VWeXCcV/MlpePmUaN1mA3lyqeOKNfkxC7Dd6zGwowsc=;
 b=r+sWz7Jnt22yOAOxqkk/y/bexSKdUHpvdYqGkiORDqK7KUDOyAS6fmOy5zCZgHwVpM
 M4QXKYepaHQNEGZb+RiKRnA8Px3z4xb2jQCKYoJpuTPT6Zyi261RaiiB0boOU7suHjkW
 IDUvXJ3SdE6IdyTDpGXB23mQlMtWMDNrq1iH8R2r2tv4wG2d8nUuUM155u9WrDFMaZ/3
 nEZQV/iLOx65Cf++jCX6QeRvgiyCvyspnl5MGecapRJGBM8EopshVQWg0wRV8KG21xb3
 Jk395NfhtVtJ8dqVVsFul5FvAxdqj0ey8QdnQx/lt/Eu/mXfBzUVAA4JW9dkbEfsmPuS
 ITGw==
X-Gm-Message-State: AOAM533gwRli+5/uCAtDOg+Q1jlwZU+NqOmECMWfORIbRzF8E/0547Z6
 t1DHfhpQmmd7UQVu3x+jmHw=
X-Google-Smtp-Source: ABdhPJwLslU/ITyVSO1oSqJ6MMNnbkDXFmXiFh5Qe19Ydl+1ZdESLrP3cWFDaJKPxezbK8kl///gFA==
X-Received: by 2002:ac8:7a87:: with SMTP id x7mr28905952qtr.50.1593639868983; 
 Wed, 01 Jul 2020 14:44:28 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:4cd7:9852:3dad:c366:f019:19b3])
 by smtp.gmail.com with ESMTPSA id x197sm6822962qka.74.2020.07.01.14.44.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 14:44:28 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH 1/2] staging: rtl8712: Replace FIELD_OFFSET() with offsetof()
Date: Wed,  1 Jul 2020 18:44:19 -0300
Message-Id: <20200701214420.5566-2-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200701214420.5566-1-mukadr@gmail.com>
References: <20200701214420.5566-1-mukadr@gmail.com>
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
Cc: Mauro Dreissig <mukadr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the existing offsetof() macro instead of duplicating code.

Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/basic_types.h         | 1 -
 drivers/staging/rtl8712/hal_init.c            | 4 ++--
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
 3 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/basic_types.h b/drivers/staging/rtl8712/basic_types.h
index 4ad7f35b1644..b8ecd92ca9d4 100644
--- a/drivers/staging/rtl8712/basic_types.h
+++ b/drivers/staging/rtl8712/basic_types.h
@@ -21,7 +21,6 @@
 
 #define SIZE_T __kernel_size_t
 #define sint signed int
-#define FIELD_OFFSET(s, field)	((addr_t)&((s *)(0))->field)
 
 /* Should we extend this to be host_addr_t and target_addr_t for case:
  *	host : x86_64
diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 40145c0338e4..7293cdc3a43b 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -133,7 +133,7 @@ static u8 chk_fwhdr(struct fw_hdr *pfwhdr, u32 ulfilelength)
 	if (pfwhdr->fw_priv_sz != sizeof(struct fw_priv))
 		return _FAIL;
 	/* check fw_sz & image_fw_sz */
-	fwhdrsz = FIELD_OFFSET(struct fw_hdr, fwpriv) + pfwhdr->fw_priv_sz;
+	fwhdrsz = offsetof(struct fw_hdr, fwpriv) + pfwhdr->fw_priv_sz;
 	fw_sz =  fwhdrsz + pfwhdr->img_IMEM_size + pfwhdr->img_SRAM_size +
 		 pfwhdr->dmem_size;
 	if (fw_sz != ulfilelength)
@@ -173,7 +173,7 @@ static u8 rtl8712_dl_fw(struct _adapter *adapter)
 		txdesc = (struct tx_desc *)(tmpchar + FWBUFF_ALIGN_SZ -
 			    ((addr_t)(tmpchar) & (FWBUFF_ALIGN_SZ - 1)));
 		payload = (u8 *)(txdesc) + txdscp_sz;
-		ptr = (u8 *)mappedfw + FIELD_OFFSET(struct fw_hdr, fwpriv) +
+		ptr = (u8 *)mappedfw + offsetof(struct fw_hdr, fwpriv) +
 		      fwhdr.fw_priv_sz;
 		/* Download FirmWare */
 		/* 1. determine IMEM code size and Load IMEM Code Section */
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 36c89cde525d..90ffb7c9f299 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -407,7 +407,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 			return -ENOMEM;
 		pwep->KeyLength = wep_key_len;
 		pwep->Length = wep_key_len +
-			FIELD_OFFSET(struct NDIS_802_11_WEP, KeyMaterial);
+			offsetof(struct NDIS_802_11_WEP, KeyMaterial);
 		if (wep_key_len == 13) {
 			padapter->securitypriv.PrivacyAlgrthm = _WEP104_;
 			padapter->securitypriv.XGrpPrivacy = _WEP104_;
@@ -1555,7 +1555,7 @@ static int r8711_wx_set_enc(struct net_device *dev,
 	if (erq->length > 0) {
 		wep.KeyLength = erq->length <= 5 ? 5 : 13;
 		wep.Length = wep.KeyLength +
-			     FIELD_OFFSET(struct NDIS_802_11_WEP, KeyMaterial);
+			     offsetof(struct NDIS_802_11_WEP, KeyMaterial);
 	} else {
 		wep.KeyLength = 0;
 		if (keyindex_provided == 1) { /* set key_id only, no given
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
