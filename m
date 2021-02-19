Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B25E531F722
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:13:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CB5B606F5
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CLuu6pIIH2K6 for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 10:13:06 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id C8A98606FD; Fri, 19 Feb 2021 10:13:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96A58606F8;
	Fri, 19 Feb 2021 10:12:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E8AA1BF2CC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 78B1487038
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A9CpQaYHScLP for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:12:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 702C686E70
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 10:12:12 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 67BFE5C0067;
 Fri, 19 Feb 2021 05:12:10 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 19 Feb 2021 05:12:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=noauOSqHA0OnOCd+HOhkFdK4W1
 n9NJ/pdqNhatTbfmA=; b=gKHgGNVYWsMPVK95WZk3o730KT2NIRsEwhlDYxRxDN
 U/RmFEE8+2avzuPMIumiLx7ViGsblo4pPtE3lqYW6t86oUyiRKg4a4y9CgGiLv0+
 28k1uivnNQI9OEYdRm1ub393iZBRA8SuoYxW7veoqnd9m4rK5/B5qx+QISLdKwv7
 n/QqckRjOCUAgSnoxhfqJO55mJX6is9xiL/lRJCMEw/hmbCm0Cy27QwhfQGlxTJO
 GVaJaGir9Y4n6PHLlwetJyr8oCQz5Yx9PP5dyV/2EZxz9FzKk6nLH2Au1slmdgfV
 K2PDo5ZX6soIkd4JkemGADyUwVW3iKEX14aGN49ZVHog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=noauOSqHA0OnOCd+H
 OhkFdK4W1n9NJ/pdqNhatTbfmA=; b=G/Bl4wz6dT20ThMe9LphKL0akFtgzIEjh
 RA/iIZidOOQlOF3lP+FUAQ2ChO/hnOlIULDdVY09pV4YXsuf1785qmRs9U2i8zj5
 qgmFJKSGJIKDjh4DAEKZnfwLnl/AHfbGKbrOqviTFAuwGtItzr5OJTrdYKHwhCY1
 XjedAAlAAcIUtyxPb2vTVNQM0/chWwyolLqBruIw+6lNfqsMuTRfoFMyv31GOEPH
 uTJ0snE2j5+UyXmdTqtg5860MDNv/LUzSPrWDmcYlq89RkVbjZCpbDvM4kkCs6z1
 cLfDuKCqeTrvSSO+lKuc1ewSdwOB+eddln4sO/lyRWvbYkpfM9zpw==
X-ME-Sender: <xms:-Y4vYPWPaEIg71BxnbZNWr6KSmoU21qJ8Y96WA0ZlDkWYfcHb9O55A>
 <xme:-Y4vYFix8Lm9BGJZkZWieMv4_f93kX01ks_jPXE6tto2BV2OViIFnFPBRHEljKj7t
 SWuhV5Sm5hML9xYDA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigdduvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhephghilhhlihgrmhcu
 ffhurhgrnhguuceofihilhhlodhgihhtsegurhhnugdrmhgvqeenucggtffrrghtthgvrh
 hnpeffheeikeeuieelueefueetgeevueegjeeflefhveekhffhvddtvdejudefkeefueen
 ucfkphepudefvddrvdeftddrudelgedrjeefnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepfihilhhlodhgihhtsegurhhnugdrmhgv
X-ME-Proxy: <xmx:-Y4vYNvTYS88Qwx1HOm4hJ27o63XbCE4Luk16r5JgmR0WNR2x7RaYA>
 <xmx:-Y4vYO5QpZFIjuzFIbUTk7IZ3I2wRXNq-m8CF-LdAqAzpuT2huKyCg>
 <xmx:-Y4vYBO5bm0pjvwSSPTaDKnQGeOZGP5d1E48b2Z4Ka_hUnAolRiMRA>
 <xmx:-o4vYKguykz5o0vVJHsI9FQ1NWap0xmUIjHqe4DVxjzgKWB8Wf21YA>
Received: from vagrant.eduroam-fp.privat
 (ufr-132-230-194-73.eduroam-nat.uni-freiburg.de [132.230.194.73])
 by mail.messagingengine.com (Postfix) with ESMTPA id 61BF9108005F;
 Fri, 19 Feb 2021 05:12:09 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/6] staging: rtl8192e: ba_param_set union cleanups
Date: Fri, 19 Feb 2021 10:12:00 +0000
Message-Id: <20210219101206.18036-1-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
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

This patchset fixes the checkpatch issues related to the `ba_param_set`
union defined in `rtl8192e/rtl819x_BA.h` (avoid camelcase).

William Durand (6):
  staging: rtl8192e: rename charData to char_data in ba_param_set union
  staging: rtl8192e: rename shortData to short_data in ba_param_set
    union
  staging: rtl8192e: rename BAPolicy to ba_policy in ba_param_set union
  staging: rtl8192e: rename BufferSize to buffer_size in ba_param_set
    union
  staging: rtl8192e: rename AMSDU_Support to amsdu_support in
    ba_param_set union
  staging: rtl8192e: rename TID to tid in ba_param_set union

 drivers/staging/rtl8192e/rtl819x_BA.h     | 12 +++++-----
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 29 +++++++++++------------
 2 files changed, 20 insertions(+), 21 deletions(-)

--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
