Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA9AE570A
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 01:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D648884A9;
	Fri, 25 Oct 2019 23:29:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U5ZasWG6jiww; Fri, 25 Oct 2019 23:29:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66A1B88471;
	Fri, 25 Oct 2019 23:29:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD0DC1BF333
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 23:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D6919858B3
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 23:29:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ChG-yKpgyaM for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 23:29:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3ACE785691
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 23:29:41 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id u22so5717990qtq.13
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 16:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=QTe/mbHSIGF8oyKbKycoldd59M1YyY11WJBJiD/SUAo=;
 b=DaB/UDJYQMh1LUc+LAjr6OOYvjQ7nXfj+AhOR/wDO/Nm5udxMuFGjNHMnaCs+Qur4C
 5t1reY8OeD6PoiQqKJRyPurNC7CNLHl83DxsyZqDWD8bGdhTAv+MdnLBWzHHqcFw1VTc
 ApVjWij7lLaM9Ir2Jep9LKRRrutpMWQoNIFIG000V5jN1yXz85RFRIoc71p+9CI1DUmG
 X5worjrOfshIj+uD8m5zHBUCxgRTup2eqP6IR2bCtDkq1LnU8OXrvKCstITgQR5meD+v
 8mI3xTGH++qS8feOShOQQ4SJcuKb51hGiDQh2tQLxsI2syBoAyIPxrxpj0REasJ49W7c
 C+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=QTe/mbHSIGF8oyKbKycoldd59M1YyY11WJBJiD/SUAo=;
 b=pCtmF6bheaERK0KBxs2WkoY3oM0DG4siRzm8rzUuNp/QeYSN/+4hH7rDOSGLzaRWF4
 04yvHGDmhLxugGtSbbkPtdJw4aV2MEX8MXIxbyLFMa+fkVml3yzEV2m7IxX6Ua4InxvY
 LrDA56yUlZlmqz7SrQgR+mazujtthT/0pkWj34ncwCWW0sJXa6vkGg54A/QVChOw91L4
 MBbzpnl0SWSkORc6FNwqAvPVTvU7rm1YK+hRmi6f69FggZ3Xi2SO1ETBLA3JATi1hnD5
 Q4uisyhKa7L6ZcIRbJbAoQqvPsmiBqxWKhk8Z8rUbLEULgdkGqyKGZkca53un2bg79Fz
 5PZg==
X-Gm-Message-State: APjAAAUI47febuuJtPZ24hMv8UlF5/zeaMWDi0sUpPMw/CSdwiwWCLbr
 VxExBh9mrCVJxyY2BhqnWiE=
X-Google-Smtp-Source: APXvYqwSbgP7CVSsJKguPWXzctIkaWdwFBC78hDo373R593Z6gMUb5X/2W2rNjBNT5TngsGpKp19yA==
X-Received: by 2002:a0c:8b5b:: with SMTP id d27mr5989394qvc.29.1572046180069; 
 Fri, 25 Oct 2019 16:29:40 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id o13sm3096434qto.96.2019.10.25.16.29.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 16:29:39 -0700 (PDT)
Date: Fri, 25 Oct 2019 20:29:35 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH] staging: gasket: Fix lines ending with a '('
Message-ID: <20191025232935.GA813@cristiane-Inspiron-5420>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix lines ending with a '('. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/gasket/gasket_ioctl.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index d1b3e9a..e3047d3 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -54,9 +54,9 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 	ibuf.size = gasket_page_table_num_entries(
 		gasket_dev->page_table[ibuf.page_table_index]);
 
-	trace_gasket_ioctl_page_table_data(
-		ibuf.page_table_index, ibuf.size, ibuf.host_address,
-		ibuf.device_address);
+	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
+					   ibuf.host_address,
+					   ibuf.device_address);
 
 	if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
 		return -EFAULT;
@@ -101,9 +101,9 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
 	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
 		return -EFAULT;
 
-	trace_gasket_ioctl_page_table_data(
-		ibuf.page_table_index, ibuf.size, ibuf.host_address,
-		ibuf.device_address);
+	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
+					   ibuf.host_address,
+					   ibuf.device_address);
 
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
