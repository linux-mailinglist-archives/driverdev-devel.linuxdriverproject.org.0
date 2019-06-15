Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894E047164
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2019 19:22:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACB1E87C41;
	Sat, 15 Jun 2019 17:22:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nK4bJjMEl7BC; Sat, 15 Jun 2019 17:22:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 008AE87B3C;
	Sat, 15 Jun 2019 17:22:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E5711BF59E
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 17:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6A1BE86473
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 17:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oMi0C7vf8ASZ for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2019 17:22:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A43DF8646F
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 17:22:26 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id m30so3296008pff.8
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 10:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=sOyp4+sq+KgwllM2CeYmEU/9LNYkDyFFb5HcnRUf3P4=;
 b=dN+7R7CB9Ahi7rYreE+yvwbashFY8WWYDtDrv7uNs7mlANGL4JTH6BZBBX03Ihyv9a
 lwfbDzcmisqCUblu6lje2jpnRkOr78P8uqueVnjSRrv/ZF+rHd/aKkVA6/DBUOpvxIK5
 CWfdLGqPbJruH5lIxpPjYzFgT5Y2b88h4ehuRJCy4eFFtFpQN9urruibdjD+nWvDF1JK
 /jX/0frSk2STRZ34aLERabEBsEBvLRsXfN15PhMfvLPgpgGKd55Qg49BR/gj1fKbzOAI
 A4H4TqTh7bsvgZ5T3RoR7kL+jaPUiigBo66oXF5SFc2EXw8S8xIOnmbHjOuWvMY/5J2n
 6B1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=sOyp4+sq+KgwllM2CeYmEU/9LNYkDyFFb5HcnRUf3P4=;
 b=D7+krVwGQrsuuPV/mW1hzjowuPqNkz5sWcIWBKCvRe3z4tEiyj5z3TatR8acVsR4gq
 n9mrKe2bQa2BYxGgx1L14uS2vsVjl0A01dgS836hrLjHeeHG1DQ8M6q2YpzuTJz4i7ot
 ULl4hgkIohKhOfCuN+uxoq8gvy4hIrP5HTqCf+ZGk3RMj/PZ3vxtxUKJhUMaQnA3hPc0
 M8fj56YHXA8qmdlbyUYVdX8njle1y26u4g9bM2yywjjnz8KEJFHFvhb3XUne62ajRQYL
 q19BC9OuaWNU1DvKVOS/DlQ46Vvd/q1gC0g/Z7MqZGM+Ghh+njXuJjAYsW128eKUr+Jy
 /g4g==
X-Gm-Message-State: APjAAAXauI3mqldUc+pigExXt5/nc1arfS9FGwsapWbLAdwgaNKdQerW
 1C32lNkoqr/8OfMRJ6RfPq4=
X-Google-Smtp-Source: APXvYqxWwgzupgHTg0PdzvxfYOChOOwYzZe2kJWzBpKINwfQ9Fyq03VYi83ClAPm4UfEwGBUH6GLKQ==
X-Received: by 2002:a65:64d5:: with SMTP id t21mr42337756pgv.310.1560619346176; 
 Sat, 15 Jun 2019 10:22:26 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id h6sm2985058pjs.2.2019.06.15.10.22.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 10:22:25 -0700 (PDT)
Date: Sat, 15 Jun 2019 22:52:20 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Josenivaldo Benito Jr <jrbenito@benito.qsl.br>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: Remove return type of initrecvbuf
Message-ID: <20190615172220.GA6344@hari-Inspiron-1545>
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

change return of initrecvbuf from s32 to void. As this function always
returns SUCCESS .

fix checkpatch warning "Comparison to false is error prone"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index b269de5..e23b39a 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -10,14 +10,12 @@
 #include <rtw_debug.h>
 #include <rtl8723b_hal.h>
 
-static s32 initrecvbuf(struct recv_buf *precvbuf, struct adapter *padapter)
+static void initrecvbuf(struct recv_buf *precvbuf, struct adapter *padapter)
 {
 	INIT_LIST_HEAD(&precvbuf->list);
 	spin_lock_init(&precvbuf->recvbuf_lock);
 
 	precvbuf->adapter = padapter;
-
-	return _SUCCESS;
 }
 
 static void update_recvframe_attrib(struct adapter *padapter,
@@ -177,7 +175,7 @@ static void rtl8723bs_c2h_packet_handler(struct adapter *padapter,
 
 	res = rtw_c2h_packet_wk_cmd(padapter, tmp, length);
 
-	if (res == false)
+	if (!res)
 		kfree(tmp);
 
 	/* DBG_871X("-%s res(%d)\n", __func__, res); */
@@ -435,9 +433,7 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 	/*  init each recv buffer */
 	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
 	for (i = 0; i < NR_RECVBUFF; i++) {
-		res = initrecvbuf(precvbuf, padapter);
-		if (res == _FAIL)
-			break;
+		initrecvbuf(precvbuf, padapter);
 
 		if (!precvbuf->pskb) {
 			SIZE_PTR tmpaddr = 0;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
