Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E65131B055
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 13:28:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF45E6F579
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 12:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AdAsuaKw64DH for <lists+driverdev-devel@lfdr.de>;
	Sun, 14 Feb 2021 12:28:21 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 216DA6F5A4; Sun, 14 Feb 2021 12:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D389C6F500;
	Sun, 14 Feb 2021 12:28:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C1EC81BF4E6
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 12:27:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BDE68870B5
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 12:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLA7rT7e0OV1 for <devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 12:27:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0353C870A7
 for <devel@driverdev.osuosl.org>; Sun, 14 Feb 2021 12:27:48 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 233145C00BD;
 Sun, 14 Feb 2021 07:27:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 14 Feb 2021 07:27:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id; s=fm2; bh=1VY33AhqE1N3y4vDykDeA1
 +0wGn/+EB7Iplukdy4obA=; b=SZAiM3Rhb0Fo3fgLHpldcppOsou5eOtIyzZIHT
 vIpoYjbKWe5ta8vnrYmL+YVIJ1XHHbGm2helky84Fp579SmZdjPTNoIgfarMU5TL
 m/hTb60Ec8S/9lQ3l5bu9EXnaIAGb8+qR4kAbdOIsak2MoRtSxFzbY4/CGba1ePH
 bppGqBJQBbd090zep2LMKgD0mMKTcIeu4x+zcjmt1iRvqNkKnH09nLCP1rWsZCgi
 LXR5ifIgY1PCJ9SFTYN83R6S786RHHcxvoPzyNT9RxyqPeBpJLoDC5J0ix2Vfc4u
 EKcMBnpXd30RvUlWnQo8Y620ji8inwfxmUaixGH25in71hvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:date:from:message-id:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=1VY33AhqE1N3y4vDykDeA1+0wGn/+EB7Iplukdy4obA=; b=ClQ8i0ge
 HG0GGGRopeLXJjpQWic7HXOgt3J1vWYxEYn98D24w2w/dYej0RLRBHvbHFMqlBLz
 erQa5Q7qn+1lKpOlTkKBU87VJ1OKCsGP3HNlUGFFkA8fiWmyqXqw18NzV1yFzohq
 mUyCrg2xK92VoI0IHDmkX2QuVHoS89AR7qsbYoWJoENCIWHDFTNI9FtaGXZtIMj5
 lNyky/gwCQln7rQoECj0GQG/bn9UnzO+G/uFvJVQn1/omdzV1zsyhgTl4avxiJj0
 LYONfBkMiVBWhqXnkTsGunTOR9kkwlMh+5HFYlv4zxCiv8lHWwZl5NkpjpA1Bw9g
 2evK0fEu62ZQZQ==
X-ME-Sender: <xms:QhcpYLZ-5sfYdC9EcjdrsAbw2ayTOy2PbJqkCeBVzk5mw5lXdg07jg>
 <xme:QhcpYKaTuR67vySwASo-7r1qjB8o4qdG3fkpFbmm2VELAqtQc03bWTz0oIbBHYLYX
 nDDxW8yoGgeVOCUqQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieehgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofestddtredtredttdenucfhrhhomhephghilhhlihgrmhcuffhu
 rhgrnhguuceofihilhhlodhgihhtsegurhhnugdrmhgvqeenucggtffrrghtthgvrhhnpe
 ejteduieevjeefudeuhefgvdevgeehgeehgfdtueeuteevleeuhedtueekvdegteenucfk
 phepvddujedrvdefkedrvddtkedrjeegnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepfihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:QhcpYN9ZE9gRrxbkEfcWvfbBJMpVGKA460XwVD7suI1B9ID8acSdlQ>
 <xmx:QhcpYBoKc-NSchqjwJJQybah2c_OAHrq32z8OgwBA4ZqrR2fvNy4zg>
 <xmx:QhcpYGptSkub9ovFKUuEc3zJ7fImtfW4Pi6xzvfpFC1C0YkfyeMWZQ>
 <xmx:QxcpYNQz2IWlEhLl18O-3QlOOcQi12Ge63DVkslNMuY30zXWZGcAgA>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1610A108005C;
 Sun, 14 Feb 2021 07:27:45 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192e: fix typo in a comment
Date: Sat, 13 Feb 2021 09:01:12 +0000
Message-Id: <20210213090112.24616-1-will+git@drnd.me>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes a checkpatch warning by deleting a repeated word.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtllib_softmac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 2d3be91b113d..ab4b9817888c 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2443,7 +2443,7 @@ inline int rtllib_rx_frame_softmac(struct rtllib_device *ieee,
  * N = MAX_PACKET_SIZE / MIN_FRAG_TRESHOLD
  * In this way you need just one and the 802.11 stack
  * will take care of buffering fragments and pass them to
- * to the driver later, when it wakes the queue.
+ * the driver later, when it wakes the queue.
  */
 void rtllib_softmac_xmit(struct rtllib_txb *txb, struct rtllib_device *ieee)
 {
--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
