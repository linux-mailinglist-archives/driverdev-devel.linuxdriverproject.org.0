Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D299ACE947
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 18:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B46EF87B5B;
	Mon,  7 Oct 2019 16:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BZ5L904Q4SFc; Mon,  7 Oct 2019 16:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C710C87ADB;
	Mon,  7 Oct 2019 16:32:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 976241BF44A
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 16:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8D52286429
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 16:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l-daQ5Ni3Luu for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 16:31:58 +0000 (UTC)
X-Greylist: delayed 00:48:37 by SQLgrey-1.7.6
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com
 [91.207.212.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 64BAC85CB4
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 16:31:58 +0000 (UTC)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97FR3kF010334; Mon, 7 Oct 2019 17:43:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=STMicroelectronics;
 bh=dFvDcqWSN9ZbPn6Iz1Ez8EPfIWgepjOMcf7c/b7HLcQ=;
 b=cvqSztD3kA0SpQpl/2pcf8xyIeDN1yes1fd+4zndlONjSllxAQyPh1FLpWumvFnnvVt3
 JjHcV/BrzI4XAA4XIU1m1dwfhPXr+z1c9oppKVIHTyVPlAS6mbrUilxSvvkPS207vySE
 tPiFOUQKzX72eBWZL8kYy6i3u3XTcQrxN+Mvg2qnFHk1JSkU2ZL1EKbHbV+CJErTwj13
 Q63ZxB/thrL69oP13UrOSowaOaoz4r6ezoYv6YccpIoKATwJiAB3ebjAz8pISFw//WMs
 tuF3a9L+RoSiTY/arhMFbnI2ejgiGQdpx5GVq1h1vVSWcIaUAiKwacgMpaH8U9UZEvLK vg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2p35kb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 17:43:18 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 37765100039;
 Mon,  7 Oct 2019 17:43:17 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E1E0E2B1E43;
 Mon,  7 Oct 2019 17:43:17 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 7 Oct 2019 17:43:17 +0200
From: Antonio Borneo <antonio.borneo@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH] staging: rtl8723bs: fix typo of "mechanism" in comment
Date: Mon, 7 Oct 2019 17:43:03 +0200
Message-ID: <20191007154306.95827-2-antonio.borneo@st.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007154306.95827-1-antonio.borneo@st.com>
References: <20191007154306.95827-1-antonio.borneo@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_03:2019-10-07,2019-10-07 signatures=0
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
Cc: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Antonio Borneo <antonio.borneo@st.com>, linux-kernel@vger.kernel.org,
 Saurav Girepunje <saurav.girepunje@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix typo s/mechansim/mechanism/

Signed-off-by: Antonio Borneo <antonio.borneo@st.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 6e4a1fcb8790..d5793e4614bf 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1315,7 +1315,7 @@ void EXhalbtcoutsrc_DisplayBtCoexInfo(PBTC_COEXIST pBtCoexist)
 
 /*
  * Description:
- *Run BT-Coexist mechansim or not
+ *Run BT-Coexist mechanism or not
  *
  */
 void hal_btcoex_SetBTCoexist(struct adapter *padapter, u8 bBtExist)
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
