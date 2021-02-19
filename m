Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3184320D79
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:13:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7429F6F4E7
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 20:13:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n3ZGwa-BjG_f for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 20:12:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 16A5D6F4A0; Sun, 21 Feb 2021 20:12:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 850C3605F5;
	Sun, 21 Feb 2021 20:12:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94A6E1BF4E4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D8FC82EB4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cm81-5TAi7aE for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:11:25 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id B549782EF1; Sun, 21 Feb 2021 20:11:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 94AE181839
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:11:22 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id B77DC5C009D;
 Sun, 21 Feb 2021 15:11:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 21 Feb 2021 15:11:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=GWB9d/s305NLw
 vWuc1X/g+wu9XfBPJJ084eZ+XXPTus=; b=F5Lj9Y7e8+pyqOQkeFznUeSk5vCPJ
 mEpDvQBV2eYcm7H6wyN048l2nztkOnj+Q67OWFnZQodz/TKXwNeXJ8sa95E+K4lP
 kcM8yJYUU8Wyksbq07hIIlARl7/g2V9mRE2bCycxTz+jFO0LkbSb2Y+AKaAb+Jpk
 e3xamJ4EIBYfdH4PVctOZqiULVWI9aCLkkqp/qQEqluvqPDpFvH6J7c4b4o+oufn
 GMj0eeLNrw4FRO/HQ7QiiR1VrHECFjFxCu10C1Th3U8obbAPlbw8N2IBOlvbwugy
 ncfPXI72c6DkuRE6fpqGBNunAE98bYdWIO2RGMY8zE5Y5qlriXrmwmWww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=GWB9d/s305NLwvWuc1X/g+wu9XfBPJJ084eZ+XXPTus=; b=eH7GvUWX
 F6p3rvYR98ptQQvYe8iLsl2kk8gjM1RvKivSLFCt51X2CEtzUbQvQ8mQWkhhT1jb
 Ryniu7FudnZhbfbUfmAgpknr3pkaB2S1eW4EE7adEkKigYYorZeUILtxLsQDWYqY
 Ewt+neqdj1GaQxyuoA0e9Y0CEQIQJ75I9W4wTFcnEfb0YwL6mYpDyHh5tpAlBimS
 ATxQ31AM8DC8MDBtndbG+F3ReyUhPhJlmFoFs1y/WRg3gidShNO3R8HsK8Q3tvRV
 HeZkq3dfktdTn04RcsrQmVPHbxjp/2/SO3+71Uuem9Tn5IgYpDn9JI51XUaHxbw3
 o+d6mCmFlc69mQ==
X-ME-Sender: <xms:ab4yYD85w6UTxmvs-PIvmJpKpqtg4BJp9jjXKAqWvA8Z5py5oXnzKA>
 <xme:ab4yYPsVmKmG4pauXGcy-zAi0T0HX7hyLZ-FFoFB3ayinT_vbEkVwnbygoIgXFCjH
 rBbFIOmB7fGwfJhwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkedugddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhi
 rghmucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrth
 htvghrnhephfejleehhedvgfekffeiudeifeffkeelveduueelffeuveekjeevteeghfdt
 fefgnecuffhomhgrihhnpehfihgvlhgurdgsrgenucfkphepvddujedrvdefkedrvddtke
 drjeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 fihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:ab4yYBA2Rb6lC0hUdQT7T4oC86a8yT_DjmScmmTSn4puE6lenayS8w>
 <xmx:ab4yYPfQrS1TCfnkie2b8lYyDj_Rhx-A8dBqTS0CsB5J_xUs19-S4g>
 <xmx:ab4yYIOnt64ygV0E67MJgC7oGeJD0XCrTwtt2vLgMPZXRCcTJduhEA>
 <xmx:ab4yYCUFHWyJvYrP3oz5FSfA7N62M7wNF-uHvqIb5Gx0t8wo8rUgFg>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 284B81080057;
 Sun, 21 Feb 2021 15:11:21 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/7] staging: rtl8192e: rename BaTimeoutValue to
 ba_timeout_value in ba_record struct
Date: Fri, 19 Feb 2021 23:11:26 +0000
Message-Id: <20210219231128.27119-6-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210219231128.27119-1-will+git@drnd.me>
References: <20210219231128.27119-1-will+git@drnd.me>
MIME-Version: 1.0
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

Fixes a checkpatch CHECK issue.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BA.h     |  2 +-
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index 6ef9a435e81d..febe99fc486c 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -53,7 +53,7 @@ struct ba_record {
 	u8				b_valid;
 	u8				dialog_token;
 	union ba_param_set ba_param_set;
-	u16				BaTimeoutValue;
+	u16				ba_timeout_value;
 	union sequence_control BaStartSeqCtrl;
 };

diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 450634999193..68dcb9d9eb98 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -59,7 +59,7 @@ void ResetBaEntry(struct ba_record *pBA)
 {
 	pBA->b_valid			= false;
 	pBA->ba_param_set.short_data	= 0;
-	pBA->BaTimeoutValue		= 0;
+	pBA->ba_timeout_value		= 0;
 	pBA->dialog_token		= 0;
 	pBA->BaStartSeqCtrl.short_data	= 0;
 }
@@ -110,7 +110,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 	put_unaligned_le16(pBA->ba_param_set.short_data, tag);
 	tag += 2;

-	put_unaligned_le16(pBA->BaTimeoutValue, tag);
+	put_unaligned_le16(pBA->ba_timeout_value, tag);
 	tag += 2;

 	if (type == ACT_ADDBAREQ) {
@@ -279,7 +279,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 	DeActivateBAEntry(ieee, pBA);
 	pBA->dialog_token = *pDialogToken;
 	pBA->ba_param_set = *pBaParamSet;
-	pBA->BaTimeoutValue = *pBaTimeoutVal;
+	pBA->ba_timeout_value = *pBaTimeoutVal;
 	pBA->BaStartSeqCtrl = *pBaStartSeqCtrl;

 	if (ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev) ||
@@ -298,7 +298,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 		struct ba_record BA;

 		BA.ba_param_set = *pBaParamSet;
-		BA.BaTimeoutValue = *pBaTimeoutVal;
+		BA.ba_timeout_value = *pBaTimeoutVal;
 		BA.dialog_token = *pDialogToken;
 		BA.ba_param_set.field.ba_policy = BA_POLICY_IMMEDIATE;
 		rtllib_send_ADDBARsp(ieee, dst, &BA, rc);
@@ -386,7 +386,7 @@ int rtllib_rx_ADDBARsp(struct rtllib_device *ieee, struct sk_buff *skb)


 		pAdmittedBA->dialog_token = *pDialogToken;
-		pAdmittedBA->BaTimeoutValue = *pBaTimeoutVal;
+		pAdmittedBA->ba_timeout_value = *pBaTimeoutVal;
 		pAdmittedBA->BaStartSeqCtrl = pPendingBA->BaStartSeqCtrl;
 		pAdmittedBA->ba_param_set = *pBaParamSet;
 		DeActivateBAEntry(ieee, pAdmittedBA);
@@ -487,7 +487,7 @@ void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,
 	pBA->ba_param_set.field.ba_policy = Policy;
 	pBA->ba_param_set.field.tid = pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
 	pBA->ba_param_set.field.buffer_size = 32;
-	pBA->BaTimeoutValue = 0;
+	pBA->ba_timeout_value = 0;
 	pBA->BaStartSeqCtrl.field.seq_num = (pTS->TxCurSeq + 3) % 4096;

 	ActivateBAEntry(ieee, pBA, BA_SETUP_TIMEOUT);
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
