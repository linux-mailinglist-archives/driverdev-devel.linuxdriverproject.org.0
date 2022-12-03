Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A226414FE
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Dec 2022 09:40:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58E4481EF7;
	Sat,  3 Dec 2022 08:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58E4481EF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RF-Af0CvG2Li; Sat,  3 Dec 2022 08:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B137981EF4;
	Sat,  3 Dec 2022 08:40:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B137981EF4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55D101BF3FC
 for <devel@linuxdriverproject.org>; Sat,  3 Dec 2022 08:40:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C41781EF7
 for <devel@linuxdriverproject.org>; Sat,  3 Dec 2022 08:40:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C41781EF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h5yJv83Q2-lL for <devel@linuxdriverproject.org>;
 Sat,  3 Dec 2022 08:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B3F881EF4
Received: from hosted-4-client-dedicated-live-server3.livegpstrack.com
 (hosted-4-client-dedicated-live-server3.livegpstrack.com [103.102.239.61])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B3F881EF4
 for <devel@linuxdriverproject.org>; Sat,  3 Dec 2022 08:40:00 +0000 (UTC)
From: =?ISO-8859-1?B?UGFibG8gQ1RH?=<salesctg@cartrackgps.net>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?R1BTIHRyYWNraW5nIGJ1c2luZXNzIGZvciBkZXZlbA==?=
Date: 03 Dec 2022 05:40:06 -0300
Message-ID: <20221203054006.6ABE5A1F2D3BC156@cartrackgps.net>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1665719670.livegpstrack; d=cartrackgps.net; 
 b=o2BkMnJEAoNID34DKqcYEwYZgBBytXKrO4QzgnjEEfgY1XVxUJBq+cX7pTrKz6ldY8BaboOsaS4Q
 SptWLNDqI64wOw5vx9VgGF2ZjftwkTyRrX2jxOkwoOLFSAxFvmkFfgXAhxAjhTNrs1ti0W0XPrAL
 QVcZp7TsJE5KDwUorNw=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1665719670.livegpstrack; d=cartrackgps.net; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=salesctg@cartrackgps.net; 
 bh=S6dFhaTsznNnKN2CWcDMCws6+ic=;
 b=ChYbj/fOG1srjfp/mgZqEopY1HniBnN4Y4fpOzyymf5exHKiFvgmCrjXRDh6Ie0r6C3nPdSFXz4X
 TkPflZgRYiXkCHSf/lMwYyY5y64gN+Y54L3e72axWtjQZYmNgD+OuiNox+J/JMdx+PsaZbznLQFl
 JJUVr/YXaXHppfj1Zb4=
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
ID: 215102

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
