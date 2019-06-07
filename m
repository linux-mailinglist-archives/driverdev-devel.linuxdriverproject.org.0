Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB6C38C30
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 16:07:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8A6488262;
	Fri,  7 Jun 2019 14:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jQpsV8k4FEmu; Fri,  7 Jun 2019 14:07:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BE2886747;
	Fri,  7 Jun 2019 14:07:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE6C01BF5DA
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 14:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB4CA86D67
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 14:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 10qU9mOjzK+u for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 14:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2204184995
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 14:07:14 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id v11so1238321pgl.5
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 07:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w68ouI0UY8djBNDhDsJy+gGnHUNrSjiyh8Ahtch+loE=;
 b=sHxLExnQRiiKepaTyp4J5/evrteT8xPFZk5OAWQUOLcVtiksseWOVDZ2jimQxpFJCQ
 88XYGZndQ3WcnikN3kiv/3wpVazb+glKAm4Z0BryexF9P8Q2y0LGa3HpN6cqewVEnFvA
 uoxS6tSmyQ6XiWLcwE1uU9OTYzFQhWE9m3tHgNqDFO0m4hopSWfjeSHMxiexL9GuOVhm
 TpXrpI965V2yt3k+K/Icm7WhwI/u40esCYJzPnb+vYqj2FDOcdileW/Hs75M5yY+7Pit
 OHjmBu3QBJP+t3daLVVXror4I7pDoy+tZw87OTbsurgd/NYuQB6wMjtoZvZxsQLz7/vt
 X0jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w68ouI0UY8djBNDhDsJy+gGnHUNrSjiyh8Ahtch+loE=;
 b=a/M6nXF9CWNRuNhpuN2zivNddRKBCwVICGwMrFKjzDCyyNTuCpZ6nOyLMc40LlH7f9
 Aqe3H290Wp0PGX5sN8Rm9GilShSpGTTMWSWXWJbi7eEQVIbFtu9RHlZVNmEJ1rhryBs0
 4Wz2rQ2lAwiJ+DLt3byxlGRENIW5I8nVFf15sBzYpLNfT8+jvG+NzAI+w9K9joDiWDjA
 ygZEz8ktEM/zSwxar+sx5WIpWQNK5SsUFkCpaCY6MHK7961veEGTG4i+7ahUMJ/Sff+A
 VmCAHI+rRH9QzrnS+ZPJpYYHU4V2w0mTgneLM5mmrI/uw8qLm35ZRdjZ0PXhl1ZSRg7U
 mHEQ==
X-Gm-Message-State: APjAAAUl+nUTFjblivlNIs9jZjDsisWYR6hjr4VRJF25hV72JOchDQys
 jRw9wvHfQny59g/50n18uCU=
X-Google-Smtp-Source: APXvYqyjaZ9v04OcHSwvjnhQp44PZBimRAIR9Jc6Q2E7NeuunokrETeS25wWWXDGnmFwoictBjx++w==
X-Received: by 2002:a65:5302:: with SMTP id m2mr2771049pgq.369.1559916433683; 
 Fri, 07 Jun 2019 07:07:13 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id j7sm7071983pjb.26.2019.06.07.07.07.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 07:07:12 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, straube.linux@gmail.com,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 colin.king@canonical.com, valdis.kletnieks@vt.edu, tiny.windzz@gmail.com
Subject: [PATCH 1/2] staging: rtl8712: r8712_setdatarate_cmd(): Change
Date: Fri,  7 Jun 2019 19:36:57 +0530
Message-Id: <20190607140658.11932-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change the return values of function r8712_setdatarate_cmd from _SUCCESS
and _FAIL to 0 and -ENOMEM respectively.
Change the return type of the function from u8 to int to reflect this.
Change the call site of the function to check for 0 instead of _SUCCESS.
(Checking that the return value != 0 is not necessary; the return value
itself can simply be passed into the conditional.)

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c         | 8 ++++----
 drivers/staging/rtl8712/rtl871x_cmd.h         | 2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 05a78ac24987..e478c031f95f 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -242,7 +242,7 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 	return _SUCCESS;
 }
 
-u8 r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset)
+int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset)
 {
 	struct cmd_obj		*ph2c;
 	struct setdatarate_parm	*pbsetdataratepara;
@@ -250,18 +250,18 @@ u8 r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return -ENOMEM;
 	pbsetdataratepara = kmalloc(sizeof(*pbsetdataratepara), GFP_ATOMIC);
 	if (!pbsetdataratepara) {
 		kfree(ph2c);
-		return _FAIL;
+		return -ENOMEM;
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, pbsetdataratepara,
 				   GEN_CMD_CODE(_SetDataRate));
 	pbsetdataratepara->mac_id = 5;
 	memcpy(pbsetdataratepara->datarates, rateset, NumRates);
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
+	return 0;
 }
 
 u8 r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 262984c58efb..800216cca2f6 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -719,7 +719,7 @@ u8 r8712_joinbss_cmd(struct _adapter *padapter,
 u8 r8712_disassoc_cmd(struct _adapter *padapter);
 u8 r8712_setopmode_cmd(struct _adapter *padapter,
 		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
-u8 r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
+int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
 u8 r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
 u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset);
 u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval);
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index b424b8436fcf..761e2ba68a42 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1367,7 +1367,7 @@ static int r8711_wx_set_rate(struct net_device *dev,
 			datarates[i] = 0xff;
 		}
 	}
-	if (r8712_setdatarate_cmd(padapter, datarates) != _SUCCESS)
+	if (r8712_setdatarate_cmd(padapter, datarates))
 		ret = -ENOMEM;
 	return ret;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
