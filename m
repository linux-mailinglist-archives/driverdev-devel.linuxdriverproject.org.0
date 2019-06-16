Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD9F472C6
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 05:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2B85864B2;
	Sun, 16 Jun 2019 03:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNqIh2YiCnmO; Sun, 16 Jun 2019 03:27:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AACE86322;
	Sun, 16 Jun 2019 03:27:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA0CB1BF372
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 03:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5FBF86322
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 03:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YMmyJYZ6rllq for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 03:27:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0BB8084770
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 03:27:11 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id p184so3752326pfp.7
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 20:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=468/RLQKpIqiti2//KMB81NPRyvxXX0VssP8ZgLdNtw=;
 b=etPgZwUYVMabvNDiHfuYDthpUixrKax2+vMU4U4qKFIZgDXih3zHnvdcziRLeDFBwE
 3r02ZYAJ6PPrd/9EyK519Q4MaJM0LyY7ELMOhfmOpvHXiDDEZG5zMIpFeZUp91y1c1dZ
 KNdLhUSb0Be7TIcKPX05hh9pOUQWPrq12TN94NvoBEZIOMtF+R8sO6GrHJLzW64b5yWj
 YUljYcSIlSmYHDxt6TWxpl0O52wg2FBQJJ/TR34tO7HFL2YaNS+QBdPn/UINxqsAIYCb
 bFDkHnLd9QhcPS4og/ivqLTsmP+BGVwrln/7p90gQWRdlVttNjoNjEeRCp9T233Uwgfv
 GugA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=468/RLQKpIqiti2//KMB81NPRyvxXX0VssP8ZgLdNtw=;
 b=CvViH3qaLMWizof0fpbLzb3bGuOyhklQ9AoDei22N6XciuHLGWhpIxX9e7Wui0Myu+
 E9EeptFsFVU199SmLwtrvzHFJDcdnpweu8y8AdUIzaFV9RYo4aHLjtGiJvy2kU08ugOt
 aD6WEqGUK8Mh7lNU88UViu95b54H3hDIRNdGRFrMet4Bf4mTp27rWQiYgSI9fW/L3TZQ
 uA62HGUIHC/+G8kW1+zNv76FiTB9O91aA15Ynn3YO0WLWdiMf1VCEO2VDn4eJAGPqZlp
 LNB51Rluwme/G55H+wPJD4bwPXl6Z4XOETAgFcyRTtLeBp5Gqpbi549+NqyB85miTE9C
 3xaw==
X-Gm-Message-State: APjAAAXo65Bw1ysqmjDqJXqgSO+KRyKei7kGSqxRyfDJlKcFFwUmA/VT
 0sjjasptIFk7E/Fb55xx0Mw=
X-Google-Smtp-Source: APXvYqxLn4cvOpVNTUHm+i4dJj/N+ModuzP1/ExShNgEha1mvVOgElUNUZ0r/rFUVe5Ixd5nwKllJA==
X-Received: by 2002:a17:90b:8d2:: with SMTP id
 ds18mr19685197pjb.132.1560655630682; 
 Sat, 15 Jun 2019 20:27:10 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id 125sm4615801pfg.99.2019.06.15.20.27.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 20:27:10 -0700 (PDT)
Date: Sun, 16 Jun 2019 08:57:05 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging/rtl8723bs/core: Remove redundant call to memset
Message-ID: <20190616032705.GA13790@hari-Inspiron-1545>
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

rtw_zmalloc is doing memset . So there is no need to call memset again.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index d26d8cf..a8dab1a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2229,7 +2229,6 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 		goto exit;
 	}
 
-	memset(psetauthparm, 0, sizeof(struct setauth_parm));
 	psetauthparm->mode = (unsigned char)psecuritypriv->dot11AuthAlgrthm;
 
 	pcmd->cmdcode = _SetAuth_CMD_;
@@ -2262,7 +2261,6 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 		res = _FAIL;
 		goto exit;
 	}
-	memset(psetkeyparm, 0, sizeof(struct setkey_parm));
 
 	if (psecuritypriv->dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) {
 		psetkeyparm->algorithm = (unsigned char)psecuritypriv->dot118021XGrpPrivacy;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
