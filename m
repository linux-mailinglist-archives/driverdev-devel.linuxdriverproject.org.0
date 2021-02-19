Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5082B320032
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 22:17:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C53858752C;
	Fri, 19 Feb 2021 21:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sF21JV+a+9zK; Fri, 19 Feb 2021 21:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F11CA87522;
	Fri, 19 Feb 2021 21:17:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E89141C113E
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 21:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E64678751C
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 21:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TvXRMOVFzQ6m for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 21:16:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3D6BF87517
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 21:16:53 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 3678A5C00C4;
 Fri, 19 Feb 2021 16:16:51 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Feb 2021 16:16:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=yincU3GcJrYaiYziC87umqtuVT
 EM9x213UyzTgpRjjs=; b=v9KL0zDZ/Lt4uRxhkkrcM36KbZKH1Xx0tC60UOma7w
 2CIeBraIDYD/8kL0GJWq0hOGpwlNklubrMQCdHYNDxrCSBZGXhW+dizh7XXR4gSy
 Egu7ptXgi9WhlFpgu+5wx3M8uL3Q7m4HXoOiMgiEX1v5o/+Oeczy+kqzPsiCT5eR
 mb1NsKnQUx6ZtgHxb2WL81b5S/Wjy5cl+4oUMd14fsWZ8oXMj+a86wp3jmaLBG2i
 QuMrWX5TW9g84Fbw54Rry77lDHMO/IcJ02pPhHT8CNI+HIymbs3NaoZ9ji5ER/Y1
 VendUI0I55L9wtF7pY9yGqf44+YGXpVFW/6QC4L6xi2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=yincU3GcJrYaiYziC
 87umqtuVTEM9x213UyzTgpRjjs=; b=DXCdzStWwYFllUK3V43KZf1mQBGO13lHa
 MuDyDgdVRGeDu/s96h7aEXP6n7H++F4lliUgcb+HOsU8S+9RZUiIMhdRHHswypC4
 hc4H/Q1A7SjkT4delTtt4h/pO5bWN51rB+KAAEgWoQVU5PVFQabaZpSBJwdTTXdx
 z7H4dsTNbgM+e9L9PvZn2TAfCGPoScnvnWLC9muTqbKWISN6tICxIudlRnMENTlV
 yUZOvwhvRXRR9j0uvP6AnfiLRtucIIs6Rq9Gt4HVcWoNiGrcwBc8DJUXsuy47b8u
 TKTgMSgdPgxp3MuTo+/V2L5u09if8qFBIo0r83LMtGBvKo1dbE90A==
X-ME-Sender: <xms:wiowYKdtmkSIZy6Pld9LnUjlWK7bB-LEOD36Nr8xvIWwS16_nwbmUA>
 <xme:wiowYEPWLiRL2glnXqlKvtI9T0PwjjTOLOWPpXdPXk7UDXsEl7VMWEP_uj8g6C_tD
 4duUnvFOwVRyWCs4Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigddugeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhirghm
 ucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrthhtvg
 hrnhepffehieekueeileeufeeuteegveeugeejfeelhfevkefhhfdvtddvjedufeekfeeu
 necukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:wiowYLjElRP6WFunRBt8fqcwbEv1kxKVdeCBtezQUUtbUKLqtKgjrg>
 <xmx:wiowYH9-BRTbJZBe9BdOhrSF9n2OnHwwRX1dVIuFhhYz8M2dRcUFpQ>
 <xmx:wiowYGu6VHEfu7xQ_vNLetRhXxhk63ayfy6SgrfrH9ngjoFgiblqDw>
 <xmx:wyowYM3AYWpJ4BxT5dgL_Ep2dYDZd6f1ZdxBq0zmvQQHBqGOwZd1LQ>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 59B21240057;
 Fri, 19 Feb 2021 16:16:50 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/5] staging: rtl8192e: delba_param_set union cleanups
Date: Fri, 19 Feb 2021 16:13:55 +0000
Message-Id: <20210219161400.29316-1-will+git@drnd.me>
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

This patchset fixes the checkpatch issues related to the `delba_param_set`
union defined in `rtl8192e/rtl819x_BA.h` (avoid camelcase).

William Durand (5):
  staging: rtl8192e: rename charData to char_data in delba_param_set union
  staging: rtl8192e: rename shortData to short_data in delba_param_set union
  staging: rtl8192e: rename Reserved to reserved in delba_param_set union
  staging: rtl8192e: rename Initiator to initiator in delba_param_set union
  staging: rtl8192e: rename TID to tid in delba_param_set union

 drivers/staging/rtl8192e/rtl819x_BA.h     | 10 +++++-----
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 14 +++++++-------
 2 files changed, 12 insertions(+), 12 deletions(-)

--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
