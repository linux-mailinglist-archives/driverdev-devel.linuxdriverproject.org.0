Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F7F5AA19
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:22:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09385876BD;
	Sat, 29 Jun 2019 10:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1xuK+mG33DRB; Sat, 29 Jun 2019 10:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C75E487631;
	Sat, 29 Jun 2019 10:22:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 172AD1BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1342887631
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ukoAR2x4yScS for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:22:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8DF2784E4E
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:22:51 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id q4so2236158pgj.8
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=mk94RXz9RbYmNlsAwePZkKE+FVfS/zkDopugHxCtBXc=;
 b=JNJMQ8eCufU2eLT/mkS3juwj8990gOhfuYb7cNLs8ZykSRwiYQPiY0LHx7vJoK4Tba
 GMxIEMDN1f5SIWqGhy35JSQHVy0DISAeFsTWII54AvRZOpttM0wJudF51tvozSImnmSO
 GdWX33zavKjkB7IgT4QKYONDFfeXOvau4AhPEDgODF+II+pq4xpc5YLXjC9tFOYTCkYp
 SobHX1eLaA/rs6rdYHDi8zik5Da66faE2ssmAkI1WTedL/DHIIAKoEi+Bp223hzXDdQd
 LqGJ98RPBrIglKLq7uYwE18+VhXtM12d8Khd1TAS1qiU1fCNbRGVBwmIXytnKo52Q1j5
 LrTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=mk94RXz9RbYmNlsAwePZkKE+FVfS/zkDopugHxCtBXc=;
 b=DN3HMdi0A+GY+J4VlAerX8oFjAl9xAaYRZw7zMFWhsPRH3iC7UEDfg9kxOG3AqKCpR
 BNTokpcRYNRuapWwZ/ipFd5MpOfYidE2WSoM6WxjOCCZyp71uO8wc5ZCuMf8y7EfmuT+
 1Al/sxL5nToShtok21uuVDLySKvcXW9dy8vxqMSR7yaFx/g8KgWNk4Rcw6c2JktHo6mA
 9GJ/h/rlDIkRizLzqtsNs4iCxMq/AxVcOzZGDRIq24D61PYuuHr9CFXdOTzLYOxcN2L8
 /BhLkTTaE4IxcFe0Qc5rUcSb/cgOG15sbaXiiCNgao1Cm8lAVOKraRvp1SVAxnZDbQbn
 lF9g==
X-Gm-Message-State: APjAAAUHxPtcx4nSHt19syURkxgWj3R6F7JMOh9zitbvklyESAcVpG+U
 Agl0HvmhtbvfLJ7fjN/xWkE=
X-Google-Smtp-Source: APXvYqx3xbe5HQEZFR4EEL8IU0+as94egYt5mWZnuF90qF7kkJ5onMxWwsWRgE6a866YgzE+tlcBdA==
X-Received: by 2002:a63:7f07:: with SMTP id a7mr13589957pgd.26.1561803771236; 
 Sat, 29 Jun 2019 03:22:51 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id f7sm4778667pfd.43.2019.06.29.03.22.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:22:50 -0700 (PDT)
Date: Sat, 29 Jun 2019 15:52:46 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Colin Ian King <colin.king@canonical.com>,
 Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 04/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629102246.GA15070@hari-Inspiron-1545>
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

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 3367644..aabcb32 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -1191,7 +1191,7 @@ s8 PHY_GetTxPowerTrackingOffset(struct adapter *padapter, u8 RFPath, u8 Rate)
 	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
 	s8 offset = 0;
 
-	if (pDM_Odm->RFCalibrateInfo.TxPowerTrackControl  == false)
+	if (!pDM_Odm->RFCalibrateInfo.TxPowerTrackControl)
 		return offset;
 
 	if ((Rate == MGN_1M) || (Rate == MGN_2M) || (Rate == MGN_5_5M) || (Rate == MGN_11M)) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
