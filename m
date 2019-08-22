Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFD09A25F
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 23:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D1FC87A84;
	Thu, 22 Aug 2019 21:51:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rHaxAqPZvk+i; Thu, 22 Aug 2019 21:51:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21184879FD;
	Thu, 22 Aug 2019 21:51:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9A481BF2FC
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 21:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A5E5121548
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 21:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34NkfjgSutNp for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 21:51:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com
 [136.143.188.55])
 by silver.osuosl.org (Postfix) with ESMTPS id 3357120490
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 21:51:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566510710; cv=none; d=zoho.com; s=zohoarc; 
 b=cVvUnUL/VUZ3ifb9bAfRNJY3G25ubewKIpYvYweJgHB0GaySsrNvclkVuCta/zigboN0nyV9sXbHtMJhSTaq1+6AW+iBswx9GbqGIONOKplh37A4TRCwl83jVqde9RJTPz0UwTGBQqq7XcZwmJiKcQi/ni8RetgazC+Lus7nhak=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566510710;
 h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
 bh=yWrhSRyreW7n7a0PeSbqcm2L6+zUP4cjIF1tgdzkYmg=; 
 b=cwATHo8dOkl2u3ehUvo2nNeMEDVj1mw94qrrbnJDtif1MohFxHRAM/O6lUnxInvtv3Gk9XLVJDMHROCki4m+OuwK3q9KBmvpd8sEpqeOCIwFXyWabdHEYlqHIL8oDTaieRMlI5UMkQrlFk+5ykpYHeySKnLN75/Vhuh2AMknmJc=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566510710; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
 l=689; bh=yWrhSRyreW7n7a0PeSbqcm2L6+zUP4cjIF1tgdzkYmg=;
 b=JfQdkI9hvsLWGllbrKePXF4Qb6l2kfXqvMbCdLd5qU+fVjeOKcb1zk0KycMe+Wev
 L0hSm8azE4m59gCFdPuoaF2Y/41OEEzCJUQRH434bRA3DNYd9oUoQsv0U0BT5/rfT1l
 IZ/uOowPiO34L/JdsdeqOIHjQGSk8bfYL5ZhQIHg=
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2]) by
 mx.zohomail.com with SMTPS id 1566510708306467.1802634418026;
 Thu, 22 Aug 2019 14:51:48 -0700 (PDT)
Date: Thu, 22 Aug 2019 14:51:46 -0700
From: stephen@brennan.io
To: devel@driverdev.osuosl.org
Subject: rtl8192u - meaning of TO_DO_LIST?
Message-ID: <20190822215146.GA4240@pride>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-ZohoMailClient: External
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
Cc: Andrea Merello <andrea.merello@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

Similar to Colin's question yesterday about the rtl8192u driver, is
anybody familiar with the TO_DO_LIST define? As I looked through
checkpatch warnings I saw a particular concerning pattern in
drivers/staging/rtl8192u/r8192U.h:2183:

#ifdef TO_DO_LIST
	if (Adapter->bInHctTest)
		/* long statement here */
	else
#endif
	/* unindented statement here */

It seems this code would break if TO_DO_LIST were defined, and I verified
that it is the case. I can't find any comment or documentation about what
the goal of this "to do" item is.

Does anybody know what this is there for? If not, does it make sense to
just go ahead and remove the code there?

Stephen

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
