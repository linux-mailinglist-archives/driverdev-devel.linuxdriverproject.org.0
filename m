Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 478D14969E
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 03:20:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6DC3B204AA;
	Tue, 18 Jun 2019 01:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxiIEE6eV4CJ; Tue, 18 Jun 2019 01:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D1C2420499;
	Tue, 18 Jun 2019 01:20:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F1001BF32A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7C10B848F4
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzj-sHBKdeZh for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 01:20:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DBF958474A
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 01:20:11 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id c14so4974553plo.0
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 18:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=AuHccIdSxPbt86ZJkXZzP91IaZ8/7FsD2wmDGIVu61M=;
 b=gbHv0ugum9zXI3n7MsAdeKtL3MTfXanNJBbnNSGb+cUVrX9fJmnj2pKhTm1F2nsD9d
 a5EAtPuIZCywAG1YhzX/PBFeCqnKlbHe+e0cALtBivbUz3WO13WyEUv1Wxxy7hOb+5Z8
 m8CKot7KkocPxV5DaCPWnWGhlZo9FLGDSMpNO98qXEiOXMuWkPJq/GfWIDxourXzRjWE
 ETXRRAv/+E8m65I5r+eTblPVFJ/RbDY9F7xSPWVJj3/xjZ66G7N53NFLE1M/MkQz3fn+
 yYKNoazoG5Mh5DztKJXb5Ia02uaDQDHImDQlSFGvRW5TpFvvgCXAzCC60PrvqLS9d8SK
 eg2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=AuHccIdSxPbt86ZJkXZzP91IaZ8/7FsD2wmDGIVu61M=;
 b=ITkW+VFCwfNDRrNAcx7iT7sVgUVeOW6tPKp4EwSCAIOgqalY4RtKKqyi/36wKtwtCZ
 6eo/uSjWmb2WCSvZYw9Z5goIxKGCd0aA3wahhfBQ10XnlOBh+T2j+Q+X8tbFayATFM8E
 Gqw3LGMq9LbRIEJiX5mcTN9PdrZfDNzvObnaQM9r71gixzUaHIcvihlb1vIJxtEaL6qf
 WCf1XwP8mb2PrUPW9voYzAqywxnVV8viHZa/ITOCsOgaqdNEwTm5JgVEaSuetWDmEYAB
 OGfLSBzO4Q5x2uQPZlZf+zhd6gT8aQyPFvYPJKhkFQctTWfcqMPWbuNT+Ls0xsqm0f/c
 SE3Q==
X-Gm-Message-State: APjAAAV7QkWbZTuUZsPrDQ76NzGxb22jbb+2Zhtio434pcz/dUBv+YDy
 /f0eYv/kFlBJAEjR54Va62Z9A6TC
X-Google-Smtp-Source: APXvYqwyQ1urEoas4pLxiFnN/OcxePRhS51EIPNamFdJr3m1TCl0OnaXoJfEWuhuzFCUaOHkzluMmA==
X-Received: by 2002:a17:902:42a5:: with SMTP id
 h34mr74671190pld.16.1560820811540; 
 Mon, 17 Jun 2019 18:20:11 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id a3sm11674246pff.122.2019.06.17.18.20.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 18:20:11 -0700 (PDT)
Date: Tue, 18 Jun 2019 06:50:07 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: rtl8723b_rf6052: fix spaces
 preferred around unary operator
Message-ID: <20190618012007.GA7871@hari-Inspiron-1545>
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

ERROR: spaces required around that '<<' (ctx:VxV)

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
index aa45a84..c205345 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
@@ -114,12 +114,12 @@ static int phy_RF6052_Config_ParaFile(struct adapter *Adapter)
 			break;
 		case RF_PATH_B:
 		case RF_PATH_D:
-			u4RegValue = PHY_QueryBBReg(Adapter, pPhyReg->rfintfs, bRFSI_RFENV<<16);
+			u4RegValue = PHY_QueryBBReg(Adapter, pPhyReg->rfintfs, bRFSI_RFENV << 16);
 			break;
 		}
 
 		/*----Set RF_ENV enable----*/
-		PHY_SetBBReg(Adapter, pPhyReg->rfintfe, bRFSI_RFENV<<16, 0x1);
+		PHY_SetBBReg(Adapter, pPhyReg->rfintfe, bRFSI_RFENV << 16, 0x1);
 		udelay(1);/* PlatformStallExecution(1); */
 
 		/*----Set RF_ENV output high----*/
@@ -163,7 +163,7 @@ static int phy_RF6052_Config_ParaFile(struct adapter *Adapter)
 			break;
 		case RF_PATH_B:
 		case RF_PATH_D:
-			PHY_SetBBReg(Adapter, pPhyReg->rfintfs, bRFSI_RFENV<<16, u4RegValue);
+			PHY_SetBBReg(Adapter, pPhyReg->rfintfs, bRFSI_RFENV << 16, u4RegValue);
 			break;
 		}
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
