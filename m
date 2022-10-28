Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90042611B45
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Oct 2022 21:56:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF9AB817D3;
	Fri, 28 Oct 2022 19:56:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF9AB817D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IU5woII8Mmb0; Fri, 28 Oct 2022 19:56:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA789817A6;
	Fri, 28 Oct 2022 19:55:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA789817A6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD9721BF25B;
 Fri, 28 Oct 2022 19:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B69A940184;
 Fri, 28 Oct 2022 19:55:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B69A940184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LqzHQ0a3_CkR; Fri, 28 Oct 2022 19:55:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03CDE4017A
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from nulau.edu.ua (mx.nulau.edu.ua [77.244.44.1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03CDE4017A;
 Fri, 28 Oct 2022 19:55:52 +0000 (UTC)
Received: from [102.165.195.228] (port=35869 helo=MACBOOKPROF612.localdomain)
 by nulau.edu.ua with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.84_2) (envelope-from <aglaw@nulau.edu.ua>)
 id 1ooVS7-0004s5-C8; Fri, 28 Oct 2022 22:55:41 +0300
MIME-Version: 1.0
Content-Description: Mail message body
To: Recipients <aglaw@nulau.edu.ua>
From: aglaw@nulau.edu.ua
Date: Fri, 28 Oct 2022 21:55:26 +0200
X-Antivirus: AVG (VPS 221028-2, 10/28/2022), Outbound message
X-Antivirus-Status: Clean
X-SA-Exim-Connect-IP: 102.165.195.228
X-SA-Exim-Mail-From: aglaw@nulau.edu.ua
Subject: GOOD NEWS!!!!
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on nulau.edu.ua)
Message-Id: <20221028195553.B69A940184@smtp2.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=nulau.edu.ua; s=dkim; 
 h=Subject:Reply-To:Date:From:To:Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type;
 bh=7AmXdfaPuTtjfdNd7Jf5OS+2itBEqGNw19Zg5m/uDFU=; 
 b=pNxZUwASTnYyv2LAaNYBM0HNDrsUCI6OYIhO4caKZFTc4D+axGPU5AeWsWu/sVEgFN1y6o1Xsx/dMh5DlaZ8rz0WMu9MlwGPziUCcWC22cb677D4Uo+S59k+EL+90jaixoXMlJVohJtiVk2Sy6vB9Ls2tTyxlD645TsE3l/SKb0=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=nulau.edu.ua header.i=@nulau.edu.ua
 header.a=rsa-sha256 header.s=dkim header.b=pNxZUwAS
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
Reply-To: KristineWellenstein.org@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention!!!! You are hereby advised to send a confirmation email to KristineWellenstein.org@outlook.com for more details about your winning. Your email was randomly selected to receive a Charity Donation of $2,000,000 Million USD. From Kristine Wellenstein winner of $426 million, in the Million Dollars Power-Ball Jackpot Lottery,2022.




-- 
This email has been checked for viruses by AVG antivirus software.
www.avg.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
