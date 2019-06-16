Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D9E47355
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 07:33:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A6918639E;
	Sun, 16 Jun 2019 05:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q4V5S2sgqTLb; Sun, 16 Jun 2019 05:32:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 259FF86254;
	Sun, 16 Jun 2019 05:32:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C96131BF588
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 05:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C10EF85A37
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 05:32:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CIWksq4e3FJK for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 05:32:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2DD6385AA1
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 05:32:56 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id r7so3852846pfl.3
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 22:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=mzA6YGK114GVMFQzrNpNT//3gdsVz7F+WL+F5wNK5UE=;
 b=LYu/+NVwSLjv4s670OLSv8HTPOpogxzRVgy5uyO+17vtePiBW2qxQMesQnBnyviEEZ
 Zwsm/ia7xgwFCATgBvwxJmSzG6mBIt7xNSmpsbonMzv7MKtfOJc7R/a7ozuQYmURwwJB
 7dnG59e9eU5HbsSxqvuBy8Qn1T3c79ltpJe6DDIuBSQ+NnikKYaTC/6JMfOf9M9Jlm7+
 pU4eHv6W4jit1V21AZY3PF2V30N6F6rQI7eo0O7fso/BeqDFx4NkOwaLg8k8OLCp9Fbj
 rajP7MTDZWhY5KFup2ymhhvG1I2GKXMlXnQfJOlIFpeOMCtXIjuH82FeWK8Kao4I0uSY
 F9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=mzA6YGK114GVMFQzrNpNT//3gdsVz7F+WL+F5wNK5UE=;
 b=UE2v0ZgGundZ9DsSF1bc2rleeDY5gfK97RR2iVkWs9nMzmgFAX5BFKmquLxhbPrWSX
 ADafIX4mjwlYKnBqcF4Fw4LM+jMx5iYBU/dQAlnJ+8JZoVOHTh/mSVsVjZgCF1wRv/KH
 KQOc8lmUikst9CgNTFDep7wD8JFIInYSKFr2XuMAYwXJXrgOEFP6yWbARNqg4mCd8S27
 mARrY4Uk79/t83Mpf5+IzohzbnP93fkPSrJ/3d/xiCu34l/otf+Q6wDzPuVw5/j+L6YV
 dJtMkG8qCRnoH3yN6OzR0Xea/pQXlZb46vE8oOvUNo24oQBiNhsjYKX8MzzdK/krkvVv
 /6qA==
X-Gm-Message-State: APjAAAXnak6t8Ijy2Ig2dCm0gKGxK8aVIaX0iIf5njgS7djldL8bdI+S
 y+Xqnc1S9I2MxYgMhWrHDww=
X-Google-Smtp-Source: APXvYqy/qNZg1GQjR2zk1frJxNxSAejEDL/BNJ2/rkpno+AU9YJmzwyLbBAwXfhS0UxAcTt6WyQBHQ==
X-Received: by 2002:a63:dc56:: with SMTP id f22mr28014541pgj.305.1560663175751; 
 Sat, 15 Jun 2019 22:32:55 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id c9sm8305651pfn.3.2019.06.15.22.32.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 22:32:55 -0700 (PDT)
Date: Sun, 16 Jun 2019 11:02:50 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: os_dep: ioctl_linux:  Make use rtw_zmalloc
Message-ID: <20190616053250.GA16116@hari-Inspiron-1545>
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

rtw_malloc with memset can be replace with rtw_zmalloc.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index fc3885d..c59e366 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -478,14 +478,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = rtw_zmalloc(wep_total_len);
 			if (pwep == NULL) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
@@ -2144,12 +2142,10 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 	int ret = 0;
 
 	param_len = sizeof(struct ieee_param) + pext->key_len;
-	param = rtw_malloc(param_len);
+	param = rtw_zmalloc(param_len);
 	if (param == NULL)
 		return -1;
 
-	memset(param, 0, param_len);
-
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	memset(param->sta_addr, 0xff, ETH_ALEN);
 
@@ -3521,14 +3517,12 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = rtw_zmalloc(wep_total_len);
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
