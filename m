Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D7E37073C
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 May 2021 14:44:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1483402F4;
	Sat,  1 May 2021 12:44:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id edzkR8NA5Rh0; Sat,  1 May 2021 12:44:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F27D5402DA;
	Sat,  1 May 2021 12:44:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC9ED1BF2B8
 for <devel@linuxdriverproject.org>; Sat,  1 May 2021 12:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8D864029E
 for <devel@linuxdriverproject.org>; Sat,  1 May 2021 12:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QiXbf9tWKvAa for <devel@linuxdriverproject.org>;
 Sat,  1 May 2021 12:43:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from host.sesurercures.online (sesurercures.online [62.173.138.37])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7DD64028C
 for <devel@driverdev.osuosl.org>; Sat,  1 May 2021 12:43:56 +0000 (UTC)
Received: from sesurercures.online
 (ec2-18-116-165-14.us-east-2.compute.amazonaws.com [18.116.165.14])
 by host.sesurercures.online (Postfix) with ESMTPA id E1EA511A5D68
 for <devel@driverdev.osuosl.org>; Sat,  1 May 2021 11:49:22 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.sesurercures.online E1EA511A5D68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sesurercures.online;
 s=default; t=1619858964;
 bh=qnFsBms4d2N776kWxN0JyD7wWyyDjNJ9M8FqOPjWkvU=;
 h=Reply-To:From:To:Subject:Date:From;
 b=Yt8iJa3NhgZCpZcKl19LnqGhZmVE+mR4aVGRTjS31QXMb5SOm0edrkCZnYNSR8AN9
 1kniZiD3SoFpxks48eoh7bEwS8v4sfGnxF4kOq6siL2wyNIbaiHC6BVfx/ERhzzwjP
 o6Z/u7/XI+3AJZPsT2RVXkAZQEmSJpHXicnpPsKI=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.sesurercures.online E1EA511A5D68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sesurercures.online;
 s=default; t=1619858964;
 bh=qnFsBms4d2N776kWxN0JyD7wWyyDjNJ9M8FqOPjWkvU=;
 h=Reply-To:From:To:Subject:Date:From;
 b=Yt8iJa3NhgZCpZcKl19LnqGhZmVE+mR4aVGRTjS31QXMb5SOm0edrkCZnYNSR8AN9
 1kniZiD3SoFpxks48eoh7bEwS8v4sfGnxF4kOq6siL2wyNIbaiHC6BVfx/ERhzzwjP
 o6Z/u7/XI+3AJZPsT2RVXkAZQEmSJpHXicnpPsKI=
From: Madudu <mmushokoro18@sesurercures.online>
To: devel@driverdev.osuosl.org
Subject: Get Back To Me
Date: 01 May 2021 08:49:22 +0000
Message-ID: <20210501084922.3569F1177921465E@sesurercures.online>
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
Reply-To: mmushokoro18@secsuremail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day to you. My name is Madudu Mushokoro. from Democratic 
Republic of the Congo (DRC) Africa, may you permit me to inform 
you of my desire to go into a business relationship with you 
personally or with your company, for a lucrative offshore 
investment partnership. We have available huge sum of fund made 
through Diamonds trade in my country.

I will like you to front to invest the huge fund into an offshore 
investment project that is viable and I would like you to co-
ordinate this investment project on our behalf, we are looking 
towards offshore investment due to political and economic 
instability in our region (Central Africa). The fund available 
for investment is in cash.

Your position in this arrangement will be as follows:
{1} To front and accommodate the cash into your nominated bank 
account.
{2} To travel for the process of lodging the cash into your 
nominated bank account.
{3} To decide on lucrative projects in your country for the 
investment and co-ordinate the investments project.
{4} The compensation (percentage of the fund ) for accommodating 
the fund into your account is negotiable before the remaining 
percentage is invested.

If the proposal meets your consideration and approval, you are 
hereby required to make a proper arrangement by sending me a 
letter of Acknowledgement to facilitate a successful business
relationship.

Warm Regards,

Madudu.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
