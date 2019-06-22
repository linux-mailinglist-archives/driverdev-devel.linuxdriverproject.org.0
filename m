Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FB54F720
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 18:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13EF5203AF;
	Sat, 22 Jun 2019 16:41:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGRMfY1KygZB; Sat, 22 Jun 2019 16:41:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7CA6320351;
	Sat, 22 Jun 2019 16:41:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA98A1BF2FF
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 16:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C02D685582
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 16:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PQHs8JaDF+q0 for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 16:41:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 26AC685514
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 16:41:13 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n2so4814825pgp.11
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 09:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=N2gUTBH2OR+uI9TRPkHXeFtmpRrFd2HrYT6sxFxzjjQ=;
 b=bfB7oRUFXtZsHa5PVNf3HNIRwgW8jty71EWcLeS4wmGBsIloCzimZQWFxSVP7XpWbG
 8fGLftWFbl5uLX4FmfAysjw4TDPnLN7PYR0IeAaou29nmXXDKeXd6iC4kIktuiOjTfL9
 iWjDMZsc3h0npHOHyvAdgsd+q3uLLLSDgtWbLa5nj1Zwfzo8BYfi0iqTozfB/KR/uqqH
 GH+fcbDgtl3McGk17FSSBNlbCoJcJjs4yLKLb5cQGIZaduZ0LGGwGjfZoC4M+H4rVfQa
 oSsY8vMNB88HyieTPGlyvvun/WjOJGfuzzZ7pi0xaiFLAsjqQvZTXP/17WTb1Dqm+6yy
 n/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=N2gUTBH2OR+uI9TRPkHXeFtmpRrFd2HrYT6sxFxzjjQ=;
 b=CyP5XhxhwI+HNPmO9jajc3d9DMyKTUXitau5tU+DN9s+gdAPLrUyYfKY3QRvi3Ex1M
 3gRyQYqLAEvgbH9O8cvVKVCGG4xEMIj1NFIOqQDHnVzZYl5PbTuZf9blw72V/ZqWHxO6
 1eI5bCIU/SHyHBroQ5bsiC/Vt7dP3RXwlb8owNgVx6rzk9u7Q0wEnoHeD+CK7jIRT9gw
 IoLo1sNh4DkcIGvnF0bX+FonPvDuYmmrcP04JBq7rIcu/F7dDREbvaa4CMIrq3AkTc/N
 UMMEb8x/Yo5S+KddupaQj3B6jyswBn+4A8Sc/8t0t3m7Zzi6g+TLXfwJ4FY7dD7CPzUq
 btMQ==
X-Gm-Message-State: APjAAAVWFI47bgY+GWIpldYgyJvhn56OV3pF3TUSe4nAr6MKPs4srejV
 65TJEMFmlpz79jYCrQ1JgXQ=
X-Google-Smtp-Source: APXvYqwVOhx+YvbiAK8mJ4RJDN1YY63VDT6GCjyE4W2X2ICbbF9g70cPpKWyfOQdMw7w4OEjQv1FNg==
X-Received: by 2002:a17:90a:ac13:: with SMTP id
 o19mr13914783pjq.143.1561221672736; 
 Sat, 22 Jun 2019 09:41:12 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id u5sm5809161pgp.19.2019.06.22.09.41.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 22 Jun 2019 09:41:12 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 1/3] staging: rtl8723bs: os_dep: Change return type of
 function rtw_suspend_normal() to void
Date: Sat, 22 Jun 2019 09:40:40 -0700
Message-Id: <f7486ee2092699ffb20a7cee298050e41bb7b5f6.1561220637.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1561220637.git.shobhitkukreti@gmail.com>
References: <cover.1561220637.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1561220637.git.shobhitkukreti@gmail.com>
References: <cover.1561220637.git.shobhitkukreti@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Coccicheck issues Unneeded variable "ret" warning.
The return value of function rtw_suspend_normal() is set to _SUCCESS.
The return value is never never checked by the calling function.
Modified return type to void to remove the coccicheck warning..

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 8a9d838..e1e871e 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1422,10 +1422,9 @@ int rtw_suspend_ap_wow(struct adapter *padapter)
 #endif /* ifdef CONFIG_AP_WOWLAN */
 
 
-static int rtw_suspend_normal(struct adapter *padapter)
+static void rtw_suspend_normal(struct adapter *padapter)
 {
 	struct net_device *pnetdev = padapter->pnetdev;
-	int ret = _SUCCESS;
 
 	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
 	if (pnetdev) {
@@ -1447,7 +1446,6 @@ static int rtw_suspend_normal(struct adapter *padapter)
 		padapter->intf_deinit(adapter_to_dvobj(padapter));
 
 	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-	return ret;
 }
 
 int rtw_suspend_common(struct adapter *padapter)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
