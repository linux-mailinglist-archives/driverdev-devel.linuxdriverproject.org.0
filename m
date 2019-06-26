Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F06C55F27
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 04:42:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 73D40867C5;
	Wed, 26 Jun 2019 02:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 17rfLadLLTOG; Wed, 26 Jun 2019 02:42:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 376E9867AC;
	Wed, 26 Jun 2019 02:42:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8064D1BF3DE
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 02:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B738867AC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 02:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OzjDbOnEP942 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 02:42:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D2DB86767
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 02:42:25 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bh12so533906plb.4
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 19:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=TgGo/bYiWps+k76eI/kRcNwlMNadlMcwHKR/CkWVaSY=;
 b=KkeqqqqW0H0KOwBu/UKfqUQpMzCwsR5/X8t3ZCZSLkbxtXvUHCx+0vdN30Bb3ebWVa
 CNF69Nrz1103guRIHT7UKCJOsNwXfrDLm5m5amiWAnYWh90stJRD5PbRSbwUmc0tb+5G
 dj8OHZG3nIDdGEhqMF69a48GSuDKUR9CDBbaVDyw/aDdWQRH7lQwinbVRfuZjlrAVbuA
 Sk1YEvSWeIkm39saY9XN/7gh9J0Fr9wRXYH70moPToY+4ccLi9Btw8oJk6rCNb+MZiql
 ocJztIHDVdRXRwODqAYVIlSfcA85ZqNFztW7JIpwv9MvjnDXhw0RoWLrlZtYv+PZSn7h
 skEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=TgGo/bYiWps+k76eI/kRcNwlMNadlMcwHKR/CkWVaSY=;
 b=SNfuCMg9xTdAewyzEc9azEy28ak4FtUSQsbzW0CeneyrBGdd/Se0ZSs9f9tYQnIDc7
 BGzItOyVe5rBG7YESEew4w7JStLXyKJGpCyp6mzshEdKO9je0XY5o780JBDYU01fREjj
 beaffJ+IVwc1cQAkIPerGf7nTMGZKaYb6WhiK2ngRa4fHbH4CtNXRM+3lN2diDhiIDJN
 ctZ/1JrOwPd+lUhxgMD7twS/I+8gevX6ME/+we+VV9yXv43w6XE/En/3TQxM13TvNyMG
 cU1FGUgIYsnuGi9Dqdhq7jsZw6gDpRjej7+9Jf8J7rK6yVa1r0wLc8d5hJevjCTedCeu
 Mi3g==
X-Gm-Message-State: APjAAAUqKpTZXbFaW1+H/tJ7M3ZHNLTKN/z2LkRQapPx6msRue03+Ayl
 auy9FMxvMcIr+bUZMb4fdv8=
X-Google-Smtp-Source: APXvYqxs0jT22c/pi9/nuiq/FfIip7+FvBcoAH65a9//pdyQ/YYOfUFlslne5NqcT380Wfh1GmeQIQ==
X-Received: by 2002:a17:902:bd94:: with SMTP id
 q20mr2198045pls.307.1561516944732; 
 Tue, 25 Jun 2019 19:42:24 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id u75sm134659pgb.92.2019.06.25.19.42.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 19:42:24 -0700 (PDT)
Date: Wed, 26 Jun 2019 08:12:20 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: rtl8723bs: hal: hal_btcoex: Remove unneeded
 variable PHalData
Message-ID: <20190626024219.GA6052@hari-Inspiron-1545>
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

pHalData is not being used in halbtcoutsrc_LeaveLowPower. So remove the
same.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 99e0b91..0c2a754 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -195,7 +195,6 @@ static void halbtcoutsrc_NormalLps(PBTC_COEXIST pBtCoexist)
 static void halbtcoutsrc_LeaveLowPower(PBTC_COEXIST pBtCoexist)
 {
 	struct adapter *padapter;
-	struct hal_com_data *pHalData;
 	s32 ready;
 	unsigned long stime;
 	unsigned long utime;
@@ -203,7 +202,6 @@ static void halbtcoutsrc_LeaveLowPower(PBTC_COEXIST pBtCoexist)
 
 
 	padapter = pBtCoexist->Adapter;
-	pHalData = GET_HAL_DATA(padapter);
 	ready = _FAIL;
 #ifdef LPS_RPWM_WAIT_MS
 	timeout = LPS_RPWM_WAIT_MS;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
