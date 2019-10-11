Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC611D38DE
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 07:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD15C86E95;
	Fri, 11 Oct 2019 05:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LAOoXC7Oa_9d; Fri, 11 Oct 2019 05:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23B2086E8A;
	Fri, 11 Oct 2019 05:52:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 381B91BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FB418882F
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 05:52:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mDCic9tfQTnU for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 05:52:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E03D887FE
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 05:52:07 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id b8so5108097pgm.13
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 22:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+tekSgsGuy1fdkhbY2/YHSwUbdUzMIOOOe19bzI/3Gw=;
 b=MD2AppS7dJSr7wAUqTZ+e0XpyMhGWv7bSlSK0PbguEEyDwcyYNjfeWPCFG7zgyXW3r
 hRZNj2+Pr+LdyYUWZQ+891v1c4LducXp3HciwOLgv17aND53S0sB/6VAMy19bN9iM3kq
 HT2Rvl+vQRoHY2QlC8w+AZWndz8X0GLcIIRvRHHlaNb6lswgVS8m8dZ4J4ktIvsnjsm2
 b9a8Yog+ag292LE0lMYG0m4506UaAL0OUKDbz9cuomQe2ZZgQ+dKLRMpEhqL1tIrCZcs
 GTLfreUlqfDqsm1oEeMm0BjmfRQ0DKGhQWqqTKzZOBaG/Kz+y6bm+gpMS6xGCS0uvO/M
 V10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+tekSgsGuy1fdkhbY2/YHSwUbdUzMIOOOe19bzI/3Gw=;
 b=pipu4B90undofGc+xwSn6/euM8IhAoFKpN3L5jgt8jYTKasP/+pQ9kOwsu51ND98Yb
 6ArZz+RYLHQrxtYL0ooBXl8QL+wdPTVpZv9Ie8haDCUxB/ebh6WZctcwhag4LniEm/wN
 EseEZ3vSMatFHhta1Sd5UCohp5lmOfNjljhBOmUTkVQphVqP1tA0VNj32sk+aZPTsbYY
 kcCBSvzvJCEiKh7wfDdfBh90Jkk5jq1YAWOw3JDYJRPs07uXU8axNtuHVS7x7+x5ox2m
 EXdcw7kKVkjE8tqKKRO9vbv5KOjk1A7kL0/1n0hFDgZlxmT9cqmLBRD7oUF5crGngooZ
 DpgA==
X-Gm-Message-State: APjAAAWl0kucXhf/bShi9uDZJpdsIgBDQoJ8oblj6xkqylP+/l+PUZ7j
 Q1M1tLKiEh/vIfg652C1sWU=
X-Google-Smtp-Source: APXvYqwUyqJsLZQcNBU6/sK5svCQcUWSY36wp0/xdySy/dv4We5qiDUmWS3DJieUBpVy8OCdeOrUhA==
X-Received: by 2002:a63:d151:: with SMTP id c17mr2814629pgj.423.1570773127245; 
 Thu, 10 Oct 2019 22:52:07 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id i184sm10257782pge.5.2019.10.10.22.52.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 22:52:06 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/5] KPC2000: kpc2000_spi.c: Fix style issues (missing blank
 line)
Date: Thu, 10 Oct 2019 22:51:52 -0700
Message-Id: <20191011055155.4985-2-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191011055155.4985-1-chandra627@gmail.com>
References: <20191011055155.4985-1-chandra627@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 michael.scheiderer@fau.de, fabian.krueger@fau.de, linux-kernel@vger.kernel.org,
 simon@nikanor.nu, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolved: "CHECK: Please use a blank line after.." from checkpatch.pl

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 81d79b116ce0..d1f7360cd179 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -50,6 +50,7 @@ static struct flash_platform_data p2kr0_spi0_pdata = {
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi0_parts),
 	.parts =	p2kr0_spi0_parts,
 };
+
 static struct flash_platform_data p2kr0_spi1_pdata = {
 	.name =		"SPI1",
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi1_parts),
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
