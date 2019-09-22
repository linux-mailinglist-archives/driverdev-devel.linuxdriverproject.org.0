Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6FBBA062
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Sep 2019 05:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F46A859EA;
	Sun, 22 Sep 2019 03:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N2qa3vdf-FBX; Sun, 22 Sep 2019 03:26:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35F8B85C92;
	Sun, 22 Sep 2019 03:26:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 998761BF3E9
 for <devel@linuxdriverproject.org>; Sun, 22 Sep 2019 03:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9286585721
 for <devel@linuxdriverproject.org>; Sun, 22 Sep 2019 03:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j9zfzBKL88SI for <devel@linuxdriverproject.org>;
 Sun, 22 Sep 2019 03:26:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0513B856F6
 for <devel@driverdev.osuosl.org>; Sun, 22 Sep 2019 03:26:04 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id 4so5962251pgm.12
 for <devel@driverdev.osuosl.org>; Sat, 21 Sep 2019 20:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=efqFt0G9pA4FEsL4by40RHJd9U87XQ8qSxShh9xZDj8=;
 b=NKkkNv/ubnpv0Jj8ZFlvn0WGDnMfpA57JlRp+zi9PkFY/PmI/lN5+iJoMziH7GoOIc
 3+vHf1sjKffd9y0F3QHviEVRpbV13ymUeCIczsOAnrII0/8BwIy/8nnu3Csan0vgDhZM
 Kk/w7tguzLxIneePNCOju53pTFapq8FIBcta7fMPd38xf3HBAkA4Oca0VNL7GiHsxcAJ
 /nM5wV6PKjXI4X2kvzRE85nada8agKTukVasMp1LXo7B/i+z2REbYmhVBIIB48rLe85i
 Rq3KiEiCcKG4/v+pGlGJKrnALAtv1GziGRyAote3IehU5LnOMdLdbVCLiXnh1g2Ypoq6
 HoDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=efqFt0G9pA4FEsL4by40RHJd9U87XQ8qSxShh9xZDj8=;
 b=fs0G2EOOUzEyF3TMEm3knLfgx9cx8pLo6fipjkxv317y4+NGmkTjpv0pqzhDap3pIt
 u04LzuAQM2IEfm1nuXmjoaVY0x/8yM1K3z0A51OJszs6YpZcr7QwycQz1S/8gWXlC1MW
 +WqKIb1xD0X03XB1cV0k+is4i0JbSGinTVf3Cmdbz9l0PeTNlFbkuudS1Yvhcdfmcn0e
 VAW/80gR77sWI2xpdD4rTpxxRR/aHBFTfqJ3pPZfn+NOXXFQAAAOYR7IyRwMLgnbA6Va
 6yY97ZZK6d7tXhcZITgSvciauc3yX/U0qCvX/taapdy+jMeHMa8m1vLiAE3KUkpU+2k/
 6OXg==
X-Gm-Message-State: APjAAAWL2hugIsvWWcThUd0NknksuAq/A26+9h/A9b2HvkQsubiGh3fy
 0yYpL7NzKfETaTsG/XQaKXg=
X-Google-Smtp-Source: APXvYqydfZLRZJBQ3aVeQN/Bk/tbbYn++p8AXRZ5YrEpJPR91t1muKXmDgvqvguhHUus4/9gSeEq0A==
X-Received: by 2002:a17:90a:8809:: with SMTP id
 s9mr2246021pjn.125.1569122763301; 
 Sat, 21 Sep 2019 20:26:03 -0700 (PDT)
Received: from saurav ([123.201.105.106])
 by smtp.gmail.com with ESMTPSA id i194sm13112519pgc.0.2019.09.21.20.26.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 20:26:02 -0700 (PDT)
Date: Sun, 22 Sep 2019 08:55:56 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, nishkadg.linux@gmail.com;,
 madhumithabiw@gmail.com;, hdegoede@redhat.com;, arnd@arndb.de;,
 hardiksingh.k@gmail.com;, saurav.girepunje@gmail.com;,
 devel@driverdev.osuosl.org;, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: Drop condition with no effect
Message-ID: <20190922032552.GA9204@saurav>
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As the "else if" and "else" branch body are identical the condition
has no effect. So drop the "else if" condition

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index c6565b0e502c..3f2f9b12cb61 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -507,19 +507,9 @@ int rtw_cmd_thread(void *context)
 
 		cmd_process_time = jiffies_to_msecs(jiffies - cmd_start_time);
 		if (cmd_process_time > 1000) {
-			if (pcmd->cmdcode == GEN_CMD_CODE(_Set_Drv_Extra)) {
-				DBG_871X(ADPT_FMT" cmd =%d process_time =%lu > 1 sec\n",
-					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
-				/* rtw_warn_on(1); */
-			} else if (pcmd->cmdcode == GEN_CMD_CODE(_Set_MLME_EVT)) {
 				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
 					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
 				/* rtw_warn_on(1); */
-			} else {
-				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
-					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
-				/* rtw_warn_on(1); */
-			}
 		}
 
 		/* call callback function for post-processed */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
