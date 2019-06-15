Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F18B46E5C
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2019 06:37:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC13586ADD;
	Sat, 15 Jun 2019 04:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o_nmySCEuutV; Sat, 15 Jun 2019 04:37:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 644FE86AC9;
	Sat, 15 Jun 2019 04:37:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA76E1BF2F6
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 04:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B6E4387C5A
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 04:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GKRUue8ueqdI for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2019 04:37:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 45D1F87849
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 04:37:02 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id a186so2577559pfa.5
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 21:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=q2r6AD+gcy9pQMyOS5hD54vNjbTsuyd4RCExb0fM2pY=;
 b=CTqzxIcQNSQePrhTuYqnWRyrJ3m7Y/n/1ylOQ3QfTCb0/ah4nKQiLgbJ213qp5K/dk
 CxPqQtEhgs6WJsuqkXI5BYZuNcfQbyOp5dFrpMjLFlCO+vwX6uahNpSPaal1KEnH06KP
 03/2CllAoAnh9p66fCzCDDqBpYXkrWfMo6EYl5sSBRsBO8CBK6VOVmp05nrBEmwkAfsl
 WzUie4JQkZk8m3XYUpivkojVwfV7bJOjcbxWVmQ9SsQww/thllTsK9esN/kgnxUf0Wd4
 +QU1THQRcU2odjYFrIgoj3gEfAS27Sax4NtO+bVdnqsSp8iBvAXI8yrPhmTnEkFwyBL+
 /s4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=q2r6AD+gcy9pQMyOS5hD54vNjbTsuyd4RCExb0fM2pY=;
 b=Uoc/vk2j9wDzLlNeFbYPbdPxx2ZUMZYwAekmWfFpF3Brux6nHzyJJj2AjwgCx/HgPM
 ZRy5IvPWi2UVxyc5MFvqjAlKi6/vTLuUnc16YPoDNGgOA9aEMzA9p8ohVz0bZbhHdee5
 bTzKhjH12n9ZRU8e3qs+2jao+XJ8lyAyS0+VIfiuJYXtdQjJzWh9XYwmZo+kkhEl0A9K
 mV9zA+Kwo0XrEBz+Ysy8JWZANL2pbrVjN7mv7EjWcKx5JJGXT4y0+jWY2sI/qojwoVBc
 k65K5DiGwTbUTzsjOAAjCL60VOskn6GQyfvtDbBa+RN/5K3ap6Fpk+cae66kjzAP/ucd
 cbcQ==
X-Gm-Message-State: APjAAAUCG3qznM1Jj5eKyjLC/r8JbLo5An1Q9lKl+L9HVZZL9ideKhkP
 eUceA0J5x9kpFOCO6JJNZoQ=
X-Google-Smtp-Source: APXvYqyqCLmnIvcGNvq4D9wJ4Ihu8wbmegQPVDYYNqCRFdPAClO5REXkPgECJcB9/VkQUlQxYgxVNw==
X-Received: by 2002:a17:90a:de0e:: with SMTP id
 m14mr14514409pjv.36.1560573421918; 
 Fri, 14 Jun 2019 21:37:01 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id g19sm4918933pgb.26.2019.06.14.21.36.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 21:37:01 -0700 (PDT)
Date: Sat, 15 Jun 2019 10:06:57 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>, Arnd Bergmann <arnd@arndb.de>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: rtl8723bs: hal: spaces preferred around unary
 operator
Message-ID: <20190615043657.GA12626@hari-Inspiron-1545>
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

This patch fixes below issues reported by checkpatch

CHECK: spaces preferred around that '-' (ctx:VxV)
CHECK: spaces preferred around that '/' (ctx:VxV)

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 215335c..b44e902 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -284,7 +284,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 				txlen = txdesc_size + rtw_wlan_pkt_size(pxmitframe);
 				if(	!pxmitbuf ||
 					((_RND(pxmitbuf->len, 8) + txlen) > max_xmit_len) ||
-					(k >= (rtw_hal_sdio_max_txoqt_free_space(padapter)-1))
+					(k >= (rtw_hal_sdio_max_txoqt_free_space(padapter) - 1))
 				) {
 					if (pxmitbuf) {
 						/* pxmitbuf->priv_data will be NULL, and will crash here */
@@ -355,8 +355,8 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 					rtw_count_tx_stats(padapter, pxmitframe, pxmitframe->attrib.last_txcmdsz);
 
 					txlen = txdesc_size + pxmitframe->attrib.last_txcmdsz;
-					pxmitframe->pg_num = (txlen + 127)/128;
-					pxmitbuf->pg_num += (txlen + 127)/128;
+					pxmitframe->pg_num = (txlen + 127) / 128;
+					pxmitbuf->pg_num += (txlen + 127) / 128;
 				    /* if (k != 1) */
 					/* 	((struct xmit_frame*)pxmitbuf->priv_data)->pg_num += pxmitframe->pg_num; */
 					pxmitbuf->ptail += _RND(txlen, 8); /*  round to 8 bytes alignment */
@@ -522,7 +522,7 @@ s32 rtl8723bs_mgnt_xmit(
 	rtl8723b_update_txdesc(pmgntframe, pmgntframe->buf_addr);
 
 	pxmitbuf->len = txdesc_size + pattrib->last_txcmdsz;
-	pxmitbuf->pg_num = (pxmitbuf->len + 127)/128; /*  128 is tx page size */
+	pxmitbuf->pg_num = (pxmitbuf->len + 127) / 128; /*  128 is tx page size */
 	pxmitbuf->ptail = pmgntframe->buf_addr + pxmitbuf->len;
 	pxmitbuf->ff_hwaddr = rtw_get_ff_hwaddr(pmgntframe);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
