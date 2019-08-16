Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0830D8FBA8
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 09:06:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A2F4A86A02;
	Fri, 16 Aug 2019 07:06:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SOPAQu3ejnyU; Fri, 16 Aug 2019 07:06:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD46E84422;
	Fri, 16 Aug 2019 07:06:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72A151BF354
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 07:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 69DF284812
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 07:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Usrm1F6_O6VY for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 07:06:06 +0000 (UTC)
X-Greylist: delayed 00:05:41 by SQLgrey-1.7.6
Received: from mail.someserver.de (mail.someserver.de [31.15.66.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7BE9B84422
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 07:06:06 +0000 (UTC)
Received: from localhost (87-231-101-12.rev.numericable.fr [87.231.101.12])
 by mail.someserver.de (Postfix) with ESMTPSA id 66533121546;
 Fri, 16 Aug 2019 09:00:20 +0200 (CEST)
From: Christina Quast <contact@christina-quast.de>
To: ard.biesheuvel@linaro.org
Subject: [PATCH 0/2] Use ccm(aes) aead transform in staging drivers
Date: Fri, 16 Aug 2019 08:59:34 +0200
Message-Id: <20190816065936.12214-1-contact@christina-quast.de>
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
Cc: devel@driverdev.osuosl.org, Christina Quast <contact@christina-quast.de>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anushka Shukla <anushkacharu9@gmail.com>, Zach Turner <turnerzdp@gmail.com>,
 linux-crypto@vger.kernel.org,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use ccm(aes) aead transform instead of invoking the AES block cipher
block by block.

Christina Quast (2):
  staging: rtl8192u: ieee80211: ieee80211_crypt_ccmp.c: Use crypto API
    ccm(aes)
  staging: rtl8192e: rtllib_crypt_ccmp.c: Use crypto API ccm(aes)

 drivers/staging/rtl8192e/Kconfig              |   1 +
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c  | 187 ++++++++----------
 drivers/staging/rtl8192u/Kconfig              |   2 +
 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 187 ++++++++----------
 4 files changed, 159 insertions(+), 218 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
