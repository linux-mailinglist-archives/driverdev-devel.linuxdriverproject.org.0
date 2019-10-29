Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0808E7E23
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 02:43:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 749618641F;
	Tue, 29 Oct 2019 01:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MG32yoOjlQjd; Tue, 29 Oct 2019 01:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D1DAE863A6;
	Tue, 29 Oct 2019 01:43:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 817901BF3BE
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 729BD86224
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 01:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwtnsIUn4X+T for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 01:43:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CEE3981F34
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 01:43:31 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id y39so12420806qty.0
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 18:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X6pL/xiDS/rERWaTtkpN3WZ9KElC/+F38pnanmSrxfQ=;
 b=Vr5P6YWnWuty2sCRj0ER73ABkvrtifU2f1UD80c8mj+f05Lxxt8lmWBrY2a6CAx1aK
 xwGFdy1+liMSJ4p1Gkb5KkjE95ftnNQ0TeoN7aClTPc4uihitkyIahRbQ/g03HIuR1Is
 2iLbNtm0VSqXa8WJzgYClo7XG2TUkUp17HOO/tHgj+119DiauPpXlSYr8sTCNMW5uIfA
 gt+Xn1gb5p2fW1CWvTmzf1Feoe41RYCI7rFp/YzCjylxY3q40DXv3DbCzqOLoFNB0j8X
 9d66q8WzDOaRrsCwneRXamAFX9us1hs1afapF/LrgrSZ1lDctrGYAVwzweIKMKwvjwqr
 eWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X6pL/xiDS/rERWaTtkpN3WZ9KElC/+F38pnanmSrxfQ=;
 b=nhOb1PFh3bUlPZfpQxdOBtIWg/a52WBEo0Dl0Kg9CpgnnGXjGexWJBwYd9IiiCoU9m
 cZh5dNyYGl/avcrrs7dXUgfCKiNAhTeQV/1lfEjYJbvXI1mG2Zp5A7g0NoWIqN1XSFEI
 LtqoXJASsG0Ky2vTD8phEtZFLU4DsaYvnuT7LjJF/Pp7slVkdfDSkFAFlRB/cqeFKKGi
 nG2/pP8UxQml7sKCrFV/KHd8ff9pQkCm9xr8CRrOkschpqbjvlXKJcLsVziOSAQ+0YFi
 Z8PiNAB1YlE15365Azz/CqOpY25Bhei0aGKvw7PaIPND+xpENJpLcanyPJS0PnHyK5VM
 LzyA==
X-Gm-Message-State: APjAAAX5KOG6ZtSQMy+8o4qTq0qTDNdUed05DpyWXZA6iRYAarhWKgkT
 ESsoryi7FRoGjzU1dHH6ivY=
X-Google-Smtp-Source: APXvYqxX0Is+dPs5ACZzrvpZ7WEkYJWt7NYWebIuP8UZ8Lv2cbiBwlOWjIl1MYk32y891DL3YMooZQ==
X-Received: by 2002:ac8:5354:: with SMTP id d20mr1686212qto.229.1572313410756; 
 Mon, 28 Oct 2019 18:43:30 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
 by smtp.gmail.com with ESMTPSA id
 197sm6698394qkh.80.2019.10.28.18.43.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 18:43:30 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH 2/5] staging: rts5208: Eliminate the use of Camel Case in file
 ms.h
Date: Mon, 28 Oct 2019 22:43:13 -0300
Message-Id: <20191029014316.6452-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in file ms.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++++++------------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/rts5208/ms.h b/drivers/staging/rts5208/ms.h
index 952cc14dd079..dc7289ba9c4c 100644
--- a/drivers/staging/rts5208/ms.h
+++ b/drivers/staging/rts5208/ms.h
@@ -92,37 +92,37 @@
 #define PRO_FORMAT		0x10
 #define PRO_SLEEP		0x11
 
-#define	IntReg			0x01
-#define StatusReg0		0x02
-#define StatusReg1		0x03
-
-#define SystemParm		0x10
-#define BlockAdrs		0x11
-#define CMDParm			0x14
-#define PageAdrs		0x15
-
-#define OverwriteFlag		0x16
-#define ManagemenFlag		0x17
-#define LogicalAdrs		0x18
-#define ReserveArea		0x1A
-
-#define	Pro_IntReg		0x01
-#define Pro_StatusReg		0x02
-#define Pro_TypeReg		0x04
-#define	Pro_IFModeReg		0x05
-#define Pro_CatagoryReg		0x06
-#define Pro_ClassReg		0x07
-
-#define Pro_SystemParm		0x10
-#define Pro_DataCount1		0x11
-#define Pro_DataCount0		0x12
-#define Pro_DataAddr3		0x13
-#define Pro_DataAddr2		0x14
-#define Pro_DataAddr1		0x15
-#define Pro_DataAddr0		0x16
-
-#define Pro_TPCParm		0x17
-#define Pro_CMDParm		0x18
+#define int_REG			0x01
+#define status_reg0		0x02
+#define status_reg1		0x03
+
+#define system_parm		0x10
+#define block_adrs		0x11
+#define CMD_parm		0x14
+#define page_adrs		0x15
+
+#define overwrite_flag		0x16
+#define managemen_flag		0x17
+#define logical_adrs		0x18
+#define reserve_area		0x1A
+
+#define pro_int_REG		0x01
+#define pro_status_reg		0x02
+#define pro_type_reg		0x04
+#define pro_IF_mode_reg		0x05
+#define pro_category_reg	0x06
+#define pro_class_reg		0x07
+
+#define pro_system_parm		0x10
+#define pro_data_count1		0x11
+#define pro_data_count0		0x12
+#define pro_data_addr3		0x13
+#define pro_data_addr2		0x14
+#define pro_data_addr1		0x15
+#define pro_data_addr0		0x16
+
+#define pro_TPC_parm		0x17
+#define pro_CMD_parm		0x18
 
 #define	INT_REG_CED		0x80
 #define	INT_REG_ERR		0x40
@@ -152,12 +152,12 @@
 #define	PAGE_SIZE_0		(PPBUF_BASE2 + 0x1a0 + 8)
 #define	PAGE_SIZE_1		(PPBUF_BASE2 + 0x1a0 + 9)
 
-#define MS_Device_Type		(PPBUF_BASE2 + 0x1D8)
+#define MS_device_type		(PPBUF_BASE2 + 0x1D8)
 
-#define	MS_4bit_Support		(PPBUF_BASE2 + 0x1D3)
+#define MS_4bit_support		(PPBUF_BASE2 + 0x1D3)
 
-#define setPS_NG	1
-#define setPS_Error	0
+#define set_PS_NG	1
+#define set_PS_error	0
 
 #define	PARALLEL_8BIT_IF	0x40
 #define	PARALLEL_4BIT_IF	0x00
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
