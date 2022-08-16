Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F2F595898
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Aug 2022 12:38:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E26D4408A3;
	Tue, 16 Aug 2022 10:38:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E26D4408A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lb2MG6lPd0aJ; Tue, 16 Aug 2022 10:38:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BA684089C;
	Tue, 16 Aug 2022 10:38:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BA684089C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D0D271BF215
 for <devel@linuxdriverproject.org>; Tue, 16 Aug 2022 10:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC97860ECD
 for <devel@linuxdriverproject.org>; Tue, 16 Aug 2022 10:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC97860ECD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hhRbnUoG90Sc for <devel@linuxdriverproject.org>;
 Tue, 16 Aug 2022 10:38:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3122607CA
Received: from hosted-4-client-dedicated-live-server3.emailverify77.com
 (hosted-4-client-dedicated-live-server3.emailverify77.com [103.129.47.113])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3122607CA
 for <devel@driverdev.osuosl.org>; Tue, 16 Aug 2022 10:38:50 +0000 (UTC)
From: "FABRICE"<projectfunding044@gmail.com>
Subject: We Fund Your Project
Date: Tue, 16 Aug 2022 03:38:46 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20220816103851.AC97860ECD@smtp3.osuosl.org>
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1659505744.emailverify77; d=gmail.com; 
 b=fQtaqa6kPYMu8Uk3+UI2i55WnA4NJr5Ic+6ypBD1p0/scS4TyD2T/6l4hBgk1BWoOVHwDuDh1h/a
 Z8IhSa7YhfEEvYI7hD7aG2FyAEdNvvgqwJB8NmGtTHQLFnRxAl6uReVTVPT1BZD1Wq9Ya/Y1LPbV
 AY6bQVU8RBetDFMHG9k=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1659505744.emailverify77; d=gmail.com; 
 h=Reply-To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=projectfunding044@gmail.com; 
 bh=QYAaKGUc9Cc7lgyR1ay76z1GKd4=;
 b=ObwjMwj+BWN18Ub9NkR3dZRTqxbvqkM2eA1o+pBKbMuuKY+Y47J1sixth/Kaqu4vHNOOchugipE0
 +pFq1f8pXUpSKeNSTfL5nVOauLhgtRPFPyFGYo2YRwQrVYjDKnfcgto41AOJ6BwODZSn3SwvEgu2
 lAp7v6sgWD99kQtVmT4=
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
