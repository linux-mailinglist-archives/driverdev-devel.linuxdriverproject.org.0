Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ED831AD34
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 17:46:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8721686287;
	Sat, 13 Feb 2021 16:46:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7HLyOxpFbHRe; Sat, 13 Feb 2021 16:46:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54CBC861B2;
	Sat, 13 Feb 2021 16:46:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A5211BF405
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 16:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDB9E6F5F0
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 16:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ksU8sv3mwMK for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 16:46:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4620A6F5F9; Sat, 13 Feb 2021 16:46:00 +0000 (UTC)
X-Greylist: delayed 00:06:10 by SQLgrey-1.8.0
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 198D96F5F0
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 16:45:58 +0000 (UTC)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id B13FF5C00CF;
 Sat, 13 Feb 2021 11:39:48 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Sat, 13 Feb 2021 11:39:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:subject:date:message-id; s=fm2; bh=KF0yUk0R8wWOyzHnpDxTychZF
 bk8rzwni4MkOsB0N9E=; b=IC86tgxWxX3egT9X2lgsELYbjadSAPnytyKiAvBHv
 x/DUWDu2bgGDJn8GSLX9UXOHXPzKL94ZBtsVlE8TpU9WowI9N/xT0QU7UCK8v5/H
 xQh62Hr4LbIpwG10ziZb9ffJhrzb+IRjjQ2lh4fbbBPGpQuBQkfgpZkG5WrFVQSk
 3q1cJiJxFPOz03o5q9qW+ni7PZiYefp0xHZPuohF0yuX/GtfcCjIVY6eDWQ41Hvp
 rAnoudKupK88r2H7Xp0HSxQqNTNB1W4O1qURAxVvVpebnWk5NLxB9qCmlZl+OV5M
 5ZG6/DQmu6HggjbsxR11vBmQh6J8N/hloroTLOLJfhTHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=date:from:message-id:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=KF0yUk0R8wWOyzHnpDxTychZFbk8rzwni4MkOsB0N9E=; b=J4tkN2CD
 EKmy+aQCNhqKMRDpYU/K5KC8OW03zzGadla6RCj/DQQ4ukQ/8n/FjcjEZmmo/PxC
 4f9ftkIVJe/X4Krg7ll/zeweVFBcEdFLlTFxUlWbLPUVzY43CLlD2Xnu8f7i0gwP
 KYgZpIgpbx8ZnRkjIGZrf+gGi/N5P6eKS3zm3kTE16Sco1lTLlxutCPfxHlUSNas
 fllx5VMs0wHIxL3U/Lt8PlsDhmjdaSD/pyJfYeQ936nAWY/6oOZ1aEhtBDGISuuS
 /s8A2DTDlH/IMhLo8YkkpT6LDx7hUdSIOs4nfkmvk58pDS4ilNecuuDOKea34Vat
 iWjNnceO2fhNRQ==
X-ME-Sender: <xms:1AAoYI9c1meygtbvSxMkrScpX0eP-FeYYAohoVI3dhFgPT9In2NieQ>
 <xme:1AAoYApkt4u5tVtolXAHyXHVytdEoJ88kTmSD9UQ18tuCM_x941cTxP51sFaqbwP8
 xXRetts6R8_7-a5zA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieefgdekjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofestddtredtredttdenucfhrhhomhephghilhhlihgrmhcuffhu
 rhgrnhguuceofihilhhlodhgihhtsegurhhnugdrmhgvqeenucggtffrrghtthgvrhhnpe
 ejteduieevjeefudeuhefgvdevgeehgeehgfdtueeuteevleeuhedtueekvdegteenucfk
 phepvddujedrvdefkedrvddtkedrjeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepfihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:1AAoYK6JU8dfZCYL4CD9gyWTix8KjJ_HZ5gz1U9o5MiBiN1h1ybCug>
 <xmx:1AAoYAPgVn7hhS58s6E6XIB4CJCYbP3m6sEcwxb8wMEBh8HRVNYI_A>
 <xmx:1AAoYMMcAwSupb8SxzhpFB3e95ur1PYdxWqQcavasVW-Nxs15a4RSA>
 <xmx:1AAoYBsS0gXwMA63l1I6dKJvoJdmOiVw_TC0TlfmC5Z4fuMBsfOeWw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8FFD9240062;
 Sat, 13 Feb 2021 11:39:47 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8192e: remove multiple blank lines
Date: Sat, 13 Feb 2021 03:47:11 +0000
Message-Id: <20210213034711.14823-1-will+git@drnd.me>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch removes some blank lines in order to fix a checkpatch issue.

Signed-off-by: William Durand <will+git@drnd.me>
---
This is my very first patch.

 drivers/staging/rtl8192e/rtllib_wx.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index aa26b2fd2774..2e486ccb6432 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -341,8 +341,6 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 		goto done;
 	}

-
-
 	sec.enabled = 1;
 	sec.flags |= SEC_ENABLED;

--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
