Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61580589D4E
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Aug 2022 16:15:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0D3940BC8;
	Thu,  4 Aug 2022 14:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0D3940BC8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7u72eZ4Gjnm1; Thu,  4 Aug 2022 14:15:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6FD11404D8;
	Thu,  4 Aug 2022 14:15:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FD11404D8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 236301C1148;
 Thu,  4 Aug 2022 14:15:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F301381400;
 Thu,  4 Aug 2022 14:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F301381400
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k2JhtBO1LzPS; Thu,  4 Aug 2022 14:15:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6012481466
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from jamilortiz.ml (unknown [137.184.121.83])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6012481466;
 Thu,  4 Aug 2022 14:14:59 +0000 (UTC)
Received: from [103.99.1.70] (helo=User)
 by jamilortiz.ml with esmtpa (Exim 4.90_1)
 (envelope-from <torrance@jamilortiz.ml>)
 id 1oJbcb-0005xB-3L; Thu, 04 Aug 2022 14:14:45 +0000
From: "Aleksandr Kovalenko"<torrance@jamilortiz.ml>
Subject: Hello friend, please reply back urgent..
Date: Thu, 4 Aug 2022 07:14:47 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <E1oJbcb-0005xB-3L@jamilortiz.ml>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=jamilortiz.ml; s=mail; h=Message-Id:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Subject:From:Reply-To:Sender:To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=At+xolHRQ5SF9l2pwatDJXCgHIe/dENfSyqC5QOsAdo=; b=IdeeWQhRQz48uT+uxA5BwBEHs9
 vcyjHM0eEaum/xPeA/9SbOPEe8Rwn7BuiW/ss3WbOxefw4uGyWpjZRFAN55NCfGHeUlGZlwzB5Dqv
 xnYI2Uifqwxj8aAHSR2q+mdZ8p1fs5mlM544dkmpID1ccitWRU4ySIjmkKGNtnD7AJNg=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=jamilortiz.ml header.i=@jamilortiz.ml
 header.a=rsa-sha256 header.s=mail header.b=IdeeWQhR
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
Reply-To: alekskovnko@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

How are you today? I Hope you are staying safe,

I am  Mr Aleksandr Kovalenko from Ukraine, Army General in the battle war commanding, I have something very important business to share with you which will benefit both of us soon.

I will give you full details when I receive your interested email.

Best Regard,
Mr Aleksandr Kovalenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
