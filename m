Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E635231F727
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:14:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82F10605C9
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6l-H6TkWzAX3 for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 10:13:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 85B87606EC; Fri, 19 Feb 2021 10:13:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29BD4606D6;
	Fri, 19 Feb 2021 10:13:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B7041BF2CC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 57EEE86E70
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 06ZsY1Y-teBE for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:12:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6DFEF86E59
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 10:12:12 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id 9A5295C00CF;
 Fri, 19 Feb 2021 05:12:10 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Fri, 19 Feb 2021 05:12:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=GXJPno7jlQ6lx
 30/f6IQjHMlSbMWtrJPdhY2j80BYQ8=; b=gkuHlMTIuVLLI9zPuudxwm3fGnBx6
 V1IhTJygcnzR7HDrGJ7M3Fjw5aFOKJfC5XOC1C2fN+L1lTTm3iMecPF1hBcywzMf
 3zOGlG82EVxeuPeN/plwdymj+fywnm+YbCrgYwtGesMijIj71yjSfQhlEr0M9F7j
 MPQFb7lQeoDJn5hFHVEbKreyHFYZ4Io1w4OW/1ZlQre3hwSdWpWmCanLCnN+Qi8h
 N8RsH6pwFTB5a+V5WTdrJFtnqdgjrYCZsUT12y4RIgve8x2WKPqw6JWhrEm3QuX3
 o8+2bSvVGCKrpQb9ObJoGTcES12KIDwglBkJbmNr9PZxHGAUeg0pjIwfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=GXJPno7jlQ6lx30/f6IQjHMlSbMWtrJPdhY2j80BYQ8=; b=q/WHWxOW
 gfIxgm8QoNeROtMk9ITiJVKIFYph1kHKkNEL3LnTPlm7BOFuTqyBA+EKXiG3kst2
 afFhvUS3O9Ck5Htq/kYr2SyChOgMhHpxvDsZCiUkzUtIDJ2i3oCBV3rElPQVlV7s
 7cMg7yzbbomPJhaOhnJ0XYWMEn2DZQWlmiB9x0221nTapo49B+2/1qawqqAl34as
 O7N2q5ujq/GHT6qnoTRonEcSqUAIl0jcxuuGRvdcDdRhfxtRBxAFmIg9pTVZ2ozh
 QoQZyABhCHYbP2oVLvq6bJ17UFvs7+pyLnXwoI5TCJU7Q8tWnQkEUte6RvI1AQRP
 H/Q8wZbqR74mEw==
X-ME-Sender: <xms:-o4vYE4RYR_tPfxWbjfsj15M7ws0FuzNqyLfnjwXKUGP7H4W61bp3g>
 <xme:-o4vYGQm1_MXJEUOxMa1eX1m7WdXzvO-UIVqV6RCq1dYtpl_QbhgpK4kkuRM29il_
 -U6wdKef-_eLUDXHw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigdduvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhephghilhhlihgr
 mhcuffhurhgrnhguuceofihilhhlodhgihhtsegurhhnugdrmhgvqeenucggtffrrghtth
 gvrhhnpeejvdegffeiiedvfeelkedvvdduffevhfeigfeuueejvdfggeefleekudffleff
 feenucfkphepudefvddrvdeftddrudelgedrjeefnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepfihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:-o4vYEk-A7pkLQsS-xy6b9XE-dAezdNmeW3nDaQMUVzsV967HR38Yw>
 <xmx:-o4vYFLMdHQbj5tYww8NT3TZ84GLh4_9-IqIxKV-L6U-pn-bQyuOYw>
 <xmx:-o4vYHSvE5gwa3mrvvQnNg7xV1HEW6zE4-bCJ-7OU8L6VkW8lqr2Pw>
 <xmx:-o4vYO1XKsloxjz65Z8H_KZ-DNHoGm0cjjlK2w2WBT1EqIsZR4ZI-A>
Received: from vagrant.eduroam-fp.privat
 (ufr-132-230-194-73.eduroam-nat.uni-freiburg.de [132.230.194.73])
 by mail.messagingengine.com (Postfix) with ESMTPA id 098A61080066;
 Fri, 19 Feb 2021 05:12:09 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/6] staging: rtl8192e: rename charData to char_data in
 ba_param_set union
Date: Fri, 19 Feb 2021 10:12:01 +0000
Message-Id: <20210219101206.18036-2-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210219101206.18036-1-will+git@drnd.me>
References: <20210219101206.18036-1-will+git@drnd.me>
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

Fixes a checkpatch CHECK message.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtl819x_BA.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
index b2a784fa051e..4fdff19bb4ae 100644
--- a/drivers/staging/rtl8192e/rtl819x_BA.h
+++ b/drivers/staging/rtl8192e/rtl819x_BA.h
@@ -28,7 +28,7 @@ union sequence_control {
 };

 union ba_param_set {
-	u8 charData[2];
+	u8 char_data[2];
 	u16 shortData;
 	struct {
 		u16 AMSDU_Support:1;
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
