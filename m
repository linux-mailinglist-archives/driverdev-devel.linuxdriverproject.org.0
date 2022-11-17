Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D17862D4F2
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Nov 2022 09:25:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1790C4187A;
	Thu, 17 Nov 2022 08:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1790C4187A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfwYeLY7BROg; Thu, 17 Nov 2022 08:25:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BC464188C;
	Thu, 17 Nov 2022 08:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BC464188C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C41AC1BF3A6
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 08:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC48740135
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 08:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC48740135
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oXcGC57FA9MB for <devel@linuxdriverproject.org>;
 Thu, 17 Nov 2022 08:25:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80BA5400B8
Received: from hosted-4-client-dedicated-live-server3.livegpstrack.com
 (hosted-4-client-dedicated-live-server3.livegpstrack.com [103.102.239.61])
 by smtp2.osuosl.org (Postfix) with ESMTP id 80BA5400B8
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 08:25:26 +0000 (UTC)
From: =?ISO-8859-1?B?UGFibG8gQ1RH?=<salesctg@cartrackgps.net>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?R1BTIHRyYWNraW5nIGJ1c2luZXNzIGZvciBkZXZlbA==?=
Date: 17 Nov 2022 05:25:44 -0300
Message-ID: <20221117052544.50BD1F46D119CA1F@cartrackgps.net>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1665719670.livegpstrack; d=cartrackgps.net; 
 b=VLNLFkPngzNl2230qxQmd+KFB/0q/lZ8uZbKRe3OUGG6iQQnWKwbL9vSiebqEL1C3J4CsPq38v/w
 Eww2zaB5sziMdTX6CnRBVF6CSqQWz+CQHfoQYNnBdjfq4K4GcyCwg5HjNK4ibtio1vpvSy2NWAW9
 nFm6y70hH6uLHHehWFw=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1665719670.livegpstrack; d=cartrackgps.net; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=salesctg@cartrackgps.net; 
 bh=cmebjwSr8vj93Yb1gdr5yu6dH8o=;
 b=CsCdzy2+2PH2gZDAx7T943MarEH5Q3L1negZOuMfskuLawYCT2NF7qWVptmQhUACa6oYNT7H1ij3
 ejH/mzjBknzGtICmSa+4jBSmIoOu//Eavz8mnRODRs2z2nIzXDDUFerpruYu+N2Rp6hmiMWVAoZj
 r3KiTjiuH8GcTSExQ8Q=
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
Reply-To: =?ISO-8859-1?B?UGFibG8gQ1RH?= <salesctg@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello devel,

My name is Pablo from Car Track GPS and we're looking for distributors for our tracking products.
We design innovative software and hardware location technologies.

Our innovative web based software allows owners to track fleets in realtime by iOS or Android Apps.
If a vehicle is stolen you can stop the engine and recover it.

With our Professional Kit you can start your own tracking business or just resell the software and hardware.

Our products are ideal for fleet tracking and recovery of stolen vehicles. Insurance companies, trucking companies and car dealers have been our clients for over 20 years.
This could be a good choice If you want to start a new business or diversify your investment.

The business consists in offering location services to end customers through a web site.
This is accomplished through a Web platform that we provide as a turnkey server installed at your end.

This service will allow customers to track their fleets from any web browser - even from Tablets and Smartphones - with a username and password.
We have Professional Kits available which include full Software licenses, so once you get the KIT and start testing you will not need to invest again in the Software or have to pay any monthly fee.

If you're interested I can send you the proposal for your consideration.

Best regards,
Pablo Zacheo
CEO Car Track GPS
Miami: +1 786 352 8766
Car Track GPS in Google for our official .com website

We have clients in over 100 countries and 20 years of experience in GPS tracking systems.
ID: 114542

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
