Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A082D5B25C6
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Sep 2022 20:31:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61F0041CC4;
	Thu,  8 Sep 2022 18:30:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61F0041CC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lMqT4eUsyk-T; Thu,  8 Sep 2022 18:30:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B924541CC3;
	Thu,  8 Sep 2022 18:30:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B924541CC3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C5CA31BF576
 for <devel@linuxdriverproject.org>; Thu,  8 Sep 2022 18:30:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A0886FAEA
 for <devel@linuxdriverproject.org>; Thu,  8 Sep 2022 18:30:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A0886FAEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 52cIbIlOsN6m for <devel@linuxdriverproject.org>;
 Thu,  8 Sep 2022 18:30:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 330066FAE1
Received: from hosted-4-client-dedicated-live-server.livegpstrack.com
 (hosted-4-client-dedicated-live-server.livegpstrack.com [103.102.239.59])
 by smtp3.osuosl.org (Postfix) with ESMTP id 330066FAE1
 for <devel@linuxdriverproject.org>; Thu,  8 Sep 2022 18:30:45 +0000 (UTC)
From: =?ISO-8859-1?B?VHJhY2sgR1BT?=<salesctg@cartrackgps.net>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?TG9va2luZyBmb3IgZGlzdHJpYnV0b3Jz?=
Date: 08 Sep 2022 05:31:12 -0300
Message-ID: <20220908053112.9B5FAFA899AF7A26@cartrackgps.net>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 s=1661974160.livegpstrack; d=cartrackgps.net; 
 b=I2x313ibgxNXEqZlViTWpvUs3JJju1rT4QabAIxpkS9SMKEI3lsvHdG9oOlTcbzab3RuWg+WJdPl
 JH78Fvw2Pt6Xiu3PjXJSlpf33zRemgbAjwgw5XutQj9l4oyq+oaJrHEEVp1QxJvAfQl7yJDSEc+v
 PDn6p57f/5rK6OyG7wU=;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 s=1661974160.livegpstrack; d=cartrackgps.net; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=salesctg@cartrackgps.net; 
 bh=SRQSnpf7AAdg9jP8C//9mJdtaXI=;
 b=PJDaedbVa0j3Lrqr/fb49KAuraiUcvB3l8PJGTlF1JJJ/2CxA7TnhajLhV0spm4Q7CZwI3IJAysE
 5A0tujkAGDsM3UgmTTGKeLcMxVkMnG9gSXC6m3fJ/BfdCZ3MN4IX/yoh8xefRFVAJwk5YpalKgmQ
 Im6rj7zqSBmN6D6yLmo=
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
Reply-To: =?ISO-8859-1?B?VHJhY2sgR1BT?= <salesctg@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello there,

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
ID: 1002143

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
