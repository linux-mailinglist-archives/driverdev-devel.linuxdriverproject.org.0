Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F37EF4B007
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 04:30:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39F7787AFE;
	Wed, 19 Jun 2019 02:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qohiu8zWujH4; Wed, 19 Jun 2019 02:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BC92987A72;
	Wed, 19 Jun 2019 02:30:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 431DD1BF357
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 02:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3B3D78620B
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 02:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sR0Po0nLap2F for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 02:30:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E26AE84BA5
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 02:30:15 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id p1so6521861plo.2
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 19:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Hp7DHtibmJwvDlg9A4mEprONZytCRnxVVBzTxg8OHYo=;
 b=czkRtXS/k/PIDvk0gtpQpNB5VZxZherTZ9PRlTPnBwnjA/igg0LR2lOuUP5WT/rYgs
 Gp1so9Gfkp3mc6xC98nyHT6g4S+KnaR7bsDuxWN8+Y+rTzjObM+F9BgKArgSmZR13TGs
 uWGbx0LO/wo7UOWRlkSEaVcqH+1lKM7fG8tFV4gPNhPJJcpUbqzMQl0OxxSPfQOc7CbG
 rmrD0WP57rpXBIK62Gkq9J4Zc2r8rNgBuf/x9v93yHfJrFcNTCyxrcDzyidZa41Sa5n8
 nga8JQ9Pij0H46ixiXryHy8D2VI1/UK6brZpGaUe+ykruxDtpM0RGm+HhWkhVpVQqmkn
 ffmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Hp7DHtibmJwvDlg9A4mEprONZytCRnxVVBzTxg8OHYo=;
 b=okmbgOwbhTghfolcv7aMR9EBMyI+qfYn5mf02NFGLYjj8zjKzEiULCFjb2hL63WYD2
 MSqex73tVFBlXNTqrFbHoLSbmKfnkuperRlmWQRzgqXiB6IHgZpAZg9gBu7wLEjuIJbG
 K3Wcf+ja/+z+qcVATF5RzM9yGf2kEieGmWylKSuDBh5PcZloS3OoYh040j4gdEti7TBC
 9wBdgiDiknRHMLb7BCEId58RZ5u1BYiZlPQ193waOKdACbLzgxFlj+dsDDiSpRTRYeIS
 B2I/jLt7trHmW+7TJXfC0UbrCNpkHvK2IuDL1k1OylzKUTBCqDZ1RRYlaZG56SCMdE2h
 AGCQ==
X-Gm-Message-State: APjAAAUHKgdeeNPGP0Jw5t0c/JCzbazSR5zGZbNC8U0utTZoymUdstQq
 prcFRktIWe6KKgduMglVP0A=
X-Google-Smtp-Source: APXvYqyHuCR/eXIW2UITGM18yxwMTR+iDtanNqySjG6vDTWCzZqFLXXb4U4Pay9MxueOrk3QofwtBg==
X-Received: by 2002:a17:902:bd0a:: with SMTP id
 p10mr41544490pls.134.1560911415555; 
 Tue, 18 Jun 2019 19:30:15 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id f186sm21041254pfb.5.2019.06.18.19.30.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 19:30:14 -0700 (PDT)
Date: Wed, 19 Jun 2019 08:00:10 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: odm_RegConfig8723B: fix Lines
 should not end with a '('
Message-ID: <20190619023010.GA21587@hari-Inspiron-1545>
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

this patch fixes below issue reported by checkpatch.pl

CHECK: Lines should not end with a '('
CHECK: Lines should not end with a '('

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h | 61 ++++++++++------------
 1 file changed, 28 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
index 12dfc58..07b5859 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
+++ b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h
@@ -7,51 +7,46 @@
 #ifndef __INC_ODM_REGCONFIG_H_8723B
 #define __INC_ODM_REGCONFIG_H_8723B
 
-void odm_ConfigRFReg_8723B(
-	PDM_ODM_T pDM_Odm,
-	u32 Addr,
-	u32 Data,
-	ODM_RF_RADIO_PATH_E RF_PATH,
-	u32 RegAddr
+void odm_ConfigRFReg_8723B(PDM_ODM_T pDM_Odm,
+			   u32 Addr,
+			   u32 Data,
+			   ODM_RF_RADIO_PATH_E RF_PATH,
+			   u32 RegAddr
 );
 
 void odm_ConfigRF_RadioA_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u32 Data);
 
 void odm_ConfigMAC_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u8 Data);
 
-void odm_ConfigBB_AGC_8723B(
-	PDM_ODM_T pDM_Odm,
-	u32 Addr,
-	u32 Bitmask,
-	u32 Data
+void odm_ConfigBB_AGC_8723B(PDM_ODM_T pDM_Odm,
+			    u32 Addr,
+			    u32 Bitmask,
+			    u32 Data
 );
 
-void odm_ConfigBB_PHY_REG_PG_8723B(
-	PDM_ODM_T pDM_Odm,
-	u32 Band,
-	u32 RfPath,
-	u32 TxNum,
-	u32 Addr,
-	u32 Bitmask,
-	u32 Data
+void odm_ConfigBB_PHY_REG_PG_8723B(PDM_ODM_T pDM_Odm,
+				   u32 Band,
+				   u32 RfPath,
+				   u32 TxNum,
+				   u32 Addr,
+				   u32 Bitmask,
+				   u32 Data
 );
 
-void odm_ConfigBB_PHY_8723B(
-	PDM_ODM_T pDM_Odm,
-	u32 Addr,
-	u32 Bitmask,
-	u32 Data
+void odm_ConfigBB_PHY_8723B(PDM_ODM_T pDM_Odm,
+			    u32 Addr,
+			    u32 Bitmask,
+			    u32 Data
 );
 
-void odm_ConfigBB_TXPWR_LMT_8723B(
-	PDM_ODM_T pDM_Odm,
-	u8 *Regulation,
-	u8 *Band,
-	u8 *Bandwidth,
-	u8 *RateSection,
-	u8 *RfPath,
-	u8 *Channel,
-	u8 *PowerLimit
+void odm_ConfigBB_TXPWR_LMT_8723B(PDM_ODM_T pDM_Odm,
+				  u8 *Regulation,
+				  u8 *Band,
+				  u8 *Bandwidth,
+				  u8 *RateSection,
+				  u8 *RfPath,
+				  u8 *Channel,
+				  u8 *PowerLimit
 );
 
 #endif
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
