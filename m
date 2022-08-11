Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDB758F562
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Aug 2022 02:50:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7263D40B67;
	Thu, 11 Aug 2022 00:50:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7263D40B67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 96_1B02O7Fs4; Thu, 11 Aug 2022 00:50:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F9394011F;
	Thu, 11 Aug 2022 00:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F9394011F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9DE11C1148
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 00:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A24E440C37
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 00:50:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A24E440C37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRIa5zYiiTkO for <devel@linuxdriverproject.org>;
 Thu, 11 Aug 2022 00:50:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 934364011F
Received: from hosted-4-client-dedicated-live-server4.emailverify77.com
 (hosted-4-client-dedicated-live-server4.emailverify77.com [103.129.47.114])
 by smtp2.osuosl.org (Postfix) with ESMTP id 934364011F
 for <devel@driverdev.osuosl.org>; Thu, 11 Aug 2022 00:50:10 +0000 (UTC)
From: "FABRICE"<projectfunding044@gmail.com>
Subject: We Fund Your Project
Date: Wed, 10 Aug 2022 17:50:04 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20220811005011.A24E440C37@smtp2.osuosl.org>
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1659505744.emailverify77; d=gmail.com; 
 b=H2EYnVsDrfCNVoCN90vP0NEHmY6kH/7i3PZL6e4nKbLlosDSrd1YTmknYGMR8fdYrdAXt25i18K5
 aFvGPlz5+D1Q2s7Lw5/WbMW7CSiDmWvUZA1qdkg/K4hx51lGFqGSyQGDrarbmPOCKtGPsuvsjYbu
 +/1C8z0sAdbtQl4sZv8=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1659505744.emailverify77; d=gmail.com; 
 h=Reply-To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=projectfunding044@gmail.com; 
 bh=QYAaKGUc9Cc7lgyR1ay76z1GKd4=;
 b=pINuFbf3vQxybXUK6A47JXKQbXvEiQUtGrmJLSzpnuxl1UyW2DvarJJaHUT71vW5R7xtf/S8dbon
 jXXzrtNZJcPvy1srtZaUj60jWdSTTHgoUqmEhrBl87QaadSeHTmtmQY5JammIO4nol9z1Cc2AOAD
 EWq0EfdF83WDblaH/1w=
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
