Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 328E533C38D
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:09:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A85464EB76;
	Mon, 15 Mar 2021 17:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uc1fMgZNiLj7; Mon, 15 Mar 2021 17:09:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A476443FF2;
	Mon, 15 Mar 2021 17:09:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 151EA1BF387
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D70547489
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qmEzdBdci2WZ for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 674ED4D751
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:24 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id ox4so51884740ejb.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=yP+ifszkAgnbKTmn/bw4CUGbmjxbS6YBec38E5TqSf4=;
 b=dIrGJgDqfMi7G0lcAlaH+WLmBBq1sZbPsir5raqoo9xdlul+J8U+J6L+y0HiuNPWVQ
 N/nyFEmWZTNrC900zN4xbbeox7I19aZaZd1pcW4RfyJP9O3PK0EKml21sPJiE5wgdWyd
 X3dk1Xzuevy+0/A7GKTnWzUrNFPDnGRp1z9QqmoktQhnnApcFoFKRwnnnl4om/s3YTRv
 BXH0g76NerK1OnT9rcbI86EmKJi0oNmi84Na+IGGoII7dUdHmPCHGBrZqZjZ2pFEjRZ9
 +TsivhXlzdRKNHeXraVNtXW437knfETO9GHrk6Cs0BKq8pBshDYLAy4fKmSgFd1kYKCC
 lNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yP+ifszkAgnbKTmn/bw4CUGbmjxbS6YBec38E5TqSf4=;
 b=bsb1b4OkPCzEcwc3BqS3dOOCSARfrBReezqtHN2l3ufa7fu+/KDkHuG/23S+HMQkD3
 6maP57iBG2y0sKzyvQIwJs/ioHUY7k5/FjIHg6ReVhnmTyh4SJKoVPyUJs6F6pw33uBP
 4VUsnJ+BaQhzyvC/p6X/vnfrDLxiOS9kV1rS6Gs/W6H60Z5Kwr0QihEZ2EBXNVsA8QWj
 PmtEUYfAJPG4qbLO18gGr3xVXh9Q2l8NJ41M8pmY7Al8dp3eXsY9yOj3+0A/4YvMAI+O
 Tsy0wRas2P+kgNdrz7pOBNV76eegnPA3N6wkYDqWFjMf6g861Sx+vYMwyqCeHj0GNgPC
 ICPw==
X-Gm-Message-State: AOAM532nMMYn4hDu+OPbRWOH+9rw7CcRzvqiH5EuamPAazG3S/TXra14
 xzrrHFhObhurjETyQXbWI9k=
X-Google-Smtp-Source: ABdhPJzQRxWbbHjFzhEHTU48iaIHo9JjyO2G5PUNidNLnSzPMlYVMNizNTPmXOQXqxv8Mx+sa/F/xg==
X-Received: by 2002:a17:906:22d4:: with SMTP id
 q20mr25512149eja.54.1615827982727; 
 Mon, 15 Mar 2021 10:06:22 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:22 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 18/57] Staging: rtl8723bs: fix spaces in hal_com.c
Date: Mon, 15 Mar 2021 18:05:39 +0100
Message-Id: <20210315170618.2566-19-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl error:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1292: FILE: ./hal/hal_com.c:1292:
    +	struct DM_ODM_T * podmpriv = &pHalData->odmpriv;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 4a1ca57c2e15..29f5cf22f07e 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1289,7 +1289,7 @@ void SetHalODMVar(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T * podmpriv = &pHalData->odmpriv;
+	struct DM_ODM_T *podmpriv = &pHalData->odmpriv;
 	/* _irqL irqL; */
 	switch (eVariable) {
 	case HAL_ODM_STA_INFO:
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
