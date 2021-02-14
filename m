Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E41CE31E171
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 22:34:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AC4885F7B;
	Wed, 17 Feb 2021 21:34:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u9Fv7TKZEJZk; Wed, 17 Feb 2021 21:34:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12BEB847D5;
	Wed, 17 Feb 2021 21:34:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E01D31BF869
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 21:34:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D98078588A
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 21:34:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QWBpLw9susux for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 21:33:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 076A48583C
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 21:33:56 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 772EB5C009B;
 Wed, 17 Feb 2021 16:33:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 17 Feb 2021 16:33:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references; s=fm2;
 bh=P+dZkE4/V1YEaQ1e+yPPwSpoog8qY7gLxOog0jgZ09I=; b=lxTFTFwVhe3Y
 uOiwiO6la8pZJBT2NzPHL7THqW7RJPvrRmpTQEh9NJ8dyGG/GVge0PwnlaaksTAA
 D8hwTGofGw/1o33HpsTApSuDn42RKJCxJlm15xt/yc9SDIuKBEY3dYgCeufC7Y8M
 pymnH+n11vumprrLP2Kr/nJnrzDKQzjIAAPB5aqvPyWtvB0V/T4jIDwTZ/Oig3uA
 SliKaIfRcnhYzdmGIeWh7rGfb7MWUS8CKEsdQkI8WEm782Tx8OKfWtWXaN6aLv1W
 YgjcZC+ImU6SlNkjNnZsW3zDt5FWo0/mMRDJ00Hu+rCPavNu0w9WuPFawmrTuGe9
 JRK6DD4nwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:date:from:in-reply-to:message-id
 :references:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=P+dZkE4/V1YEaQ1e+yPPwSpoog8qY
 7gLxOog0jgZ09I=; b=aDj5sdT5KKXaARf/jRmwyRts9Ntd/fm9EhG5zAg6YM1ag
 1CMoog0x2V/U8BCt/boBGoe4c331kZA+iYOockr9jY05nFUEZ7/EdnwumNel7Zoh
 vCyOBxKP1KEg5L6lBVYdRqevu8oaVdfvlC2wyA3hMgKufbsUJR3DszxpHbKzz7LK
 gX2Lg06BaALKS7Qwg81XOSsD5/lsAdrcv5zM7upQcRae14p4nX04Pe7iV01MehnS
 8vhOwzH8uErx+xMDh53PDfrOmgFJmyRN7sNB3aA+ANd3iczMnK+YbOL9WoAw3bu/
 KAt/3P4j9dgmcuUdxVsr526BlR4zQBhv0sMjrM0fQ==
X-ME-Sender: <xms:w4stYGLgh0LZLaqmZnUsGoWOpJKLz71k9xW7_z7LeGV5ss4_O67hbQ>
 <xme:w4stYFmNnO8Jk87jVDBc2miNC84QRKEzu-UMAQrgfD0DnZ1xwhzXDUpLGTsEeiKU_
 MbjGxAudv8gUqB0sQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedvgdduvdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfsedttdertdertddtnecuhfhrohhmpeghihhllhhirghm
 ucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrthhtvg
 hrnhepfffgkeduffdtieeltddtgeetgfdujeekhfegfeegudduffffgedtvddufeelveev
 necukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:w4stYEEtMF0-orEJSOSvm3YTTvMBUgyfMfOF474VJACC7JQZYKMROA>
 <xmx:w4stYFEu4vT6CJNfjDqvxM0qL0ZtgHGvURYsmMMfhIZtOs8qGSgUoA>
 <xmx:w4stYBP699QpYsvr_O84S0SjdPFtXcC5mRGA4EwgBCCP76BMFZ7ajw>
 <xmx:w4stYMQFD-gQrT5eDyCICH93X3dJWoYw54aFthxEGDbmsaAy2lHT_Q>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 04F9A240057;
 Wed, 17 Feb 2021 16:33:54 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/3] staging: rtl8192e: rename SeqNum to seq_num in
 sequence_control union
Date: Sun, 14 Feb 2021 14:03:32 +0000
Message-Id: <20210214140332.16175-4-will+git@drnd.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210214140332.16175-1-will+git@drnd.me>
References: <20210214140332.16175-1-will+git@drnd.me>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes a checkpatch CHECK message.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BA.h     | 2 +-
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 2 +-
 drivers/staging/rtl8192e/rtllib_tx.c      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index 3e5bd3fc78ce..b2a784fa051e 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -23,7 +23,7 @@ union sequence_control {
 	u16 short_data;
 	struct {
 		u16	frag_num:4;
-		u16	SeqNum:12;
+		u16	seq_num:12;
 	} field;
 };

diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index b3f0f64c7711..07dade37d4eb 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -489,7 +489,7 @@ void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,
 			 pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
 	pBA->BaParamSet.field.BufferSize = 32;
 	pBA->BaTimeoutValue = 0;
-	pBA->BaStartSeqCtrl.field.SeqNum = (pTS->TxCurSeq + 3) % 4096;
+	pBA->BaStartSeqCtrl.field.seq_num = (pTS->TxCurSeq + 3) % 4096;

 	ActivateBAEntry(ieee, pBA, BA_SETUP_TIMEOUT);

diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index 50cf10201fdd..30596b9702c3 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -308,7 +308,7 @@ static void rtllib_tx_query_agg_cap(struct rtllib_device *ieee,
 			}
 			goto FORCED_AGG_SETTING;
 		} else if (!pTxTs->bUsingBa) {
-			if (SN_LESS(pTxTs->TxAdmittedBARecord.BaStartSeqCtrl.field.SeqNum,
+			if (SN_LESS(pTxTs->TxAdmittedBARecord.BaStartSeqCtrl.field.seq_num,
 			   (pTxTs->TxCurSeq+1)%4096))
 				pTxTs->bUsingBa = true;
 			else
--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
