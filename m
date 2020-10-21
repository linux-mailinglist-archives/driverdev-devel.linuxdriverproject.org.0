Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 426662948FA
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 09:37:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71CE3867CE;
	Wed, 21 Oct 2020 07:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kHgb330vW37l; Wed, 21 Oct 2020 07:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FE00868D9;
	Wed, 21 Oct 2020 07:35:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FDED1BF5A9
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 07:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5CC57863E3
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 07:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WR3LaTYoykzf for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 07:35:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F1D19863C5
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 07:35:30 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id bf6so784498plb.4
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 00:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5LfVEvRJtyCjDhqOkmhLUCyYIUG+eq91lMriaMW4Nbo=;
 b=sg/M2ZOC1GiSORG7urGWKDKbOb9OPPsPDnKCRhsKSV0taARzkdzWWfOR4doZ8ti35Z
 J0Q8g5/FbX6Xat8JXW7vZVyaIFaNwVxWIdqeYusTxNYQyZDUKz6uoaMpssC/2WDSAyIu
 7DYHdRcH2uNbs6tj7Avs6I6hKy/PqW+xxgE/hF10TbD/FGMLq1HBMivdiJoe+na1VcGj
 Kha61Ox2d9iT9QVXNs4vBzFaOWqIqHvyux+F7Nr3mX1BVxlNg8cJB7X68NE1ztkzXc4z
 x3xk6woQHyH1KvyZ59FHPFinGr2U/SFx6z69IM+GwxWfBzGrSjbocOzAnkSl5Etl4Q4Y
 M5nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5LfVEvRJtyCjDhqOkmhLUCyYIUG+eq91lMriaMW4Nbo=;
 b=rlIFlQMbr4p7tXrQA5y3fWMGBfNlVFIEeGPO8W80+4g1+sgJy55MTaQv0QoqIvq9JD
 8XP6XDK105pSXwAreViE8UNeQpew0089zIiRR8LuqYXVzP1z8yXYFj0ps42uhFJxVkSj
 juBgNACQMVr8vSB60WQajyWz+t7q3jbWfJOBmhs+jjQLFKfwpShtHqTeng9LxMmtcZoi
 cE2hRB6ICzcWbt+x2RvFdIP8f8OP7v6TZinrBR/1eHYdAdFo/EW+rp7pMFCgan8IQsF2
 eSyT0B25+UrRgI3vkG/PCFtUBTdTwAp/vdO+ytwWrqt/ZHrbAECklhjlG2C/9ooSQ7TN
 WaIg==
X-Gm-Message-State: AOAM530jiYXWea3UGfqeoG8XMJq3Nyec/DA284Ydjy7JbsMe8VqBWixX
 SD2mn/g0+xc6xfuAC4y/t/k=
X-Google-Smtp-Source: ABdhPJwdUZHuco6sWZQ4w7hYOBWqhY5AHzN/CLXE9qKGZ5S1lR3P5LfO8HG5lQTM/DlY7hw6EuleMA==
X-Received: by 2002:a17:902:bcc9:b029:d3:c7de:5cfc with SMTP id
 o9-20020a170902bcc9b02900d3c7de5cfcmr2289425pls.19.1603265730650; 
 Wed, 21 Oct 2020 00:35:30 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id e196sm1278833pfh.128.2020.10.21.00.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 00:35:30 -0700 (PDT)
Date: Wed, 21 Oct 2020 13:05:25 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <8e02f6d8a4263971b90f73820fd855a31da3f8fc.1603264617.git.mh12gx2825@gmail.com>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
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
Cc: mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rename show_engine_regs show function to engine_regs_show as per the
convention followed. The show function macro DEVICE_ATTR is replaced
by DEVICE_ATTR_RO. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
   - Replace DEVICE_ATTR by DEVICE_ATTR_RO as suggested by Greg.

 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 7698e5ef2a7c..aa9f96793e59 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -50,7 +50,7 @@ static void kpc_dma_del_device(struct kpc_dma_device *ldev)
 }
 
 /**********  SysFS Attributes **********/
-static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *attr, char *buf)
+static ssize_t  engine_regs_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	struct kpc_dma_device *ldev;
 	struct platform_device *pldev = to_platform_device(dev);
@@ -80,7 +80,7 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 		ldev->desc_completed
 	);
 }
-static DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
+static DEVICE_ATTR_RO(engine_regs);
 
 static const struct attribute *ndd_attr_list[] = {
 	&dev_attr_engine_regs.attr,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
