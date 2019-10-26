Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD26E5F2A
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 21:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63EA187552;
	Sat, 26 Oct 2019 19:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ht4nfsEYs9kG; Sat, 26 Oct 2019 19:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97ACB8754B;
	Sat, 26 Oct 2019 19:11:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 852061BF2B4
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 19:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 811348526D
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 19:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BZENVZAXCxl7 for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 19:11:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E3D8E85188
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 19:11:07 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id e66so4866039qkf.13
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 12:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=4M2PPQu81RMk5nsX69ndHO0vXv7tXeNQzA+s8i3K/j0=;
 b=nxctGgrJoLNSbguV4WSIiZryHyyuV9e4Lvv6AkOUd+N/OEu6UteDzWWerdaNpG79vL
 jue5VXecsZTJHH3IrZBtMl34GEiwssY7I4lQxe2lnVY0A5a1GRtNi3SAms8iftHZxHzH
 /F817JeWeytYvt1RJgQYbjpGtbZbn8knYH1fBO9ckc1K0wqK83vrEZWq8QMoplEvf4ti
 n9yRs9zNiwzm3sxnV6dJ5HNKLmNvcwkQO9hvO/sLGlHIRh6UBYRW95a7tcUksgotx1Ah
 yK+IEPKFLdC+lH9Xlf/xODpQgN/XB0VC9dLqjZWvBtneTaj8VCHBoNOjlGL6WFPKJ6tE
 pQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=4M2PPQu81RMk5nsX69ndHO0vXv7tXeNQzA+s8i3K/j0=;
 b=XRhxMwVFYyy8o0WbI9xJVCEVikvnMk/bKC+nFZYVAUdKTOPEdQEsn15VXehg/JfHt6
 5xTuVme59aJ5gyklAHbDDZpLW0rB0MHS/392hokyejR3ov8b0+lQMDK/lUiM7rJhbfgE
 q53eAk6szFo8hEnPta58M3Mcdht4fZbewMeP0B3I5onzKuphzx0RsKIRxWXdRVKQSQJS
 sfryou3WOiv4WeyUDA05v7QomMXx/AeHTRLJbQF5KXN/yQhwQJWJn5Ojy8dpgu6jjeaO
 5Bfa2ECFMDIhr7rZPW4z37z3J3dY6MDJtGpBWr5vtYlxlq5OGOFrFlBt4ffvpyKTGzO3
 fArg==
X-Gm-Message-State: APjAAAXU5NwILvwEr3vtfhJa/++y2TM0X6+E5BQepTwwaLWbBjp/Lnmw
 kYbV+hdVIcsWoJ952jqfv54=
X-Google-Smtp-Source: APXvYqzztmrBOC+SvoFFpb07U6iUNiAvUqvzeOLnRHzRvsJE/COvSKELq3ZUZ2EIJ8V7Rs+4/NO+Sg==
X-Received: by 2002:a37:9c44:: with SMTP id f65mr8995731qke.33.1572117066929; 
 Sat, 26 Oct 2019 12:11:06 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id i5sm3004932qtb.94.2019.10.26.12.11.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 26 Oct 2019 12:11:06 -0700 (PDT)
Date: Sat, 26 Oct 2019 16:11:01 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: gasket: Fix lines ending with a '('
Message-ID: <20191026191101.GA8973@cristiane-Inspiron-5420>
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
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix lines ending with a '('. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
Changes since v2:
 - Join the two similar patches staging: gasket: Fix lines ending with a
   '('.

Changes since v1:
 - Arranging conflict between author name and signed-off-by.
---
 drivers/staging/gasket/gasket_ioctl.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index 240f9bb..e3047d3 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -34,8 +34,8 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
 
 	trace_gasket_ioctl_eventfd_data(die.interrupt, die.event_fd);
 
-	return gasket_interrupt_set_eventfd(
-		gasket_dev->interrupt_data, die.interrupt, die.event_fd);
+	return gasket_interrupt_set_eventfd(gasket_dev->interrupt_data,
+					    die.interrupt, die.event_fd);
 }
 
 /* Read the size of the page table. */
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
