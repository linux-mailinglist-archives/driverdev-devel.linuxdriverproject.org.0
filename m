Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F38611DB1
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Oct 2022 00:48:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77E754071B;
	Fri, 28 Oct 2022 22:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77E754071B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V779qoVGkIRk; Fri, 28 Oct 2022 22:48:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E782E401F5;
	Fri, 28 Oct 2022 22:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E782E401F5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 492E41BF228;
 Fri, 28 Oct 2022 22:48:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1DD0E8175E;
 Fri, 28 Oct 2022 22:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DD0E8175E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9AaXDdYTEE_i; Fri, 28 Oct 2022 22:48:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E7CC81757
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from nulau.edu.ua (mx.nulau.edu.ua [77.244.44.1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E7CC81757;
 Fri, 28 Oct 2022 22:48:48 +0000 (UTC)
Received: from [102.165.195.228] (port=36103 helo=MACBOOKPROF612.localdomain)
 by nulau.edu.ua with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.84_2) (envelope-from <aglaw@nulau.edu.ua>)
 id 1ooY9Q-0007aL-Ow; Sat, 29 Oct 2022 01:48:36 +0300
MIME-Version: 1.0
Content-Description: Mail message body
To: Recipients <aglaw@nulau.edu.ua>
From: aglaw@nulau.edu.ua
Date: Sat, 29 Oct 2022 00:48:18 +0200
X-Antivirus: AVG (VPS 221028-6, 10/28/2022), Outbound message
X-Antivirus-Status: Clean
X-SA-Exim-Connect-IP: 102.165.195.228
X-SA-Exim-Mail-From: aglaw@nulau.edu.ua
Subject: GOOD NEWS!!!!
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on nulau.edu.ua)
Message-Id: <20221028224849.1DD0E8175E@smtp1.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=nulau.edu.ua; s=dkim; 
 h=Subject:Reply-To:Date:From:To:Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type;
 bh=d/ZeFGtanYGIrEH1RJufNPFXXn9v1D8ANHbSvs56WQM=; 
 b=ggqCEE1WfuQ6uvvVcPBM/VotKRYlMi495CY0eXOvtn6laDOTSTRcbj/Y4LCOZggC5+/p1EgskXtWSCXlbZ0eOuLlsp6BPjmnJgpmbRcMk+q4cSJGS2fRsVxGrU+driCyqQCRKGi8KESS00GjJ2aodEUf2ZNvB2sL7WnrogRpreA=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=nulau.edu.ua header.i=@nulau.edu.ua
 header.a=rsa-sha256 header.s=dkim header.b=ggqCEE1W
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
