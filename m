Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE6181F998
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Dec 2023 16:22:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF0B240522;
	Thu, 28 Dec 2023 15:22:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF0B240522
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZWYmzvpWNyti; Thu, 28 Dec 2023 15:22:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80B3E41A50;
	Thu, 28 Dec 2023 15:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80B3E41A50
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B79EB1BF45A
 for <devel@linuxdriverproject.org>; Thu, 28 Dec 2023 15:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D8B161187
 for <devel@linuxdriverproject.org>; Thu, 28 Dec 2023 15:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D8B161187
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VVNONYuJOuBL for <devel@linuxdriverproject.org>;
 Thu, 28 Dec 2023 15:22:38 +0000 (UTC)
X-Greylist: delayed 305 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 28 Dec 2023 15:22:38 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36FBD61184
Received: from hosted-4-client-dedicated-live-server2.livegpstrack.com
 (hosted-4-client-dedicated-live-server2.livegpstrack.com [103.102.239.60])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36FBD61184
 for <devel@linuxdriverproject.org>; Thu, 28 Dec 2023 15:22:38 +0000 (UTC)
From: =?ISO-8859-1?B?TGl2ZXJ0eSBGdW5kcw==?=<noreply@livegpstrack.com>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?TkFTREFRIHRyYWRpbmcgZm9yIGRldmVs?=
Date: 28 Dec 2023 12:18:15 -0300
Message-ID: <20231228121814.FDA24C17B07B7DE6@livegpstrack.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 b=pHC729sk17NG3gngiPkTkI0kRzC59VjrZmBTZ01QDBf8Ii6ggzZHhmKfAWsk5ZoT/NubDPYSO/8C
 rkUKZudZIX8QWFhsXMQ/dhsEcJHaSM03yMB3sA22vzU7ARB88800V0CTQh9Aqzywd1ZU6fiju9EV
 1UrnVC706fW+qMoZODM=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1665719670.livegpstrack; d=livegpstrack.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=noreply@livegpstrack.com; 
 bh=6aOYPNAUKPXWKPaVYUP5U+SJbv8=;
 b=PNSHVYDFmNoQC4o668U0QYuqBpuKUcSXDE9M98iZesBAroO88GQLofufGtOHSUIOT3tvYaaRb6dT
 6fSHHjyXIaZUDEITIGSFe8Lfjs/4PZ4xlEtLS+bLJAzUTSkIJWEJtyjBqlxudUlhXRsQqm/bGMCi
 FFBQsun/Jzb+gP/ygro=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=livegpstrack.com
 header.i=noreply@livegpstrack.com header.a=rsa-sha1
 header.s=1665719670.livegpstrack header.b=PNSHVYDF
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
Reply-To: =?ISO-8859-1?B?TGl2ZXJ0eSBGdW5kcw==?= <salesgps@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello devel,

My name is Pablo Zacheo from Liverty Funds, Introducing Broker with Axi Trader UK.

We have a new AI trading software for the stock market (NASDAQ). It's based on Metatrader 4.
The idea to achieve financial freedom is possible with low initial investment and reasonable risk.

The software design has taken into account thousands of trades, it's very hard to do this by hand as it will take you thousands of hours and probably years of training and courses.

With our automated trading approach with you can expect a 100% return per month with a maximum of 20% losses. In our testing we obtained 300.000 dollars from an initial capital of USD 5000 in 10 months, reinvesting all the profits.

Your funds are secured by your broker. We've selected Axi as our trading partner but you're free to work with any MT4 broker.
Trading is now more profitable than ever. Our system makes money also in bear markets.

Our managed fund will be closed after reaching USD 50.000 so there is room for very few people at a time.
If you would like to join our managed fund do let us know.

Best regards,
Pablo Zacheo
Liverty Funds
+598 99262491

With over 13 years of experience of trading and coding.
An independent review can be found at Investoo.com
ID: 871076

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
