Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BBE33FAF9
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:22:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 122E14EDF4;
	Wed, 17 Mar 2021 22:22:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iVbXvaPk2hhO; Wed, 17 Mar 2021 22:22:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E89C14EDCC;
	Wed, 17 Mar 2021 22:22:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F9DF1BF9C6
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D7364EDDA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id medb3p25gHM6 for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B849F4EDD3
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:22 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id y6so4223166eds.1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=FUnsCSfNrrD6jZ6pH+jcOo6WpSMvPHw71WDCi2x4Sbg=;
 b=q1iq2pH9JIwFJhdaaEk5EAVWm3VokGOvnUzgk63Qnfplwuwe2SM1om2HPc/LIQxghK
 +D5SuHTxSwdJjLqBvxXlGcvwKuUs3fcg32Pl8lMJ4UZTY/cPyQjyQeIaKlozvy+NND99
 0yoN2jDtPYfPiIwJxPQ2pytH6anNL9i0ueMdFaFA0iYw66nnuepVOV0ARxPVC9zjexCO
 GLT4mhgvz/8lTM+5zRRcvTntU55GxxH4mekDUrKIQpX6LEOCzgDbm3Th6w9yLAdRNpMp
 ALg5dzN0bfD9omWTVYV1U8fBLvOn6UTIC0T8PA/xjgbs5BIgI77Vw4rFj/MrnxE+woZR
 +mrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FUnsCSfNrrD6jZ6pH+jcOo6WpSMvPHw71WDCi2x4Sbg=;
 b=CTvowBM1N7Sh4rYB8xXRncyYYWRDCqVxHtwA/d31a1shgK15gDTQeb/BR0o6eJmXBV
 HBr7XF4vY3JM7JLYz5i/ohDiNhDLXjDjeBzEa6TIz6xckkqvqNxGYpzvjhqUjh0IN3S7
 lJyDyUsW8Y4j+bETOMzd/rJRS9eeRZlcVXwxiElM4oNJOrC5wIeR3mZeVIeN76I+vPaq
 69s/10PAQY0qFxEMmfnapYaYfD1tbbLaq1HedhH8Bm7QjWRSLssHnMRI8CjHQTKV+jF5
 +ALsej/Hxndw7JKCOBE4b5z/ctah8YLm3xMtj9HP0QkLVoi1g0EUzwR7YTwMu3l9xjvV
 Nwuw==
X-Gm-Message-State: AOAM530gAJB6wJGq/OUxRNTVY30fGMDeE+zqqUu1GgQtAMdloJJYUK5Z
 uOA9HJYGAVan32pRfPfovtA=
X-Google-Smtp-Source: ABdhPJxiX9rWS42iak3VbM3MT8Zrq2Sc4bfvnH/F5T0ch2gRg04T00GgNoIDcxxKqKnbUYu5NUIrAg==
X-Received: by 2002:aa7:d385:: with SMTP id x5mr45080030edq.289.1616019680791; 
 Wed, 17 Mar 2021 15:21:20 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:20 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 03/43] Staging: rtl8723bs: fix names in rtw_pwrctrl.h
Date: Wed, 17 Mar 2021 23:20:50 +0100
Message-Id: <20210317222130.29528-4-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/rtw_pwrctrl.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c    | 4 ++--
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 2e6c522b74e3..c2a2cec35d55 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1304,7 +1304,7 @@ int rtw_pm_set_ips(struct adapter *padapter, u8 mode)
  * ATTENTION:
  *This function will request pwrctrl LOCK!
  */
-void rtw_ps_deny(struct adapter *padapter, enum PS_DENY_REASON reason)
+void rtw_ps_deny(struct adapter *padapter, enum ps_deny_reason reason)
 {
 	struct pwrctrl_priv *pwrpriv;
 
@@ -1329,7 +1329,7 @@ void rtw_ps_deny(struct adapter *padapter, enum PS_DENY_REASON reason)
  * ATTENTION:
  *This function will request pwrctrl LOCK!
  */
-void rtw_ps_deny_cancel(struct adapter *padapter, enum PS_DENY_REASON reason)
+void rtw_ps_deny_cancel(struct adapter *padapter, enum ps_deny_reason reason)
 {
 	struct pwrctrl_priv *pwrpriv;
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 33e33591006d..cec9fc0cf794 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -141,7 +141,7 @@ enum { /*  for ips_mode */
 };
 
 /*  Design for pwrctrl_priv.ips_deny, 32 bits for 32 reasons at most */
-enum PS_DENY_REASON {
+enum ps_deny_reason {
 	PS_DENY_DRV_INITIAL = 0,
 	PS_DENY_SCAN,
 	PS_DENY_JOIN,
@@ -192,7 +192,7 @@ struct pwrctrl_priv {
 	u8 pre_ips_type;/*  0: default flow, 1: carddisbale flow */
 
 	/*  ps_deny: if 0, power save is free to go; otherwise deny all kinds of power save. */
-	/*  Use PS_DENY_REASON to decide reason. */
+	/*  Use enum ps_deny_reason to decide reason. */
 	/*  Don't access this variable directly without control function, */
 	/*  and this variable should be protected by lock. */
 	u32 ps_deny;
@@ -290,8 +290,8 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
 int rtw_pm_set_ips(struct adapter *padapter, u8 mode);
 int rtw_pm_set_lps(struct adapter *padapter, u8 mode);
 
-void rtw_ps_deny(struct adapter *padapter, enum PS_DENY_REASON reason);
-void rtw_ps_deny_cancel(struct adapter *padapter, enum PS_DENY_REASON reason);
+void rtw_ps_deny(struct adapter *padapter, enum ps_deny_reason reason);
+void rtw_ps_deny_cancel(struct adapter *padapter, enum ps_deny_reason reason);
 u32 rtw_ps_deny_get(struct adapter *padapter);
 
 #endif  /* __RTL871X_PWRCTRL_H_ */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
