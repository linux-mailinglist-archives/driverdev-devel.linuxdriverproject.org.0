Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 503253B4EB6
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Jun 2021 15:20:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB28B40473;
	Sat, 26 Jun 2021 13:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TENWeDVSZpOj; Sat, 26 Jun 2021 13:20:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 742634043D;
	Sat, 26 Jun 2021 13:20:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F4061BF47F
 for <devel@linuxdriverproject.org>; Sat, 26 Jun 2021 13:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6CDD7403D9
 for <devel@linuxdriverproject.org>; Sat, 26 Jun 2021 13:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rObI-9D-b8wv for <devel@linuxdriverproject.org>;
 Sat, 26 Jun 2021 13:20:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from cpvds521.sideink.com (cpvds521.sideink.com [209.95.54.60])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93BDD4039C
 for <devel@linuxdriverproject.org>; Sat, 26 Jun 2021 13:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cartrackgps.net; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w9sK+Ym/RAfBFP3G/1SzwUp86a4NJP3vlp3iGswH7yw=; b=Cd/1XTOKIHLvsI+nfio2/h7N6x
 sNTRAlm/V9jCFobn0tuG0vVR3XsxIkWqdfO0WXqp1SvR5FTJzkYQ68awi8Q5KcS4zflfO5CjrO+bv
 OnFv0Cjawlg5YaBUXGLHN9kE36T/lJMy66sK0TIXHk5wIFHJrCSekN0LqIGScF4KqbJ6Rg+hflVrB
 Qt95BJKFzjBzYIh1b6IVNkk57EwoP8jywTKUi5ye/7LHx3C3z87bdsET33C3SeCgY1Zs+fDWwOqh7
 bVhXwyWyTM0hinsGDFiIiNydKt/s3H1WqcQRy6B8tsjv2DECnVqvUaIFCLrkVKwYNCg4NmT71EZx/
 4rDcMutg==;
Received: from r167-61-104-34.dialup.adsl.anteldata.net.uy
 ([167.61.104.34]:50512 helo=cartrackgps.net)
 by cpvds521.sideink.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.94.2)
 (envelope-from <salesctg@cartrackgps.net>) id 1lx8EJ-0001RH-0V
 for devel@linuxdriverproject.org; Sat, 26 Jun 2021 15:20:15 +0200
From: =?ISO-8859-1?B?UGF1bCBOb3Zhaw==?=<salesctg@cartrackgps.net>
To: devel@linuxdriverproject.org
Subject: =?ISO-8859-1?B?RGlzdHJpYnV0b3IgZm9yIGRldmVs?=
Date: 26 Jun 2021 10:20:19 -0300
Message-ID: <20210626102018.4F036F6A21EC3075@cartrackgps.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpvds521.sideink.com
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cartrackgps.net
X-Get-Message-Sender-Via: cpvds521.sideink.com: authenticated_id:
 infoctg@cartrackgps.net
X-Authenticated-Sender: cpvds521.sideink.com: infoctg@cartrackgps.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Reply-To: =?ISO-8859-1?B?UGF1bCBOb3Zhaw==?= <salesctg@cartrackgps.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello devel,

My name is Paul Novak and we're looking for distributors for our vehicle tracking products.
We design innovative GPS technologies and are looking for distributors in your country.

Our innovative web based software allows owners to track fleets in realtime by iOS or Android Apps. If a vehicle is stolen you can stop the engine and recover it.
With our professional kit you can start your own tracking business or just resell the software to others for up to fifty percent commission.

Our product is ideal  for fleet tracking and recovery of stolen vehicles. Insurance companies, trucking companies and car dealers have been our clients for over 20 years.
This could be a good choice If you want to start a new business or diversify your investment.

The business consists in offering location services to end customers through a web site. This is accomplished through a Web platform that we provide as a turnkey server installed at your end.

This service will allow customers to track their fleets from any web browser - even from Tablets and Smartphones - with a username and password.
We have Professional Kits available which include full Software licenses, so once you get the KIT and start testing you will not need to invest again in the Software or have to pay any monthly fee.

If you're interested I can send you the proposal for your consideration.

Best regards,
Car Track GPS

We have clients in over 100 countries and 20 years of experience in GPS tracking systems.
ID: 139955

If you would like to opt-out please reply to this email with the subject REMOVE.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
