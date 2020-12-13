Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 808882D8E9B
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:17:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 955732047A;
	Sun, 13 Dec 2020 16:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UWFsz+bHD3IC; Sun, 13 Dec 2020 16:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 87DC22044C;
	Sun, 13 Dec 2020 16:17:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 686CB1BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52FFF20380
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 04VWdlQSOYDt for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:17:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by silver.osuosl.org (Postfix) with ESMTPS id EF32220448
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:17:28 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id k10so11614226wmi.3
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tBnar4EOBqUyAZ3eTgoIH+VVc0DkF/ERTYiHgxOAUMg=;
 b=vXlC2tVK0G+/3jO20C9qCbaoPVYJ0MvK1j4MBx3N4ODAPfbGuez+CtKGivf6iv8twt
 u2NErF0T+SwWSZn0ZFxak4Vy7+y3yzi23y/cy+WdOsr6tLUSCOY57lYFmIx1RutKUTCp
 ALjbGOJxorB+k97XV2a4uzfkGzyH0o04gEl5uQUUpRg695wy+VgxyCnplbjCkhdmrnMb
 tSMchwR0+c2/HYSSbLm3tkI4DWkjsazL8sd8w4bXIJpXzpcPc3LMQkIZ2zxcZKtNqXEA
 QX9Mw4iuJfmP9zNh0nkRUCPUReuZVkQaiC3TZZRBGoRlnrvZgyKILcecqMIW+0eRgAX9
 grtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tBnar4EOBqUyAZ3eTgoIH+VVc0DkF/ERTYiHgxOAUMg=;
 b=joD8b0X1AAfalGMv9EYeqDONGPcllr8IId2tv4LOMRpmxLBJYYW5TnEs7tgJRyLEVo
 CaLh/TkzIZmKMmK/xLca8C7uaWorKiaKjroEik35YH+3wovdcpHw0pcHlhUy06dI5GD5
 opoDVlVtfjMIO5u84pn6t+1MQHMcy3k+wQ5Hy+yUKPa+1w4x2T+sUfDhhsDqEdJdGeHW
 05IOYmBAHrmQy+lDYOomwo6Kdqja65xoE0+YGv0UGRJ93s7Nf3aoAnRarIT1nu2Y4w5T
 bnykXafOFZjGqh1L7l/iynt3nGWtt8GPqqQVFoDIw/mImW6eGMy3fS8X3PbTeOT4MCtr
 iLmA==
X-Gm-Message-State: AOAM533BFYimmCCQV3RQ/mOnWRG519wgLyacdbzE3GJsx3//QyBiUjPc
 nq//LP3XNdVkubO5qD2Akmk=
X-Google-Smtp-Source: ABdhPJxhFTIYlZQiGHofApKmES4ojOpP9cIJyfrcT0+gwKkK8YImq+k0vM2L9reQYhpLSHyE8uj1jQ==
X-Received: by 2002:a7b:c24d:: with SMTP id b13mr17034601wmj.151.1607876247525; 
 Sun, 13 Dec 2020 08:17:27 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 64sm27102073wmd.12.2020.12.13.08.17.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Dec 2020 08:17:27 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 3/8]  pinctrl: ralink: rt2880: return proper error code
Date: Sun, 13 Dec 2020 17:17:16 +0100
Message-Id: <20201213161721.6514-4-sergio.paracuellos@gmail.com>
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

Check for NULL shall return '-ENOMEM' instead of '-1'.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/pinctrl/ralink/pinctrl-rt2880.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/ralink/pinctrl-rt2880.c b/drivers/pinctrl/ralink/pinctrl-rt2880.c
index c933e1a1d4fa..6e0bf7c4837b 100644
--- a/drivers/pinctrl/ralink/pinctrl-rt2880.c
+++ b/drivers/pinctrl/ralink/pinctrl-rt2880.c
@@ -206,7 +206,7 @@ static int rt2880_pinmux_index(struct rt2880_priv *p)
 	p->group_names = devm_kcalloc(p->dev, p->group_count,
 				      sizeof(char *), GFP_KERNEL);
 	if (!p->group_names)
-		return -1;
+		return -ENOMEM;
 
 	for (i = 0; i < p->group_count; i++) {
 		p->group_names[i] = p->groups[i].name;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
