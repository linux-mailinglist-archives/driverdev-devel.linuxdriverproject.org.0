Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0DA183BEB
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 23:07:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79B47876E4;
	Thu, 12 Mar 2020 22:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QAD8-BUhlmhB; Thu, 12 Mar 2020 22:07:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 288A0876E3;
	Thu, 12 Mar 2020 22:07:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D87C71BF2FD
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 22:07:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 706E481DF8
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 22:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bI170PoRFWS7 for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 22:07:13 +0000 (UTC)
X-Greylist: delayed 00:05:32 by SQLgrey-1.7.6
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 799DF81CB7
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 22:06:32 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 6B1BB6AA
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 18:00:59 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 12 Mar 2020 18:00:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ptor.com.br; h=
 from:to:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=tglbjSqQWHl4QGD059Q3BeyLPn
 lJsRlXs6BZ/hIwhho=; b=XhQA9uV8ZVGnxvEwMLFvGUxf1vHiI+eNXqfvk6qmST
 9Pw4CcWucb/dHGvWNeef+U+CpvDoPkGZ23I8GrJkUex1jb/tQNgsg9XUWiuiIywS
 t6F1zbuy4HRpzMR3WQjFj2PPZfe8zNYvtXom1S8+VMKVszrQkT6h7Ss8gDwbRMQS
 I2FGmqelHFDqtnJPKiZeR1PVDFIdhCQuCfbyixxl+/GraXurf+6a1UCp2izB5bQs
 xbL2pjb12xtwx9gFwH4UuptUEkDMSGO3V7rOfD/QmqjPTi9bNWb5f70hLYviEcA0
 neJP/aRL41WOLEPfD9XRiVUlMtVKI27j/26gkFnh654g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=tglbjSqQWHl4QGD05
 9Q3BeyLPnlJsRlXs6BZ/hIwhho=; b=Yd9McrWe2qvC2IGK53d4AvzXkI41TIH93
 6sLPBdEEWvB8qVC+P1f6CcTZPymcrIyGjL2y9LLstztA/weP4vneJpjSP5oUE1jW
 QDTS9CrK1Tr4/SAVfN5LaGJpvZvB7aGHOJqLaMe/oZwp76fltt32/+duCLtpdFHH
 ifL078CfccRA8hkhtykfblVhNOUn6JnD/JkRcPfD44H3k8b8aIS6cVI9iQZMnfvb
 Y4elajrZoNgcexidurlKgNKzVyVaaiPe7UkQpYkuT1q6N3Y0ZzLQdKe/xRgCKeDo
 pkpUpla4q3pi/2ngTPQSElyXQp2EbAXYLgyYFEd9H9w3joYnz0EjQ==
X-ME-Sender: <xms:GrFqXjR_Nxo7iha5_M-OuarpfxsFEpqk555OPsoiLGrLZaU_GmO31A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddvhedgudehjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefoihhguhgvlhcuhfgrghhgihhonhhiuceovhgvlhhotghirhes
 phhtohhrrdgtohhmrdgsrheqnecukfhppedujeejrddvhedrudelledruddugeenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehvvghlohgtihhr
 sehpthhorhdrtghomhdrsghr
X-ME-Proxy: <xmx:GrFqXp9vGIpYIvvGn6l7SduxFsQ-MKwgHvfYKmdF3hexRV3jPmoDPg>
 <xmx:GrFqXpte_Gn97b8aCsibf5EIe44ff725deoreicHVSjKYVNxzHqMTQ>
 <xmx:GrFqXpPaGgG-jHZdU6cQCMo1xCdzJIODSFCjKfVyPiorEvIZdyHCFw>
 <xmx:G7FqXmsAM6i9I4g8LLQQz4vSZGcsCO5IkmXCJMI8eIHZk893KAnuuA>
Received: from localhost.localdomain (unknown [177.25.199.114])
 by mail.messagingengine.com (Postfix) with ESMTPA id E8A463280064
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 18:00:57 -0400 (EDT)
From: Miguel Faggioni <velocir@ptor.com.br>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: exfat: fixed coding style warning
Date: Thu, 12 Mar 2020 22:01:27 +0000
Message-Id: <20200312220127.11-1-velocir@ptor.com.br>
X-Mailer: git-send-email 2.20.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Inverted comparison order on r8192U_wx.c:752 to place constant on the
right side.

Signed-off-by: Miguel Faggioni <velocir@ptor.com.br>
---
 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 0118edb0b..40fb4165b 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -749,7 +749,7 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
 			idx--;
 		group = ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY;
 
-		if ((!group) || (IW_MODE_ADHOC == ieee->iw_mode) || (alg ==  KEY_TYPE_WEP40)) {
+		if ((!group) || (ieee->iw_mode == IW_MODE_ADHOC) || (alg ==  KEY_TYPE_WEP40)) {
 			if ((ext->key_len == 13) && (alg == KEY_TYPE_WEP40))
 				alg = KEY_TYPE_WEP104;
 			ieee->pairwise_key_type = alg;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
