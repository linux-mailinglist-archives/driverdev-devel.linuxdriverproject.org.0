Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 019583389E
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 20:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5E06D226FC;
	Mon,  3 Jun 2019 18:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id duLuHXSihBFD; Mon,  3 Jun 2019 18:54:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EF969226C2;
	Mon,  3 Jun 2019 18:54:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 361511BF479
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 18:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D3D485E09
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 18:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vX5vuIWiuvbv for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 18:54:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AC19A85D54
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 18:54:17 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id g9so7320370plm.6
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 11:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=OW/dmyNaGaVJoTyF3MoMrO/1pdIZuVh4e6+v5z0In/s=;
 b=QU37X96yUb+WqrlP0wwOS5x4Pn52G1X3+V/xa7s2j7M8nZn7pGnH9/BkYMJSpDNRKe
 9P2KZn1BDdDqZ36p3lHJra1PA5b/DaZlPNomnfoRMitiRf5Z5ewrFBakupBCLsD7uhGB
 EVDijmUj+cFQ2hzrWJ4Zs/67t9aDccvzTxHruhZQN+B5vJL94okoRy2Vxy6CHdJjcfyX
 +TPAZEn8A20asvY+uno099GtyV1qO7/HFFMncmr26n+u+72eAs3NWTGuowTCgIt6Tnj3
 lsuVsa6Oh3aRtEQVlwVXIvqKZKU7XVxt5UVSb/IhJ3HEPv/lpsF/s+yABgLLPlQVG9GU
 UxWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=OW/dmyNaGaVJoTyF3MoMrO/1pdIZuVh4e6+v5z0In/s=;
 b=EUiytgpcn4CgjUlmqg3StnSrx61tKHdGMthZRI6qQX5bl2wfb56i7/MYe4KJfHCnn2
 e6qaqO0wp2Xs2PWX+7nmEFzrHI2MSo0GrlgRkzQNVwxoxcQ5xlJcmdC9ze92ygtIH19u
 h/LLP9v5yAdEtt3x2ytnZa1k3iw6owRBecFZFmAUrgDToXss89vHk1DW2+R12z6AyWsv
 ukOPgqiXNvqZf+bvDhQsXlEzCh2chbCgx112NXg0zEzrMsDzIPu7eHxvaKLmQgiv7lZJ
 wtiwlcze1wDGA/3U6pwuQogL2nLTTtSh+oibyVY8Wc+NWQiKjvPnorbAK7PJTKJOeyb7
 vO0A==
X-Gm-Message-State: APjAAAUP2d3u49iWdBm+SIzKlICXy6abcMqeenT/ypFkjdGqG7tQxTe0
 vZqR8yp1gs3bemWRLIS1v8o=
X-Google-Smtp-Source: APXvYqx8QtZUnGrkvDs6bvqITl79TneNWtxFrYaz2XWOJRy/tM6baO9gejR3+HC3/7Tk2mboJhS0RQ==
X-Received: by 2002:a17:902:bd06:: with SMTP id
 p6mr31370665pls.112.1559588057354; 
 Mon, 03 Jun 2019 11:54:17 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id d13sm25827511pfh.113.2019.06.03.11.54.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 11:54:16 -0700 (PDT)
Date: Tue, 4 Jun 2019 00:24:12 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carmeli Tamir <carmeli.tamir@gmail.com>,
 Nishad Kamdar <nishadkamdar@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: emxx_udc: fix warning "sum of probable bitmasks,
 consider |"
Message-ID: <20190603185412.GA11183@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

Knowing the fact that operator '|' is faster than '+'.
Its better we replace + with | in this case.

Issue reported by coccicheck
drivers/staging/emxx_udc/emxx_udc.h:94:34-35: WARNING: sum of probable
bitmasks, consider |

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index b8c3dee..88d6bda 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -91,7 +91,7 @@ int vbus_irq;
 #define BIT30		0x40000000
 #define BIT31		0x80000000
 
-#define TEST_FORCE_ENABLE		(BIT18 + BIT16)
+#define TEST_FORCE_ENABLE		(BIT18 | BIT16)
 
 #define INT_SEL				BIT10
 #define CONSTFS				BIT09
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
