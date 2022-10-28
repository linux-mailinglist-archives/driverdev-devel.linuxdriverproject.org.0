Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2223A611DB4
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Oct 2022 00:49:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7FDC81846;
	Fri, 28 Oct 2022 22:49:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7FDC81846
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a_GSkb1dxg4R; Fri, 28 Oct 2022 22:49:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CE3981842;
	Fri, 28 Oct 2022 22:49:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CE3981842
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D3621BF228
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 28 Oct 2022 22:49:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED48260760
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 28 Oct 2022 22:49:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED48260760
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x7KTaPJPdzlM
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 28 Oct 2022 22:49:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F4A260743
Received: from nulau.edu.ua (mx.nulau.edu.ua [77.244.44.1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F4A260743
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 28 Oct 2022 22:49:03 +0000 (UTC)
Received: from [102.165.195.228] (port=36353 helo=MACBOOKPROF612.localdomain)
 by nulau.edu.ua with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.84_2) (envelope-from <aglaw@nulau.edu.ua>)
 id 1ooY9Y-0007aK-87; Sat, 29 Oct 2022 01:48:42 +0300
MIME-Version: 1.0
Content-Description: Mail message body
To: Recipients <aglaw@nulau.edu.ua>
From: aglaw@nulau.edu.ua
Date: Sat, 29 Oct 2022 00:48:24 +0200
X-Antivirus: AVG (VPS 221028-6, 10/28/2022), Outbound message
X-Antivirus-Status: Clean
X-SA-Exim-Connect-IP: 102.165.195.228
X-SA-Exim-Mail-From: aglaw@nulau.edu.ua
Subject: GOOD NEWS!!!!
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on nulau.edu.ua)
Message-Id: <20221028224903.ED48260760@smtp3.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=nulau.edu.ua; s=dkim; 
 h=Subject:Reply-To:Date:From:To:Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type;
 bh=d/ZeFGtanYGIrEH1RJufNPFXXn9v1D8ANHbSvs56WQM=; 
 b=cKvzXRZasN6NJlrBZpyg9LC5LLy2wamSv86U5x3juktNrgd79UokTlOlYn0a1WdBYOs4QAJ/HAoar+wsFXN9DfwEZFu4Dm3jdg8h/G9i+6738ZXoQcV3NXo/yE4B8Mos+R0luFP4UcjRaF/PUc+/Gq3b1oc8s5XbfT8jN+GJHpk=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=nulau.edu.ua header.i=@nulau.edu.ua
 header.a=rsa-sha256 header.s=dkim header.b=cKvzXRZa
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
