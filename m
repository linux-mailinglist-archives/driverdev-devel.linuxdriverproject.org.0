Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0EA3D5E9
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 20:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7603F2262F;
	Tue, 11 Jun 2019 18:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dg1AZGGsw4-1; Tue, 11 Jun 2019 18:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BEB6B22234;
	Tue, 11 Jun 2019 18:55:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01DF11BF425
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 18:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F326085F79
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 18:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZCbOceOHtnAD for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 18:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 67EFB85F75
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 18:55:10 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f25so7456742pgv.10
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 11:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=dbiCszwzEy2LyynB/BzUukSSBRX6PSMXl/5QcFgmSC4=;
 b=Oyffoxom8I92kRwOF0WNENgPvTdr3GRmujPu+NvBny9AIZ+PXYdK/XDAkyA5cj0Wm1
 P3iFY05jCwvbjvsN2SNkQUIndwqYr/zVxmH/VBkKs5LGsQUv+xjT/+HDt1Qi8WDGY2jd
 cKryvoW/E5lzx29YZCYNfrIagRjmrhmsEnNxi6wq1C4wXeYCbgUUUGDOTQPiM+Tb3O27
 3kcxtZevl5HrLcstlYQ1PldAWH1LdtJru41QiDB1zvKGo6841B0ntLcgN/rCBxB7DDne
 Sx9+X1vcUV23yuIWzxiqhKB//hHhX7QlF9FNkmUFeEw0VUpLutDT8xYNrsrt8fE5huSU
 HBOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=dbiCszwzEy2LyynB/BzUukSSBRX6PSMXl/5QcFgmSC4=;
 b=FCoyWq9z4n4McbaLGjC0fFTCGgyhK7BkR9kSABFfEuL7gVcU3tgLjj8SXazVxcfuZP
 BDjZIttXRFTJgac3tFrmkz2bTY6/B0zNBP5AbFcKX0wSnMca9SC3nVDlSqOt9fov8G94
 FfEDacIWR9CLvy3egRZqc2ypyGqBkJfgcojnsXdtN/ZnXbaphNg6g2pLOW63KsiHrldK
 Je1yLB4shkC1/0K+JuVPjnoWLncTCRnPE+6TK44hAbWiP3I0p87qXfyO80gPTtsAZiOy
 UrHqnG6XC+Z2zGF5LfkX+0ilfFbEubCZp84Kv2fYcQFOHOZpcrx7lZgv6ezKNbprua7G
 Q7Dw==
X-Gm-Message-State: APjAAAUCiP4b/OaQn9EmsIUznb+isRms/uLMY7dstvw+OxlrJak89OsW
 aM7Aq4NSrplu7caaQpu+Xik=
X-Google-Smtp-Source: APXvYqx84s0caginVRm/JwqplMJsBTlFQtWDKinEOBfe8H2ZkqFDTRESf77XdFCV7uL6ipvkBL91ng==
X-Received: by 2002:a63:224a:: with SMTP id t10mr12610806pgm.289.1560279310016; 
 Tue, 11 Jun 2019 11:55:10 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id a18sm3119388pjq.0.2019.06.11.11.55.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 11:55:08 -0700 (PDT)
Date: Wed, 12 Jun 2019 00:25:03 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Colin Ian King <colin.king@canonical.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: Change return type to void from u8
Message-ID: <20190611185503.GA9606@hari-Inspiron-1545>
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

The function HalQueryTxOQTBufferStatus8723BSdio always returns true and
caller functions are not bother about return status.

Change return type to void.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c     | 3 +--
 drivers/staging/rtl8723bs/include/sdio_ops.h | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index ac79de8..feb95ed 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -1194,12 +1194,11 @@ u8 HalQueryTxBufferStatus8723BSdio(struct adapter *adapter)
 /* 	Description: */
 /* 		Query SDIO Local register to get the current number of TX OQT Free Space. */
 /*  */
-u8 HalQueryTxOQTBufferStatus8723BSdio(struct adapter *adapter)
+void HalQueryTxOQTBufferStatus8723BSdio(struct adapter *adapter)
 {
 	struct hal_com_data *haldata = GET_HAL_DATA(adapter);
 
 	haldata->SdioTxOQTFreeSpace = SdioLocalCmd52Read1Byte(adapter, SDIO_REG_OQT_FREE_PG);
-	return true;
 }
 
 #if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
diff --git a/drivers/staging/rtl8723bs/include/sdio_ops.h b/drivers/staging/rtl8723bs/include/sdio_ops.h
index 0f117ff..6b0446b 100644
--- a/drivers/staging/rtl8723bs/include/sdio_ops.h
+++ b/drivers/staging/rtl8723bs/include/sdio_ops.h
@@ -33,7 +33,7 @@ extern void InitSysInterrupt8723BSdio(struct adapter *padapter);
 extern void EnableInterrupt8723BSdio(struct adapter *padapter);
 extern void DisableInterrupt8723BSdio(struct adapter *padapter);
 extern u8 HalQueryTxBufferStatus8723BSdio(struct adapter *padapter);
-extern u8 HalQueryTxOQTBufferStatus8723BSdio(struct adapter *padapter);
+extern void HalQueryTxOQTBufferStatus8723BSdio(struct adapter *padapter);
 #if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
 extern void ClearInterrupt8723BSdio(struct adapter *padapter);
 #endif /* CONFIG_WOWLAN */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
