Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FCE312026
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Feb 2021 22:09:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A14708688D;
	Sat,  6 Feb 2021 21:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uGP30E0ROdh4; Sat,  6 Feb 2021 21:09:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3B5486813;
	Sat,  6 Feb 2021 21:09:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 84D761BF275
 for <devel@linuxdriverproject.org>; Sat,  6 Feb 2021 21:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7AE0F870E6
 for <devel@linuxdriverproject.org>; Sat,  6 Feb 2021 21:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJtCzEuFDAmT for <devel@linuxdriverproject.org>;
 Sat,  6 Feb 2021 21:09:30 +0000 (UTC)
X-Greylist: delayed 00:52:23 by SQLgrey-1.7.6
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87DD08702D
 for <devel@driverdev.osuosl.org>; Sat,  6 Feb 2021 21:09:30 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id c12so12292616wrc.7
 for <devel@driverdev.osuosl.org>; Sat, 06 Feb 2021 13:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S7bAkgjej0tXs3CFsUSAY/E5YDxWGktGInnREXcyLhc=;
 b=JRm9VyOW91wbTaaDNqzXD9xGVo0wvRAxVi8/RRYuEX3Nocr0wsPcJopHJXtk9NbDDB
 TofS/oZQjeQVTeVlzhJHgBldlOhHBcut88aBQZV+Q6xyZPnEj6Kicz95RVFpC55qUp63
 N5ba4Fk9fiGn4tUeThIcZwC+nKqK7zU2jM7LaaUWQYhkLjUwBkYESiNMvoe1KFcaC7FZ
 eYg3bCi9r56+97gSOOR/zPXuKUIqfOyVUuX1p5r7PcwWoE36TLMx6xAd4ZtiOaHs9AGw
 2YbpRq4q7ACWFj7zNT2T78zfOlOdIhiwAZwKr4SeKh2Sq9iF2rQvgHNWZkdVq6AbmJvU
 Wtew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S7bAkgjej0tXs3CFsUSAY/E5YDxWGktGInnREXcyLhc=;
 b=rYWyLlAIj3OB9cYdsN7WIQ6WTd7rv1VDsTNDq0otZs+M7gpDin6e0YFcWQaQPe1tfl
 qyh2ia+++kqN4ChckcuVL3oho2wjrvTl36fpdsXR6X4Pdg5/xk0mpUVtbbSEvsHB0pIh
 vM5BeZpLyUC/nj+mUw+oyKSbC+iUZw7LOkbrM4P0axvDbid4ro+Acx9o3eEu9qUmEjVL
 gGsrADSVWpb0ne1MNeQmA21298pYlzH1pWLBtravM5kpSZqf3IBlEPmBB7j8O9bcHBQ+
 Tun5d2AxgH+mEmvUU/mUdHJz91Jq1aRgsGurkhCTNWlYx0A+2zAUgZlpG1SoUcJpAT3Z
 vD4w==
X-Gm-Message-State: AOAM530kTMBEH1gYktbC8K8FoYRoGSCbPk652SBK3cVEDYgKyzhKpBhV
 M/xkpVS6DhZwMajxjX+FSYrfl3Uw2klf7abh
X-Google-Smtp-Source: ABdhPJyZu2Gh+51it6XpHqPJjr1b4rWpLSzmf/OsxKoOwn0n0qoHik71EjbvpbjRL76h9bawGGZ+Wg==
X-Received: by 2002:adf:dd92:: with SMTP id x18mr11902843wrl.4.1612642626070; 
 Sat, 06 Feb 2021 12:17:06 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id d13sm17054668wrx.93.2021.02.06.12.17.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Feb 2021 12:17:05 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: octeon: remove braces from single-line block
Date: Sat,  6 Feb 2021 20:17:01 +0000
Message-Id: <20210206201701.5273-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-kernel@vger.kernel.org, chris.packham@alliedtelesis.co.nz,
 alexander.sverdlin@nokia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This removes the braces from the if statement that checks the
physical node return value in cvm_oct_phy_setup_device, as this
block contains only one statement. Fixes a style warning.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/octeon/ethernet-mdio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
index 0bf545849b11..b0fd083a5bf2 100644
--- a/drivers/staging/octeon/ethernet-mdio.c
+++ b/drivers/staging/octeon/ethernet-mdio.c
@@ -146,9 +146,8 @@ int cvm_oct_phy_setup_device(struct net_device *dev)
 		goto no_phy;
 
 	phy_node = of_parse_phandle(priv->of_node, "phy-handle", 0);
-	if (!phy_node && of_phy_is_fixed_link(priv->of_node)) {
+	if (!phy_node && of_phy_is_fixed_link(priv->of_node))
 		phy_node = of_node_get(priv->of_node);
-	}
 	if (!phy_node)
 		goto no_phy;
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
