Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C254249693
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 03:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4FF18577A;
	Tue, 18 Jun 2019 01:09:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id osgJ5vV_gl_L; Tue, 18 Jun 2019 01:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D52A85773;
	Tue, 18 Jun 2019 01:09:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3F791BF32A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB83920497
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tezUfD7xX2gB for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 01:09:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 07E962002F
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 01:09:09 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id d126so6607866pfd.2
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 18:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=QQb14onWvk/5mY6htEZ+rzhxVBpcQL/nxR/+F9szi7g=;
 b=Oe9x1B7li4jiDVE8u485Jm83AaejnNAgXWJ+AyieGXsjFqYpfIFbQe9lT2D3iYFLGT
 31iJArxFmpM/FxLmzKy7I0PmLRJlFZvH5xcDEf6X+GZC0n/ubKoApsDVJE5RCHFjIpiN
 KkBOn+0+yz2U+4goe/rCl8Bbb8EQP/4MeoQsu3bplTyRZVkGH+ODoO2tf7W9VO4Ig2r6
 K5vw/kzRGxx77l8Yt7ICkP881OlRwZ/STRFw+AQG+OKSMSAsRAsIYMjqXeTEj+XYJICU
 AfTsJR/satdfmtZa4ArkXJYNNCSe2zwepFG8I+neLX1NOcICMafVnuH3dniwVtvhZgYl
 hQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=QQb14onWvk/5mY6htEZ+rzhxVBpcQL/nxR/+F9szi7g=;
 b=bx9371Va572XziIDXreCQybM08Vz4Fk8wy50h4rdxzyngY2EV9mbb15e1UcZTZnvbc
 XsBmZaj9SUgBqHoRDh9nkEBwOxBwTzNqFhhS6zySXrs5WCjuHXVaFzLd+OPql6E7rEFd
 YHQ0MZsoKsdN8mbPLv4kN4fya+aFYrt8DpjJ0rocbRhQN38RZndFEzdK3z1iNxp1nNCy
 OhMVOj3hi/fcMFHI2m/0z70firgaXWx1/O1ojYYHovV1505hzo4m3kvOn9E6/5pHFLRG
 N1/TAap89Zdoel+PqPeZSEjH9NqvKUd1tLFsCG2XQjX9RaHAbt7wl/uQ9yCV+2F49pLP
 aw5g==
X-Gm-Message-State: APjAAAUn79usa819SEuaXG73TKAhvcUlyCXr0EPGevYbJWS09zL7s2FN
 h5Q1uLeMFqVajkAUcQ2Pi+8=
X-Google-Smtp-Source: APXvYqw62UkPTGBZzxxO0k7mcrtLrKHaWyIjtDcpJz4hT0z4eZdtDy5PPzabrsBLFSnpLchTcYx1Qw==
X-Received: by 2002:a63:35c9:: with SMTP id c192mr173085pga.140.1560820148612; 
 Mon, 17 Jun 2019 18:09:08 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id f3sm6915303pfg.165.2019.06.17.18.09.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 18:09:08 -0700 (PDT)
Date: Tue, 18 Jun 2019 06:39:03 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] staging: rtl8723bs: hal: rtl8723b_hal_init: Remove set
 but unused variable
Message-ID: <20190618010903.GA7107@hari-Inspiron-1545>
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

Remove variable pHalData as it is not being used in function.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index b0cc882..6cfd240 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4345,11 +4345,8 @@ void GetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
  */
 u8 SetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, void *pval)
 {
-	struct hal_com_data *pHalData;
 	u8 bResult;
 
-
-	pHalData = GET_HAL_DATA(padapter);
 	bResult = _SUCCESS;
 
 	switch (variable) {
@@ -4367,11 +4364,8 @@ u8 SetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, v
  */
 u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, void *pval)
 {
-	struct hal_com_data *pHalData;
 	u8 bResult;
 
-
-	pHalData = GET_HAL_DATA(padapter);
 	bResult = _SUCCESS;
 
 	switch (variable) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
