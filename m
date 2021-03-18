Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27669340193
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 10:14:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4F324325A;
	Thu, 18 Mar 2021 09:14:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KS9WY9jw6vM; Thu, 18 Mar 2021 09:14:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F5BB4309F;
	Thu, 18 Mar 2021 09:14:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1784D1BF471
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 09:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07108430A0
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 09:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FFVv00CFnD2q for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 09:14:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CD5341566
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 09:14:19 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id x13so4677531wrs.9
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 02:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=BKucLzdro3KHbFXy/FZ0+97pPZlyAwExs7eXjsBI+0M=;
 b=jsIfdlOWe6yjpjtK2O4L9O9y/+jDQ5vhw0UEJTuOi1LrA1yD3L+r+wT5rl0SfdYTVa
 UVrfyoG/gJO4Yz1ho4uZRPGWQV4SEwLGtahmaRcaJj6yxKDKqgDaVl/GA2PXulmWiC6I
 J2V3MRKV7uGVku3FYl0JjlB8jpawo9mi06W4NQo7sS7LcnMhW2PTsXJAcyZODLWOKdiz
 TQSylPyx9aI4zV/IAozsWOZhKdQgNBzbR1Ti5T6ceuLTm8qLckeoiD1njwxiYA15O7DG
 UgTiCOV5SdyhhajkJpgSe9ZfE+742P3FAmvEN/QA+MPnwTC3yQu3fqb06ZIqcLgZHM+L
 OVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=BKucLzdro3KHbFXy/FZ0+97pPZlyAwExs7eXjsBI+0M=;
 b=PCse29Twg+7d/Q2EXXEl926UQRp1j4Ry9w5Ae3cUGJO92x60LEIT9AczvLsLEZBpis
 oMDPJj4q4M/e5yTYgyK80EOGbi+cN2M1gNVFh6gXTDmTT7fkYKOFE1mnmVnOjLpqLaQW
 Qz/cJVOqh7mdYNYwy4Xs9+awkEFdviC5b91iuO0cTeowdg0B2oX71/IXR/mZdOrcm2ez
 bMeb+BUMpqXeQrOLCD6hQcxEcdYJc+nu9muD7nzb/jiyiw1ZmevXAuVZaCnCBE8zNAif
 9KJuHM4qWr4rvrVvDLFwiDUWQLB/EOsaa1v2+B8ZqBNs/aN/uNDyltiunc3Nl7ZaWS9v
 oGWw==
X-Gm-Message-State: AOAM533M17isGDcrFDnNJNIlQyY4kC0XCjcnmgNZJPlmbmTRc/ong8RZ
 DzbEKmYA5z1OeOu06uUuyVY=
X-Google-Smtp-Source: ABdhPJyBMte5nwgCGcw2rV3ofIP3ipWMWxzKktmx8s9ZDjEIl/Q+tTSFTDyhmTbNVgV5R8Fv9QYYCg==
X-Received: by 2002:a05:6000:1363:: with SMTP id
 q3mr8641660wrz.74.1616058857576; 
 Thu, 18 Mar 2021 02:14:17 -0700 (PDT)
Received: from agape.jhs ([5.171.80.211])
 by smtp.gmail.com with ESMTPSA id x23sm1540116wmi.33.2021.03.18.02.14.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 02:14:17 -0700 (PDT)
Date: Thu, 18 Mar 2021 10:14:15 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: staging: rtl8723bs: prefer ftrace
Message-ID: <20210318091415.GA3683@agape.jhs>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

some suggestions before diving in a new task.
The following checkpatch issue:

--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
#559: FILE: drivers/staging/rtl8723bs/core/rtw_ap.c:559:
+	DBG_871X("%s\n", __func__);

simply says to remove the line, due to the existence of the more
appealing ftrace facility, right?

@@ -556,8 +554,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 	/* set intf_tag to if1 */
 	/* psta->intf_tag = 0; */
 
-	DBG_871X("%s\n", __func__);
-
 	/* psta->mac_id = psta->aid+4; */
 	/* psta->mac_id = psta->aid+1;//alloc macid when call rtw_alloc_stainfo(), */
 	/* release macid when call rtw_free_stainfo() */

thank you,

fabio

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
