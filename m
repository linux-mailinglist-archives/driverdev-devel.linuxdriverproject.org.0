Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EE0D1FB3
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 06:37:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B15DD24856;
	Thu, 10 Oct 2019 04:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hH8AsRq9PrWv; Thu, 10 Oct 2019 04:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 23129242F3;
	Thu, 10 Oct 2019 04:37:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 938E81BF5A3
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C20D8695F
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oV9gE1UCw9Ew for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 04:37:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx3.ucr.edu (mx3.ucr.edu [138.23.248.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8CF784CE1
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 04:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1570682267; x=1602218267;
 h=from:to:cc:subject:date:message-id;
 bh=Qglj1z/rVFrSvjj0s8+qncgzWBHeOEvd87vRgzQFxfQ=;
 b=F8Q7T/tA1l6KZuUtH2EEGrtVPgJHZq/9e9rvqCbDfrCNAXtIWWHOQcKX
 Nef3yGsGmRC8SGbXhlzg8Wyktbl+JXeBhlsMxkHjR9H/rtEMX5ASeL8WI
 A8GIWzzzo/LVCc3FHB/B/3USOdQ9XRpnKLENe5GCZ7NSB+VLQkftbQus1
 XV0+lQvOagDl2cQ3H3tgL6+Yud90A/dOALbKV0/0R+Rk1qBbgPjjI82UG
 bdyNQkHlo5Y4xapacgXMXV07hri0qhvgAhyKvzDzkhpIdX6Let2CzKuRC
 E4XzkK9zM4vflh4/g5dL9jqdrcgqKcABhobHNSMWPlS2kCxQz/Uo3Tk67 Q==;
IronPort-SDR: kNfUFP+xKPLqseboKQ+qeadkfzTwNeDNV5Zm2P9QCNqWT2mwcjSk1yhDuTkVokp4rIZ9z24DKO
 syWp+UPlXo++LA237ZW7USQOzjMRVt014e6r5yF30xI9a1A++saPT0O5vjNByWia3VbrrSpcY3
 HpZFG/CFRb440NSgNNxFkI88u/og0tDQ7hadrEn6djeK02RVv71h2JcyqPknXfoIvK4lfLld17
 evjtPAWiMsMCi1RRpyQz2aQEmszOhKmj/1UnQ1pMKFTnyOsDZdUAxSNGBMXD2rTVQP32PZ0HN7
 OYQ=
IronPort-PHdr: =?us-ascii?q?9a23=3ASbdU0RSw7F0++744h9n93pRA3tpsv+yvbD5Q0Y?=
 =?us-ascii?q?Iujvd0So/mwa6yZRGN2/xhgRfzUJnB7Loc0qyK6vumBzZLscnJmUtBWaQEbw?=
 =?us-ascii?q?UCh8QSkl5oK+++Imq/EsTXaTcnFt9JTl5v8iLzG0FUHMHjew+a+SXqvnYdFR?=
 =?us-ascii?q?rlKAV6OPn+FJLMgMSrzeCy/IDYbxlViDanbr5+MRu7oR/Qu8UIjodvKaQ8wQ?=
 =?us-ascii?q?bVr3VVfOhb2XlmLk+JkRbm4cew8p9j8yBOtP8k6sVNT6b0cbkmQLJBFDgpPH?=
 =?us-ascii?q?w768PttRnYUAuA/WAcXXkMkhpJGAfK8hf3VYrsvyTgt+p93C6aPdDqTb0xRD?=
 =?us-ascii?q?+v4btnRAPuhSwaLDMy7n3ZhdJsg6JauBKhpgJww4jIYIGOKfFyerrRcc4GSW?=
 =?us-ascii?q?ZdW8pcUSlBAoKnb4sUDuoBO+lYpJTjqVUXsBC+CwisC/3ryjBVm3T62aM33/?=
 =?us-ascii?q?gkHQzA2wMtA9wDvGjJoNnsKKseTP2+wK3VwTjDav9b3yr25orVfRA7ufyCXa?=
 =?us-ascii?q?x+f9ffx0csEA3IlUmcpZD/Mj+JzOkBr3SX4ux9XuyvkW4nrARxryCtyccti4?=
 =?us-ascii?q?jJhp8VylfZ/ih+wIc0JN24R1R6YdK4DJdduTqXN5ZqTcM4WW1npjs1yqAftJ?=
 =?us-ascii?q?O9YSMEy4wnygbBZ/Cbd4WE+BHuWeaLLTtmmX5od6iziwiu/US80uHwS8i53V?=
 =?us-ascii?q?JQoiZbnNTBtmoB2wLS58SdSPZw8UGs0iuV2Q/J8OFLO0U0mLLeK54m37E/iI?=
 =?us-ascii?q?IesV/GHi/qgEX2i7KWdlk89uio9evnZrLmq4eZN4BuiwH+Nr0imtS7AeglKw?=
 =?us-ascii?q?QOUXaX9fig2LH58k35R7JKjvIykqbHqpzVOcMbpquhDw9U1IYs9Qq/Ai+43N?=
 =?us-ascii?q?gEmXQLNlFIdRKdg4T3Jl3DL+r0Aemjj1iwiDtrwurJPrzlApXDNHjDl7LhcK?=
 =?us-ascii?q?596k9dyAo819Ff645IBrwPO//zR1P+tMbCAhAnLgO03v7rCM9h2YMGRWKPHq?=
 =?us-ascii?q?iZPbvPvlCW+OIgPe2MaZQItzbnKvgl+eDhjWUkllADY6mlx5wXaGulHvRhOE?=
 =?us-ascii?q?WZZWDggtAbEWcF7UIQVuvv3WyDQz5OYD7mTrA87zBjUNmOEIzZAI2hnerSj2?=
 =?us-ascii?q?+AApRKazUeWRi3GnDyetDBBqoB?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HyCgA4tZ5dgMjWVdFlHgELHIFwC4N?=
 =?us-ascii?q?fTBCNJYYqAQEBBospGHGFeoowAQgBAQEMAQEtAgEBhECCVCM3Bg4CAwkBAQU?=
 =?us-ascii?q?BAQEBAQUEAQECEAEBCQ0JCCeFQoI6KYM1CxZngRUBBQE1IjmCRwGCUiWkR4E?=
 =?us-ascii?q?DPIxYiGYBCQ2BSAkBCIEihzWEWYEQgQeEYYQNg1mCSgSBOQEBAZUvllcBBgK?=
 =?us-ascii?q?CEBSBeJMVJ4Q8iT+LRAGnYwIKBwYPI4FFgXxNJYFsCoFEUBAUgVsXjkMhM4E?=
 =?us-ascii?q?IjT+CVAE?=
X-IPAS-Result: =?us-ascii?q?A2HyCgA4tZ5dgMjWVdFlHgELHIFwC4NfTBCNJYYqAQEBB?=
 =?us-ascii?q?ospGHGFeoowAQgBAQEMAQEtAgEBhECCVCM3Bg4CAwkBAQUBAQEBAQUEAQECE?=
 =?us-ascii?q?AEBCQ0JCCeFQoI6KYM1CxZngRUBBQE1IjmCRwGCUiWkR4EDPIxYiGYBCQ2BS?=
 =?us-ascii?q?AkBCIEihzWEWYEQgQeEYYQNg1mCSgSBOQEBAZUvllcBBgKCEBSBeJMVJ4Q8i?=
 =?us-ascii?q?T+LRAGnYwIKBwYPI4FFgXxNJYFsCoFEUBAUgVsXjkMhM4EIjT+CVAE?=
X-IronPort-AV: E=Sophos;i="5.67,278,1566889200"; d="scan'208";a="86469516"
Received: from mail-pl1-f200.google.com ([209.85.214.200])
 by smtp3.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 09 Oct 2019 21:37:25 -0700
Received: by mail-pl1-f200.google.com with SMTP id y13so3058876plr.17
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 21:37:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Z2jlPo7cNUsYiJLA96HLY+XLNur36/5ee7Rqvg0uC5E=;
 b=juJ89cPcpXhUChRXKwD42bF3iI70Vw/p3Y2YjzunYtiqQJUfBDrdJXtrl9NFGgR+x9
 xfgMP395r1C3d9okKjxmPyON8IXU1VTW/ZxNBrhYiRb7V49MYLRitQZeOHnGrJSR0NAV
 JamHYgaeo19nTfc6lKKmEbDmVwKVQpznBPD23OqTFWlvKLQiB5h9oY48w6ZRNhl/NH4c
 uiDTm/qneOLWEaZ6lmaZ34HdcVvayWiI4OuHfdw4a5n2Ba6aJ5zAqh3XFKjhFX6bZbb/
 3W5cUPcoWnBweK6pdA+zd3Fx5Fnz/uEWgqu7RCO3s+4i+CvxAKxDro4CdMGwboW9DRKp
 4ZDA==
X-Gm-Message-State: APjAAAWQ4RxGktSJvrfi4sN4ymVaWV/IFctCPPJvSsZB/73dpugDgWQr
 OWztAxz5bZwxpgSYJgjxmxvOYI4PVzsazkfqSuHWRGe7OAMMhERojTeTcbT1qcqdpCcwEm1uOOL
 vpcW+4MoJE7STzRg7aYvn/Gg=
X-Received: by 2002:a63:f908:: with SMTP id h8mr8409113pgi.244.1570682243562; 
 Wed, 09 Oct 2019 21:37:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzHyOtObFJngENmZ9WtxzkJ1f8WRSs7XqzpzG4G5O/ox5y97nK3RVIhkAPkPbp3dMBqdu0v/w==
X-Received: by 2002:a63:f908:: with SMTP id h8mr8409069pgi.244.1570682243138; 
 Wed, 09 Oct 2019 21:37:23 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id g12sm6544968pfb.97.2019.10.09.21.37.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 21:37:22 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] staging: sm750fb: Potential uninitialized field in "pll"
Date: Wed,  9 Oct 2019 21:38:08 -0700
Message-Id: <20191010043809.27594-1-yzhai003@ucr.edu>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Teddy Wang <teddy.wang@siliconmotion.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Yizhuo <yzhai003@ucr.edu>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Inside function set_chip_clock(), struct pll is supposed to be
initialized in sm750_calc_pll_value(), if condition
"diff < mini_diff" in sm750_calc_pll_value() cannot be fulfilled,
then some field of pll will not be initialized but used in
function sm750_format_pll_reg(), which is potentially unsafe.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 5a317cc98a4b..31b3cf9c2d8b 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -55,7 +55,7 @@ static unsigned int get_mxclk_freq(void)
  */
 static void set_chip_clock(unsigned int frequency)
 {
-	struct pll_value pll;
+	struct pll_value pll = {};
 	unsigned int actual_mx_clk;
 
 	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
