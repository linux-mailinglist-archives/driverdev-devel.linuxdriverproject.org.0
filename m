Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7002D8E98
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:17:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4DE0871C5;
	Sun, 13 Dec 2020 16:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKzH3a3FH-Fx; Sun, 13 Dec 2020 16:17:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47B18871C6;
	Sun, 13 Dec 2020 16:17:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2580C1BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 112DE2044B
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HXIAHISpzjjT for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id EFE6D20380
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:17:27 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id q18so6464969wrn.1
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4FZ3cP1OuTxfK0gwz1Y/PUWxvlvZu7xp+4Ek4N5jpDQ=;
 b=WMlym3iS2H3oTcuHjFDLF3LoK1fESINRLhLoCueruLA3MTGES9p1UuprnXuoa3aqCf
 zgrAfrYESj5m/bSI5idH7XeazTPaWQG+/hNq63BG0zYyOYmm03m1P5a/G8aSwG1wS9Gv
 r7LSqmpVREu5vVRbrq8NqABd6b7dNMtnTu9OHDnbs6N4t566G8mJ/ppaOlLlb/4KQ1e7
 nywJy0lPIctVGUch1+0EFrApiRLCtBHgVjup/EHVna10mbGHTgXJV8wYJ/AI0FFaE3wI
 G0uTmULKxVdlUq5EYzV99jnwuI6PyJLiYNlZYlYwb+kvLMG+LpXvbCTqbRgcWswBCNWC
 a+1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4FZ3cP1OuTxfK0gwz1Y/PUWxvlvZu7xp+4Ek4N5jpDQ=;
 b=fDTtICHlrmHNx9aLnf9HuFttDSom71pkxbjHsZoz8hmQJwABE/sJGu4I+GMbWr+trj
 +zzlh4uGpThRgK8I72Ml8OKmNRONvqRDap+X7/hz+CAGmoY+7cZT/tIl63EX7a7k14Bj
 NBKUrcp8hGtrrOy6vm/yqOw8jifbFJvkI40DzwMAKd5GVtb4X747wP4mqu5aFKm1FLgy
 iCfDAJbTpKDcEHnLV0OJXbuH9+faQceD5NoT2ixnoH7B4oet77QB4vvLColIW+Z1mtpF
 BtKADXz6EtjT5sq+vn247m+3eaeTwLQivTbGgVc3bhRsIo+xTuhruA8Ke1XJGF31/OLx
 2UiA==
X-Gm-Message-State: AOAM533gtfKj4+38LhS+yEzinedT/ju7qsvKz2iV6pmNxT+CyvH5soT6
 FCupDI1f24DWp7xTD9sgVG8=
X-Google-Smtp-Source: ABdhPJxtjsFp2GSspK6oOC9bf01KY9OFbN+m8KcBkj2GKuSkZQkFIpskgiaBW6McDgPFQQ4NVLybEg==
X-Received: by 2002:adf:a745:: with SMTP id e5mr24596097wrd.366.1607876246435; 
 Sun, 13 Dec 2020 08:17:26 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 64sm27102073wmd.12.2020.12.13.08.17.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Dec 2020 08:17:25 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 2/8] pinctrl: ralink: rt2880: avoid double pointer to simplify
 code
Date: Sun, 13 Dec 2020 17:17:15 +0100
Message-Id: <20201213161721.6514-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Double pointer is being used and assigned in a bit dirty way to
assign functions in pinctrl. Instead of doing this just avoid it
and use directly 'p->func' instead.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/pinctrl/ralink/pinctrl-rt2880.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/pinctrl/ralink/pinctrl-rt2880.c b/drivers/pinctrl/ralink/pinctrl-rt2880.c
index 42b1c6cecb57..c933e1a1d4fa 100644
--- a/drivers/pinctrl/ralink/pinctrl-rt2880.c
+++ b/drivers/pinctrl/ralink/pinctrl-rt2880.c
@@ -193,7 +193,6 @@ static struct rt2880_pmx_func gpio_func = {
 
 static int rt2880_pinmux_index(struct rt2880_priv *p)
 {
-	struct rt2880_pmx_func **f;
 	struct rt2880_pmx_group *mux = p->groups;
 	int i, j, c = 0;
 
@@ -218,31 +217,29 @@ static int rt2880_pinmux_index(struct rt2880_priv *p)
 	p->func_count++;
 
 	/* allocate our function and group mapping index buffers */
-	f = p->func = devm_kcalloc(p->dev,
-				   p->func_count,
-				   sizeof(*p->func),
-				   GFP_KERNEL);
+	p->func = devm_kcalloc(p->dev, p->func_count,
+			       sizeof(*p->func), GFP_KERNEL);
 	gpio_func.groups = devm_kcalloc(p->dev, p->group_count, sizeof(int),
 					GFP_KERNEL);
-	if (!f || !gpio_func.groups)
-		return -1;
+	if (!p->func || !gpio_func.groups)
+		return -ENOMEM;
 
 	/* add a backpointer to the function so it knows its group */
 	gpio_func.group_count = p->group_count;
 	for (i = 0; i < gpio_func.group_count; i++)
 		gpio_func.groups[i] = i;
 
-	f[c] = &gpio_func;
+	p->func[c] = &gpio_func;
 	c++;
 
 	/* add remaining functions */
 	for (i = 0; i < p->group_count; i++) {
 		for (j = 0; j < p->groups[i].func_count; j++) {
-			f[c] = &p->groups[i].func[j];
-			f[c]->groups = devm_kzalloc(p->dev, sizeof(int),
+			p->func[c] = &p->groups[i].func[j];
+			p->func[c]->groups = devm_kzalloc(p->dev, sizeof(int),
 						    GFP_KERNEL);
-			f[c]->groups[0] = i;
-			f[c]->group_count = 1;
+			p->func[c]->groups[0] = i;
+			p->func[c]->group_count = 1;
 			c++;
 		}
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
