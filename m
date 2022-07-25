Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A9557F7C0
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Jul 2022 02:10:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CBF7611EF;
	Mon, 25 Jul 2022 00:10:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CBF7611EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WoS8awqMX4Qx; Mon, 25 Jul 2022 00:10:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D326F60DFC;
	Mon, 25 Jul 2022 00:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D326F60DFC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1EA2A1BF96B
 for <devel@linuxdriverproject.org>; Mon, 25 Jul 2022 00:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA13A611E4
 for <devel@linuxdriverproject.org>; Mon, 25 Jul 2022 00:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA13A611E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hp3jWD9uqJuh for <devel@linuxdriverproject.org>;
 Mon, 25 Jul 2022 00:10:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FBD460DFC
Received: from hosted-4-client-dedicated-live-server.emailverify77.com
 (hosted-4-client-dedicated-live-server.emailverify77.com [103.129.47.111])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FBD460DFC
 for <devel@driverdev.osuosl.org>; Mon, 25 Jul 2022 00:10:26 +0000 (UTC)
From: "FABRICE"<projectfunding044@gmail.com>
Subject: We Fund Your Project
Date: Sun, 24 Jul 2022 17:10:13 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20220725001027.EA13A611E4@smtp3.osuosl.org>
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1658477083.emailverify77; d=gmail.com; 
 b=cCawEWhVt50ntJ+gBNOc+8S8NS97gVr2vDoTH11vM40avBFjlJvVssUoQwFTV85KSi1UmvJwNRye
 +hNyXOntCmARjfLMZ5K0BlnilkCmS8YZtIhH/ZA/ASYByaWWZrq024ccQ63gQzJLEZ0piDdyDpQf
 4ERR8GRgKp6kBaMC824=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1658477083.emailverify77; d=gmail.com; 
 h=Reply-To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=projectfunding044@gmail.com; 
 bh=QYAaKGUc9Cc7lgyR1ay76z1GKd4=;
 b=WFYcnHAUxP8uviD8HitlITkSIRhOYorPx1CS3/q2hDiZgxJTHv9qjYX3PRg+n+CdtdCDGWNU0mQE
 RLicYDba2Q53YFJ5+Cmli3BZGJ/epwdG76YrF3S7KU72LtvaId99WPUgAaJLuXBJ6PIBfm/32wth
 B/ASSruh4gOrQDF7KAI=
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
