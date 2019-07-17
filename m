Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DADE6C0C7
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jul 2019 20:06:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F6A687583;
	Wed, 17 Jul 2019 18:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1cPY+MaiUt4J; Wed, 17 Jul 2019 18:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DEB758757D;
	Wed, 17 Jul 2019 18:06:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 332AA1BF288
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 18:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2FA2E204C2
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 18:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T+6MJItY9cRR for <devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 18:06:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 7744120113
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 18:06:41 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id q10so11214108pff.9
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 11:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=FYqjCNDgdwxDrTeEvfRkTBRjcpgK1SokFa0ifJO2fuQ=;
 b=cvFuXAwAcLCD0f1dox0053BiwpvnWSpYSnKtgHhKAocIEArOfcO+cUSJh3N/9zBsjN
 8nqyexbg+vCk9ZV+BTWl2Xlgunya2hAYD9o3H+k71dkf8SF3GuOkHVcEO4hCqMFL05It
 rKsF1BIDL48KHiKXcsHt8nWC7duiQfGALK6ONfw8IoppFaHYT90mMElWdsEqB65ZRJgJ
 XWliWxe1/PzZjRjXqythmo1d0NWaS99X4pNOCVufSVtNlxemUILrEQR/F3eW8fQ5hRJ3
 QOpN5F3mA9mBDdOVHE2EO6oltcg+RNzNymW8kB2aCAr9/Co7vLd4Or7mIakEtw3LqDzR
 6Hww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=FYqjCNDgdwxDrTeEvfRkTBRjcpgK1SokFa0ifJO2fuQ=;
 b=rRr9KyQ2tRX/L/N3HtPW3kAeR2lrrhu23qHZjY0hmD6GPaoMwTPlk9D9AkSlHX5p+q
 cUGZ5BFb6ot/Ub3Y+qzwGkSHObw9yGtS3JrefJSx2QQYJ2YURghVEL3e4UDCKNMBIrAn
 XfSnmNsxpWHXnzBmri4FUeAjln9+6Qz0K/LEF8e9PlVa3HwnBSOJH79zVOxQYed1EfCK
 TPLiLj+/X8i+s7emnGzEIb1nI+p/66u6ml1+MmfyUyr6LmyDebFuo1oua69cwnhCq4VH
 uANiafll+hPBmhoLdxBgdkaKhCrbQAnAYimFsSvoVK2mg8dlc9Qm+oJZdA8DLqU88226
 KrDA==
X-Gm-Message-State: APjAAAXiB+EAa5a/hW5W2r1djNuSB89LcCHR0PLmxExmOWJOz5P7fRTJ
 gGSU8II/eQdduOjOzN3a4OI=
X-Google-Smtp-Source: APXvYqwKC9l0ZDIPUfTTO5jWoFOZj3DSuNLxUFv6ftRFtYHflitwxSQ9VhBohEJ6qrbURLjcpPJoGA==
X-Received: by 2002:a63:d34c:: with SMTP id u12mr27655835pgi.114.1563386801044; 
 Wed, 17 Jul 2019 11:06:41 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id j1sm46520337pgl.12.2019.07.17.11.06.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 11:06:40 -0700 (PDT)
Date: Wed, 17 Jul 2019 23:36:35 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: Remove Unneeded variable ret
Message-ID: <20190717180635.GA11412@hari-Inspiron-1545>
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

Remove Unneeded variable ret . Return _FAIL .

We cannot change return type of on_action_spct as its callback function.

Issue identified with coccicheck.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 4285844..0bec806 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1882,7 +1882,6 @@ unsigned int OnAtim(struct adapter *padapter, union recv_frame *precv_frame)
 
 unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_frame)
 {
-	unsigned int ret = _FAIL;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 *pframe = precv_frame->u.hdr.rx_data;
@@ -1914,7 +1913,7 @@ unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_fr
 	}
 
 exit:
-	return ret;
+	return _FAIL;
 }
 
 unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_frame)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
