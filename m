Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785C147F602
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Dec 2021 10:29:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38D9240921;
	Sun, 26 Dec 2021 09:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-h082FrkVH3; Sun, 26 Dec 2021 09:29:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AC314064B;
	Sun, 26 Dec 2021 09:29:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4EB631BF5E6
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 Dec 2021 09:29:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3DADC81CE9
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 Dec 2021 09:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=jllresort.com;
 domainkeys=pass (2048-bit key) header.from=ele.mon@jllresort.com
 header.d=jllresort.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d22MjtlHAxmR
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 Dec 2021 09:29:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from slot0.jllresort.com (slot0.jllresort.com [62.197.136.5])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 92A2881C56
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 26 Dec 2021 09:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=jllresort.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ele.mon@jllresort.com; bh=CgE27fatGbywwyvVuPWIi8mRZiY=;
 b=IRig4lXrgimQtl831SuPh1dl88m0d3DC6QehpZ9Ohw2hokxwS9xUnrQbzZC+5DnLHGhT2FdZiMZw
 72or234+xEgJy3uM6XqnA3G58hMwInhMFDng4GRLqV3LTa+aP+eXm3Q4edshxCYpgiKjUDOQ89CP
 EuK8jgUcOCm8x7JwZlONiiho4PN5yVXl+tuEl4EwDi7FFHj8YafRs76hKhPqSoL4EwImDihsXIrR
 wxvm4xsZb+HtE7aIlGhys8xRcdZ/xmmZQO2Fr5F6SXZ5aVNe48KuvEfS+KfjYDiC5tbyYC2Ya+xO
 Lc1ogGwgk88/PoQQ1ngXDJAWuLKGSJ2GLPkjuA==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=jllresort.com;
 b=DXszuNis+BLXy9QVDYbWEUpcaNF6y4KJmbQoAPYleuIxrav3tGXRiQmgDg2IRZ8xm5v5iLhhBKPU
 dPxALvHqgWFH9JzEMExMlW3TUah5QKZtt9X19YLhbMlhIZGsjD2WyuBLhEwc7nhNyNP/sgeVVT9b
 xyNebKRzmh7+F/mVwro6NR1+MCzADt27SIRkHGMxubbdvGbg3jv5Pgb8BV9I1GTjdtpZB5tRhXA+
 rtdkOysVzqv7X730mCsAJfvhUgjtFGuzTx9EF47maJUnK0548gYN24aFRcq4dCu8r3Z6OiaFYD79
 3mLOvV64BT6a85RLOySsuybL8pph1wt7BeLkQg==;
From: ele.mon@jllresort.com
To: driverdev-devel@linuxdriverproject.org
Subject: Happy Weekend:
Date: 26 Dec 2021 10:29:29 +0100
Message-ID: <20211226102855.40094DE6B5385C20@jllresort.com>
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
Reply-To: mustafa.ayvaz@ayvazburosu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings to you driverdev-devel,

I was wondering if you got my previous email? I have been trying 
to reach you by email driverdev-devel@linuxdriverproject.org, 
kindly get back to me swiftly, it is very important and urgent.

Thanks
Mustafa Ayvaz
Email: mustafa.ayvaz@ayvazburosu.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
