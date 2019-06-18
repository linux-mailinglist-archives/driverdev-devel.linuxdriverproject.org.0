Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AC849718
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 03:44:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9FE90204A7;
	Tue, 18 Jun 2019 01:44:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xK3LmqE5rQcK; Tue, 18 Jun 2019 01:44:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 561912049B;
	Tue, 18 Jun 2019 01:44:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DF501BF32A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:44:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6B14C875F4
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:44:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rXPKHlDV7-nw for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 01:44:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5A83987592
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 01:44:16 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id k8so4007294plt.3
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 18:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+W3ejKKyHHMYN5ifOnPA7HkbvIIeiT8/4WeKGX5VrVk=;
 b=sdyCCdCmoVWWI/I903bEgV9QKK/O4tqrVHMSZ6JbJroGZx35q786WnQXv7/uusHrnL
 OlxsE5DE8h90le6csi3aTJtmYO4diogzRSs3oLkcAxoQGKPd4hgWrUnuteY0V/8uBCAs
 jZPTzYWc04IRW4nXohznGqv6wCn03+A+Y5RfmvI9xlTGS+lJ9uqX5GgqrKL32RMPCXb2
 6dcPxKEbAVmEKl7j8yj5VqO63R/Ls5MaDHgsn42XuynDw1q6qQHwZCpu8A1qLyOed7UO
 XcIHBLHeplFfH0s8eZy5TmmEjKXBOOCmzJy2ome/LYWTabdjS9pk7QSQhuXvmajlELzl
 C/ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+W3ejKKyHHMYN5ifOnPA7HkbvIIeiT8/4WeKGX5VrVk=;
 b=OsGPla74VLFU95E1HPYs01pYUs2IuYW2mH1F8ZwRtA5We8ngE3HakWkVLfeNUrDeUP
 QI6B80jsxy5/kK6YWPlwUSEZ9IZHkdJGByUYN4K2A0Ib4HF+JH3yxqaWuoTZ1jWhC/rY
 XYPSq3LvmGLlwifnIUGwuSLHJ5Uz72+Yjh/y8Gx3xin69YZLwaKHQVDfNle5YvJiRxiU
 GY8hVw4ghLvoOZv8BQkgOfuT4g4abTY8uyUG/JyBEfPbvpyC/M87rOURLuWUCAwltk5/
 O2BYx7sAcHN9MjfyjGkWNXPEcTgwf/AJPu1FtE/kco8AIOZVYurnLvGpZRVFqZDJhg8s
 BhyA==
X-Gm-Message-State: APjAAAVLjLumJdf1rc5JOBCyWRDJ3mSEQjIG/YAMTOMzNWPuSFcGsZDj
 72mKCkDnbP6f724hDs2Ei/YNMmc3
X-Google-Smtp-Source: APXvYqw75XAab/e7DAjrbX086W4UV6H2gu81Wu+qt0RcDKehBTOFbIVOxzsdRlvUQLbitVZmWCJ/QA==
X-Received: by 2002:a17:902:363:: with SMTP id
 90mr25270995pld.340.1560822255986; 
 Mon, 17 Jun 2019 18:44:15 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id p1sm14417631pff.74.2019.06.17.18.44.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 18:44:15 -0700 (PDT)
Date: Tue, 18 Jun 2019 07:14:10 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v2] staging: rtl8723bs: os_dep: ioctl_linux: make use of
 kzalloc
Message-ID: <20190618014410.GA8505@hari-Inspiron-1545>
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

kmalloc with memset can be replaced with kzalloc.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
-----
changes in v2: Replace rtw_zmalloc with kzalloc
---
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index ea50ec424..e050f20 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -477,14 +477,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = kzalloc(wep_total_len, GFP_KERNEL);
 			if (pwep == NULL) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
@@ -2142,12 +2140,10 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 	int ret = 0;
 
 	param_len = sizeof(struct ieee_param) + pext->key_len;
-	param = rtw_malloc(param_len);
+	param = kzalloc(param_len, GFP_KERNEL);
 	if (param == NULL)
 		return -1;
 
-	memset(param, 0, param_len);
-
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	memset(param->sta_addr, 0xff, ETH_ALEN);
 
@@ -3513,14 +3509,12 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = kzalloc(wep_total_len, GFP_KERNEL);
 			if (pwep == NULL) {
 				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
