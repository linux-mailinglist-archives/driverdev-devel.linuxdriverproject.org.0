Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3547C143E7C
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jan 2020 14:47:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96961875D8;
	Tue, 21 Jan 2020 13:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Cr3jvdTHWSP; Tue, 21 Jan 2020 13:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C47F486631;
	Tue, 21 Jan 2020 13:47:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9993D1BF38E
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 13:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 95B61204D9
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 13:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySEMScB516QQ for <devel@linuxdriverproject.org>;
 Tue, 21 Jan 2020 13:47:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id D88512010E
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 13:47:07 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id t2so3297122wrr.1
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 05:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=GlVSvFefthhvDndxHquihB1g9N3pysqIKkyZHPQ+LOQ=;
 b=gWqXTSOR7c3TA7dwjaF4xYiCZIGscmbPPMzPaK//HkoFkOPNoFymt3z3u6KM3fEdJo
 YdpnAcVFZ2kRZHa3fL5p8xP9qWPKL4baQ6IbaO03oLZxR+yb0uQEQY21sWxcUupxqrWG
 OSLv6wjpHspDdc6KPDJtJ57aDFgM088BwF6iY0b7XYd/e2m1jikcBKO6sMpTafb0s33D
 HkaSpCRuNxe84bWRJ3Gd3AT/ZgGU/BQ/YCMGczMY8g9FymMb9JfrIRVa831npeV1d5Gv
 Uds0sYJ9LXBRLiha54LT8le77VzIwPA20s1Xw/Xx+4YBG/4QP1b9x6amWyftIdn7F06l
 lBGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=GlVSvFefthhvDndxHquihB1g9N3pysqIKkyZHPQ+LOQ=;
 b=VXgGXhG+UXC/cFKrYkDy6C9zpMzQqOhRtI5QRV4+KEBaxT7/obcwW7CpU+fSbTTpiQ
 WKCGHsRPtHqkvAI4lsOlJS8HnpLfyT52e8qRg/fTtFyBtpnO0IIcNPlWdyKgrqs6hswA
 4LbhdMztqX4nLR7zuk4iS+tuC7GWtb+C5yjMnq19WaJvnBPEPIPd2eusRPijjegvAL3c
 BbnsIopKsB5x3ma0jPgEvxMYaHr9I4B+Qn6e26rOTY4U07xZ1AjWGJfjl6Hg3GG3Tv6V
 3bqn2Iv0jJOYAgC0VdHrAD4yySMgBZVpDr73UD0aeGNuPopZuodfA0pvWBDo9wJ1+aCB
 PNtw==
X-Gm-Message-State: APjAAAWGoJJm5YKp/jRH+JxUNiD1VDtDszlgPDhelUvLnteofAQpRQSZ
 50K5ULek5u4QrNWQToLRu5A=
X-Google-Smtp-Source: APXvYqw9ozq/43cGjkx6h7pBZMO6XPg/SApSBU9iRuCkRi8YdUpV7oxeAri8PTODt89gXFbTc2u3Bg==
X-Received: by 2002:adf:c54e:: with SMTP id s14mr5150884wrf.385.1579614426236; 
 Tue, 21 Jan 2020 05:47:06 -0800 (PST)
Received: from linux ([62.96.18.94])
 by smtp.gmail.com with ESMTPSA id u8sm3870475wmm.15.2020.01.21.05.47.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 05:47:05 -0800 (PST)
Date: Tue, 21 Jan 2020 14:47:05 +0100
From: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] staging: mt7621-pinctrl: Align to fix warnings of line over
 80 characters
Message-ID: <20200121134705.GA28240@SandeshPC>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Issue found by checkpatch.

Signed-off-by: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
---
 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
index d0f06790d38f..df5da5fce630 100644
--- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
+++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
@@ -159,7 +159,8 @@ static int rt2880_pmx_group_enable(struct pinctrl_dev *pctrldev,
 }
 
 static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
-						struct pinctrl_gpio_range *range,
+						struct pinctrl_gpio_range
+						*range,
 						unsigned int pin)
 {
 	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
@@ -218,10 +219,10 @@ static int rt2880_pinmux_index(struct rt2880_priv *p)
 	p->func_count++;
 
 	/* allocate our function and group mapping index buffers */
-	f = p->func = devm_kcalloc(p->dev,
-				   p->func_count,
-				   sizeof(struct rt2880_pmx_func),
-				   GFP_KERNEL);
+	f = p->func;
+	p->func =  devm_kcalloc(p->dev, p->func_count,
+				sizeof(struct rt2880_pmx_func), GFP_KERNEL);
+
 	gpio_func.groups = devm_kcalloc(p->dev, p->group_count, sizeof(int),
 					GFP_KERNEL);
 	if (!f || !gpio_func.groups)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
