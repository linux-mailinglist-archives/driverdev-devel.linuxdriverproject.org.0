Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4E44037DF
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Sep 2021 12:31:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7ACD360727;
	Wed,  8 Sep 2021 10:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W1XcpZLJMtvx; Wed,  8 Sep 2021 10:31:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE9A0606E7;
	Wed,  8 Sep 2021 10:31:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3658C1BF2AF
 for <devel@linuxdriverproject.org>; Wed,  8 Sep 2021 10:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25556606E7
 for <devel@linuxdriverproject.org>; Wed,  8 Sep 2021 10:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqPedFiTCY4t for <devel@linuxdriverproject.org>;
 Wed,  8 Sep 2021 10:31:35 +0000 (UTC)
X-Greylist: delayed 04:39:35 by SQLgrey-1.8.0
Received: from host.silk-roadfundmanager.biz (unknown
 [IPv6:2a01:7c8:aacb:112:5054:ff:fe34:9a66])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48D8F60643
 for <devel@driverdev.osuosl.org>; Wed,  8 Sep 2021 10:31:35 +0000 (UTC)
Received: from silk-roadfundmanager.biz
 (ec2-3-18-113-233.us-east-2.compute.amazonaws.com [3.18.113.233])
 by host.silk-roadfundmanager.biz (Postfix) with ESMTPA id 606E85CE7E4C
 for <devel@driverdev.osuosl.org>; Wed,  8 Sep 2021 04:50:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.silk-roadfundmanager.biz 606E85CE7E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silk-roadfundmanager.biz; s=default; t=1631076633;
 bh=mzbcCFcnzVQk60QJNQ1wwciJWLZVdvODbgEaxYkR1nc=;
 h=Reply-To:From:To:Subject:Date:From;
 b=HU4YOjvCryswl9EswhEH/f02/mFh5/qNM2VBnOqsnxhNeTX9h3f3K2U5RM6v+qG/I
 KkWFCbaRGRsWm1wdsXqu8ApVvzcrx0xsDo817lLBldyAWPCsw0bRCVvRolaVdfpsSg
 5yjLeNv6tOAQFcVQYm9gw0BTt6in5gZ8cABa+vM8=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.silk-roadfundmanager.biz 606E85CE7E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silk-roadfundmanager.biz; s=default; t=1631076633;
 bh=mzbcCFcnzVQk60QJNQ1wwciJWLZVdvODbgEaxYkR1nc=;
 h=Reply-To:From:To:Subject:Date:From;
 b=HU4YOjvCryswl9EswhEH/f02/mFh5/qNM2VBnOqsnxhNeTX9h3f3K2U5RM6v+qG/I
 KkWFCbaRGRsWm1wdsXqu8ApVvzcrx0xsDo817lLBldyAWPCsw0bRCVvRolaVdfpsSg
 5yjLeNv6tOAQFcVQYm9gw0BTt6in5gZ8cABa+vM8=
From: Craig Johnston <dcjohnston010@silk-roadfundmanager.biz>
To: devel@driverdev.osuosl.org
Subject: Projects
Date: 08 Sep 2021 04:50:32 +0000
Message-ID: <20210908045032.F63FA32B42CF7D67@silk-roadfundmanager.biz>
Mime-Version: 1.0
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
Reply-To: dcjohnston010@silkroadfundsmanager.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello there,

I have tried to send you this email before but I am not sure if 
it went through. I hope this message finds you in good spirits 
especially during this challenging time of coronavirus pandemic. 
I hope you and your family are well and keeping safe. Anyway, I 
am Craig Johnston, a broker working with Silkroad Fund Managers. 
I am contacting you because one of my high profile clients is 
interested in investing abroad and has asked me to look for 
individuals and companies with interesting business ideas and 
companies that he can invest in. He wants to expand his portfolio 
and has an interest in investing a very substantial amount 
abroad. I got your email contact through an online business 
directory and I thought I'd contact you to see if you are 
interested in this opportunity. Do you or your company have new 
or existing projects that requires funding?

Please indicate your interest by replying back to this email. 
Once I get your response, I will give you more details and we can 
plan a strategy that will be beneficial to all parties.

Best Regards,
D C Johnston
Silkroad Fund Managers
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
