Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E44F58F565
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Aug 2022 02:56:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27395403A8;
	Thu, 11 Aug 2022 00:55:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27395403A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T0_N61-nozmT; Thu, 11 Aug 2022 00:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79F3840382;
	Thu, 11 Aug 2022 00:55:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79F3840382
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A4821C1148
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Aug 2022 00:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17521403A8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Aug 2022 00:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17521403A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JK7hq-BKHDIZ
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Aug 2022 00:55:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0EFE40382
Received: from hosted-4-client-dedicated-live-server4.emailverify77.com
 (hosted-4-client-dedicated-live-server4.emailverify77.com [103.129.47.114])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0EFE40382
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Aug 2022 00:55:49 +0000 (UTC)
From: "FABRICE"<projectfunding044@gmail.com>
Subject: We Fund Your Project
Date: Wed, 10 Aug 2022 17:55:45 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20220811005551.17521403A8@smtp4.osuosl.org>
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1659505744.emailverify77; d=gmail.com; 
 b=MmY2m3i4P9hUsdNp/XEtyARrQSG0kiKL8FMfR88qF7/I4Wfr2RhKTo1er3L9GkiUQwH7fzlK+2G1
 u+CHtDKX0zXsjBWq3B3g+bv7QIqhV8JbqCMyh8uqaWzBicDdsrHr2rtdKnczQed49Pd3HIE9x0aM
 UZsOWAYxumWPvzMPazg=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1659505744.emailverify77; d=gmail.com; 
 h=Reply-To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=projectfunding044@gmail.com; 
 bh=QYAaKGUc9Cc7lgyR1ay76z1GKd4=;
 b=m7drJbV4rVF2jx8qT1qg2dbFruFexFMLLFJ7HTvci9qLQ0oYGvtOZkGrbFKvYF5yY5xo6P9mpjdF
 2/5v+dlkhgQjCGmx+Ll/HZKGDgIMnSm/xUqc1j68cHd1zcL22Ilt3xXVNiaiHC9ni8oxMnh0X+Mw
 PqIfKQJq/oWAXCaiSzA=
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
Reply-To: projectfunding044@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,
    We are offering Loan/Investment funds to Companies and Individuals with profitable projects in any area of specialization at 2% per annual for a duration of 2 to 20 years with a year interest grace period.
    Also, we pay 1% commission to Intermediaries/Consultants/Brokers who introduce project owners for finance or other opportunities. We Loan offers between USD1M to USD10B loan for business owners. Our lenders or investors are well vetted according to European Union financial institutions. Let us know if you are interested otherwise feel free to decline.
    Kindly get back to me.
    Regards,
    FOURNET
    TEL: +33 780937115
    E-Mail: projectfunding044@gmail.com


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
