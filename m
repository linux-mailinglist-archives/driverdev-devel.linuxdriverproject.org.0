Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1215B4F680
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 17:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B797A86F8D;
	Sat, 22 Jun 2019 15:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w02QUJjY-D76; Sat, 22 Jun 2019 15:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70F2A84B57;
	Sat, 22 Jun 2019 15:24:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CACE61BF301
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:23:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9AA19810BA
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6lxs+m-lX5wg for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 15:23:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E707B85465
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 15:23:50 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f21so4791349pgi.3
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 08:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=GPTSxD3SoJJYK/xNju7R95QIb8W/tbtt9nogyltuHKI=;
 b=i2GbMAGmEqn1FEhmuQIzC8R4PZBkb57Nq/tMdcdhltwWXrJoPQLVNRVA4JQYAQFwin
 IDN/J2kcEauj6qdhcGjIZtDXeFXoFzvv7986vWoSWE1d31OCX0qD+UrLb2037FubK7ZA
 izxfLqm/bhP9yrfjKD4Bm0bNhCCBnN7DcgjCsf1GEiIx4vvOehTQF5o5Z1KAkuBEuwgF
 YqBNNbG1i8BkqGX6DO7gpec74/s6+nBnT0hD34eUiLcUwlqYmKU1UNg1+KfQF74q+jkA
 5uIrLR9yr6dtUp3SeysaZh0RnOgdppSxEWsP3IgfHWpOCHBLyNeAt+AUXSFNJqfYI8t6
 be4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=GPTSxD3SoJJYK/xNju7R95QIb8W/tbtt9nogyltuHKI=;
 b=peskRlI7DTaFG8AmI554yN8NDRlOVRRcQb3FXAlnNRo3Md1Ql7yyZLMR0Cwb78X63D
 GZS7+KXASStPgOIzJLyerYRkyte+ToGDIMLNUG98u1YCwCXBxn4mV0H1YEbJDs7efG0i
 To2NnwpLP09Sls5eBPRSljk4N7lFNAbxsim2socNY0H5XB+6tTs+PN0BbKKQ3LYzIaq6
 bZdQMeg2yyYDXbqkRB6iSDU78Bjpkn+18YJnl3KjM9OCq78WTI1lbIO+/hXdlLlQx/e1
 nkpS38nPFk4IMy9wsYEVjZTpUKGBzHgVLfC5oRyhcNTbtFrlK5LZXYQCliz3c4efCX1F
 bRKQ==
X-Gm-Message-State: APjAAAUBJOgAQZvVQUMMoWAZJVN0XfcVCj1jnaO+fyaQRRR3yJdG9FF5
 7rWu1JtIsJ0N0d+60WapF/A=
X-Google-Smtp-Source: APXvYqymA3yN0jS/j3O3H11EeqM2fFBKrp9PzSnPWeIQ8ZRd2SMZ6XYTKv00yPMwn100vITjLj42rg==
X-Received: by 2002:a17:90a:2430:: with SMTP id
 h45mr14093490pje.14.1561217030491; 
 Sat, 22 Jun 2019 08:23:50 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id l44sm12496777pje.29.2019.06.22.08.23.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 22 Jun 2019 08:23:50 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 1/2] staging: rtl8723bs: os_dep: Modify return type of
 function loadparam(..) to void
Date: Sat, 22 Jun 2019 08:23:07 -0700
Message-Id: <7ca00f90afa0cfa4acfe1ca5dd984a8a1083fe1a.1561215416.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1561215416.git.shobhitkukreti@gmail.com>
References: <cover.1561215416.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1561215416.git.shobhitkukreti@gmail.com>
References: <cover.1561215416.git.shobhitkukreti@gmail.com>
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

The function static uint loadparam(struct adapter *padapter, _nic_hdl
pnetdev) return type is modified to void.
The initial return value was always returning _SUCCESS and the return value
is never checked when the function is called. 
This resolves coccicheck warnings of unneeded variables.

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 8a9d838..bd8e316 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -223,9 +223,8 @@ int _netdev_open(struct net_device *pnetdev);
 int netdev_open (struct net_device *pnetdev);
 static int netdev_close (struct net_device *pnetdev);
 
-static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
+static void loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 {
-	uint status = _SUCCESS;
 	struct registry_priv  *registry_par = &padapter->registrypriv;
 
 	registry_par->chip_version = (u8)rtw_chip_version;
@@ -330,7 +329,6 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 	registry_par->qos_opt_enable = (u8)rtw_qos_opt_enable;
 
 	registry_par->hiq_filter = (u8)rtw_hiq_filter;
-	return status;
 }
 
 static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
