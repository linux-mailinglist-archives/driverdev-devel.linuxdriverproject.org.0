Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1063144566
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jan 2020 20:52:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 53A0285D8E;
	Tue, 21 Jan 2020 19:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wz3RYUF0oj6f; Tue, 21 Jan 2020 19:52:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D361385754;
	Tue, 21 Jan 2020 19:52:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04DF91BF575
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 19:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EA3D18535D
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 19:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nXHEwV1S0Jbn for <devel@linuxdriverproject.org>;
 Tue, 21 Jan 2020 19:52:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CBDD840B5
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 19:52:21 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id w5so2799583wmi.1
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 11:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=zxuX1UtB2iSvDZIxFVQFKZTyCjRelb+xJCXnYV6RwPY=;
 b=pyD7oMxb+h4jKCDHx8Zxqa3r8SpQmJ2Xi0xv8kpJVM4SCmmSXBcI+Z6rw5qTjx4OMx
 z/xAs+8vfuVthEGaOJ8rIWttOdK4Uz21k39epbl9VGqHZAEd8djy5bShH3OIl9Pyv3o8
 hT7lYK6/ARsKY+p3BiDduq4Nr2qio+HG+8JbHXOtaWhkyvT2tJmARM/6TJloPkJxjfEt
 vNInaIUlgP5GwGog2HwymKIsXXlAIvVUvL+OW2DCZYxDfWr4c/oj8uO4PY9Rkx3ac3za
 Px8ubbN0YxfyEEaiN3/DnmxizpwTA6dCqLh+7rSLrP8Gg9CcyoLrY0k2avYiuUaW1Go6
 yLdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=zxuX1UtB2iSvDZIxFVQFKZTyCjRelb+xJCXnYV6RwPY=;
 b=BtxtVFaOsUDytMoIEWhSH3DOSM0ebEsQvKVWtq6nv2crX73Bps9lQTfdO81h5sjo0q
 M4TsyFi/VzlTm2QnxBGJBWJt0AWx9CYtP1+y/mUNuitmldnfQm0RIM1XCuRxlBABEUAW
 Qip6fF0GsvIsUAZLhUogpWX3pCSHNPL3Wi6auN4qtOsvXIU4cRGlnYjKA+Gh/G/zScxF
 zxoVHXgC+qolbdpgWq52WhGFB03uS4Cj1Iy0qbxOdu9TVhNJUoMWoo/CUQNkEhnZ5rzu
 8WmoeBL417XXMUzY6sy7avF5m/hnwQ1dszuMxcK2jWEunYUEwKM+PG7IW2RePnKaXnAH
 bBJg==
X-Gm-Message-State: APjAAAU7GCx+Rupv/FLu8rDSHhk4c8ianNR5A+E7E/wsfc4SHH/JT1S+
 tstRxRrMXzyoBlD1FvM6tus=
X-Google-Smtp-Source: APXvYqx5Yx5lfcaSIVQJgA5csyaAkbauM0CYPILqYoYnpAt60f+UEz9SBSMVAtMbVmDNrGfVDa98NQ==
X-Received: by 2002:a05:600c:20f:: with SMTP id 15mr61254wmi.128.1579636339537; 
 Tue, 21 Jan 2020 11:52:19 -0800 (PST)
Received: from linux ([2001:7c7:212a:d400:8c86:9345:7668:6b83])
 by smtp.gmail.com with ESMTPSA id s15sm50254070wrp.4.2020.01.21.11.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 11:52:19 -0800 (PST)
Date: Tue, 21 Jan 2020 20:52:18 +0100
From: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] staging: mt7621-pinctrl: Align code by cleanup long lines
Message-ID: <20200121195218.GA10666@SandeshPC>
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

Cleanup lines over 80 characters in pinctrl-rt2880.c.
Issue found by checkpatch.pl

Signed-off-by: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
---
 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
index d0f06790d38f..254d4eb88f5f 100644
--- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
+++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
@@ -159,8 +159,8 @@ static int rt2880_pmx_group_enable(struct pinctrl_dev *pctrldev,
 }
 
 static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
-						struct pinctrl_gpio_range *range,
-						unsigned int pin)
+					struct pinctrl_gpio_range *range,
+					unsigned int pin)
 {
 	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
