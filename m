Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 992AD192B06
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 15:22:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 951C586DBF;
	Wed, 25 Mar 2020 14:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pGErpAu_eSIE; Wed, 25 Mar 2020 14:22:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92BE186D9D;
	Wed, 25 Mar 2020 14:22:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0C471BF399
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 14:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CD5B386D9D
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 14:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RjLTVvQsL43j for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 14:22:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B61186D9C
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 14:22:33 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q3so1085645pff.13
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 07:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=pcFRyCnL2SJ7lsWb00Ktgfpiha1T6QVZTxHpgve0HfA=;
 b=IBvMOXic3QYDgQSRZGPtISAPOTYAbBG+IPlPXOuv8W5fiiD/2joX9ypEKZDeqzeXtR
 9hv8+1RDYXz/f0teGPl8n/iRkNmc7DMFBw6PpIJ29ObnRdulDiQB9oz0xG2tz6jqMUXp
 cfNHYHvZPQVuVfWaa93mk4GzBZ/ynzZbbl4OwI2Pt+lARObkyRoCkY0JcZy0y8cq5u8F
 RkTgMPqCwAyUj/JuNLaeHL57azs0LRCeL12fOcQb8KK4dMmRY2sVY80+L1JsUZeYigx3
 qbNYX7PL1yYalalmDh8yUsrxxnR4f6kTkc/jcu3VtRtbXItJy3KqVugRDo6VH7/R1OKo
 talw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=pcFRyCnL2SJ7lsWb00Ktgfpiha1T6QVZTxHpgve0HfA=;
 b=JTH3Z9iX8B7e0an2tW/ERp9qnUCfFUlCxQDWEI0mFWqfi+CEEyCKBOKbem/8yuuU2K
 3muQAfJr9wQBcf/srD8lTRi5lRkU2FfG8UZsLcpAi1/xxNsGqrWCgtyddDLUNTVxYUiD
 TVL+SF7xg2CFM9mof7d7Xmt2HKuERirOy2VbLdW5tciNa+Fao6uAUjX2f4AZa09l+rTD
 a1CWKNV+CH+Velgcy73LnuZUypu0ObW06xnP3w1/3xulBS84goyDjg1JztilpYEk6mAF
 2+Rhsvtu/tI8y4h6OPeVGwOmkQndNXyb4jxAhTAEAly1jl4MJ+s1YlsU3kAN9nYG6SYo
 94jg==
X-Gm-Message-State: ANhLgQ0s53o0l+TL4ROpGXNI766MFteZv9UbxrJkOy4hNJE0ACwKZBB4
 JoB+eb9nzuR/Z3sukmUdtJA=
X-Google-Smtp-Source: ADFU+vsRMsStWrusCqvyO22VEA+D9RFGOgQSEUQ7ZI4dwMat4P6s70DROLp/Vz5sQI0aOgfCkLinXw==
X-Received: by 2002:a63:7359:: with SMTP id d25mr3285349pgn.2.1585146152947;
 Wed, 25 Mar 2020 07:22:32 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 x4sm16570514pgi.76.2020.03.25.07.22.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 07:22:32 -0700 (PDT)
Date: Wed, 25 Mar 2020 19:52:26 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: Remove multiple assignments
Message-ID: <20200325142226.GA14711@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

Remove multiple assignments by factorizing them.
Problem found using checkpatch.pl:-
CHECK: multiple assignments should be avoided

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 61a9bf61b976..744b40dd4cf0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -194,7 +194,9 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 
 	pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf  +  4 - ((SIZE_PTR)(pcmdpriv->rsp_allocated_buf) & 3);
 
-	pcmdpriv->cmd_issued_cnt = pcmdpriv->cmd_done_cnt = pcmdpriv->rsp_cnt = 0;
+	pcmdpriv->cmd_issued_cnt = 0;
+	pcmdpriv->cmd_done_cnt = 0;
+	pcmdpriv->rsp_cnt = 0;
 
 	mutex_init(&pcmdpriv->sctx_mutex);
 exit:
@@ -2138,7 +2140,8 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
 		goto exit;
 	}
 
-	psta->aid = psta->mac_id = passocsta_rsp->cam_id;
+	psta->aid = passocsta_rsp->cam_id;
+	psta->mac_id = passocsta_rsp->cam_id;
 
 	spin_lock_bh(&pmlmepriv->lock);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
