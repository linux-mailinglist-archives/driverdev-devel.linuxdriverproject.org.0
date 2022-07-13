Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AABF3573DA4
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Jul 2022 22:11:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1A21613BC;
	Wed, 13 Jul 2022 20:11:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1A21613BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GtKRwfUul1ms; Wed, 13 Jul 2022 20:11:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8106960AAE;
	Wed, 13 Jul 2022 20:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8106960AAE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB1AE1BF94B
 for <devel@linuxdriverproject.org>; Wed, 13 Jul 2022 20:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8231F613BC
 for <devel@linuxdriverproject.org>; Wed, 13 Jul 2022 20:11:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8231F613BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M_f0uq8smHCz for <devel@linuxdriverproject.org>;
 Wed, 13 Jul 2022 20:11:40 +0000 (UTC)
X-Greylist: delayed 00:08:52 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A437960AAE
Received: from mailhosting.precisioncluster.com
 (mailhosting.precisioncluster.com [122.183.251.102])
 by smtp3.osuosl.org (Postfix) with ESMTP id A437960AAE
 for <devel@driverdev.osuosl.org>; Wed, 13 Jul 2022 20:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mailhosting.precisioncluster.com (Postfix) with ESMTP id ACF51C0480
 for <devel@driverdev.osuosl.org>; Thu, 14 Jul 2022 01:32:45 +0530 (IST)
X-Virus-Scanned: amavisd-new at mailhosting.precision.com
Received: from mailhosting.precisioncluster.com ([127.0.0.1])
 by localhost (mailhosting.precision.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mlBpHsvj+VKM for <devel@driverdev.osuosl.org>;
 Thu, 14 Jul 2022 01:32:45 +0530 (IST)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
X-Original-Helo: [185.178.195.132] (iRedMail: http://www.iredmail.org/)
Received: from [185.178.195.132] (unknown [185.178.195.132])
 by mailhosting.precisioncluster.com (Postfix) with ESMTPS id 1CC7FC0572;
 Thu, 14 Jul 2022 01:32:37 +0530 (IST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re: My greetings  
To: Recipients <thilaga.s@jeyyamfoods.in>
From: "Mrs Julia Iris" <thilaga.s@jeyyamfoods.in>
Date: Wed, 13 Jul 2022 22:02:29 +0200
Message-Id: <20220713200245.ACF51C0480@mailhosting.precisioncluster.com>
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
Reply-To: juliairis@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Re: My greetings

I am Mrs Julia Iris a retired Economic Operator hospitalized for health reasons. I suffer from heart disease and the results of some of my medical tests showed that my days on earth are numbered, while I have in my Bank a sum of money of Three million four hundred and twenty-five thousand. Euros.

Unfortunately, I have no family or children who will be able to benefit from this money. I was advised by the Catholic bishop and my spiritual guide to inherit it from a person whom I must choose at random, who can put these funds to good use. Reason why I am contacting you today by email given that I am under hospitalization in order to live the rest of my life. You are therefore the beneficiary of 3,425,000 EURO. I offer it to you from the bottom of my heart, I just ask for prayers in return so that my soul may rest in peace on the last day.

Please write to me by Email: juliairiss@gmx.net
May the Lord God creator of heaven and earth hear your prayers,
Amen !!!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
