Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F2033D775
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:31:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF3A76F651;
	Tue, 16 Mar 2021 15:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UcgnQatUr4w1; Tue, 16 Mar 2021 15:31:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24F9C6F633;
	Tue, 16 Mar 2021 15:31:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A9D31BF968
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A7E9606AF
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:31:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-iWV05h8hc9 for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:31:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C69760619
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:31:00 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id 12so5313783wmf.5
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x4jfn/t4bc0MDGe7AHsdkIwj3uzunRuHI4a+bTkpqQc=;
 b=mBswRYxiIo3zj9EDWmOreA+1Xp4knX4lDNRqi432X+rH9ocQh9sQVWNRmaG/cV4Nzf
 D+Mm2khvm0RhouRfqbXCxenz+hedafhx/NPalcC3zCz3EABm9GYfkxmETnGJmMapGCjB
 m8ucq42TPOULo1srNnGp+bVM6ILsProBJrR0sOKOgjFlYc/JTxMIBchXuWBLt1bd31iY
 yj8eQZy2k4ZcOZqDhYX4clMRq4gRHuW+0oWj851ZFq8YKLAKgbm63njKflNzfo2QNZZP
 NyNAqAK40dSevXIJsSxZab16q/aoelV61M35ry+A8s80Tg4JmA/VsAYWLgTJ39uWR2Qc
 /tiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x4jfn/t4bc0MDGe7AHsdkIwj3uzunRuHI4a+bTkpqQc=;
 b=o0KvdTz70h6qDs8Za+BdrnalLX5esJpUCsvc6asMsTFxVjqp8JP7Hv/5tELcNLAv7G
 WiaqI0Rdn5PLmxhWqluM8zE9fBbsa/M/PKnX/4AKTksS/RC1wbr+zAxQtGnc7SjouDNu
 a87wwDW4WmxS/s0nxPRnfA5mips3brkxzM9YaotKl/lIwFbGSh3XeSjvPWzD9lzgDDez
 g+FnMwCTpMjsymyEGdyDzRsqkryflaRpDElLTlBsXWsvauTUnmgvKmi/hBlz6HrPkMGh
 a+3utWqCszz9mXjhybzk4xich4dyA8PUBbvIRjy7xnWK2d0DocZFo35zHZL2Xs6nf4Wi
 Kj9w==
X-Gm-Message-State: AOAM5335naREEVfccfPjegdiYym7V2F/PozuBpViH9wzc2AJvIlmoFYG
 33dPyqbu+ah/Fk9uRGP4DYUHHUxs858=
X-Google-Smtp-Source: ABdhPJxEYG+PGWjzrXgrJkkX7exb0NSUAg+8Q2NHbrv7Kx/N8k8IXcFE756k0HINXSttEn3P5fU5Ew==
X-Received: by 2002:a1c:4e07:: with SMTP id g7mr209792wmh.29.1615908659109;
 Tue, 16 Mar 2021 08:30:59 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id s20sm3391555wmj.36.2021.03.16.08.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:30:58 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:30:56 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_UPDATE_INDICATE_SEQ_WHILE_PROCESS_ADDBA_REQ
Message-ID: <ae8f1ff89a3642449b1d2f9951001b0a3ef01b91.1615907632.git.fabioaiuto83@gmail.com>
References: <cover.1615907632.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615907632.git.fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_UPDATE_INDICATE_SEQ_WHILE_PROCESS_ADDBA_REQ

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 2dd902b04509..ea690dbbfebb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1809,15 +1809,7 @@ void process_addba_req(struct adapter *padapter, u8 *paddba_req, u8 *addr)
 
 		preorder_ctrl = &psta->recvreorder_ctrl[tid];
 
-		#ifdef CONFIG_UPDATE_INDICATE_SEQ_WHILE_PROCESS_ADDBA_REQ
-		preorder_ctrl->indicate_seq = start_seq;
-		#ifdef DBG_RX_SEQ
-		DBG_871X("DBG_RX_SEQ %s:%d IndicateSeq: %d, start_seq: %d\n", __func__, __LINE__,
-			preorder_ctrl->indicate_seq, start_seq);
-		#endif
-		#else
 		preorder_ctrl->indicate_seq = 0xffff;
-		#endif
 
 		preorder_ctrl->enable = pmlmeinfo->accept_addba_req;
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
